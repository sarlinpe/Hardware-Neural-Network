import time
import serial
import os
import sys
import numpy as np

# Symbols
SOFTWARE = 0
HARDWARE = 1
TRAINING = 0
PREDICTION = 1
WEIGHTS_GIVEN = 0
WEIGHTS_RAND = 1
WEIGHTS_PREV = 2

# NNs hardware parameters
NB_FEATURES 		= 13
NB_HIDDEN_NODES 	= 20
NB_CLASSES 		= 3
SINGLE_ENDED 		= False
NB_OUTPUT_NODES		= (1*SINGLE_ENDED + NB_CLASSES*(not SINGLE_ENDED))

# Data files
BASE_PATH 		= "../Datasets/"
weights1_file 		= "weights1.csv"
weights2_file 		= "weights2.csv"
features_file 		= "wine_features.csv"
labels_file 		= "wine_labels.csv"
predictions_file 	= "predictions.csv"

TEST_VALIDATION_RATIO = 5

# Serial communication
c_TERM_OUT 	= "$"
c_ACK 		= "%"
c_ERR 		= "@"
c_END 		= "&"
c_DONE		= "?"

implementation = None
session = None
option = None
iterations = None
opcode = None
accuracy_need = False
split_sets = False
split_ratio = 1;

def wait_for_ack(serial_obj):
	reply = serial_obj.read()
	if reply is c_ACK:
		return
		#print "[INFO] Ack received."
	elif reply is c_ERR:
		raise NameError('Error from device...')

def read_float():
	while(True):
		try:
			value = float(raw_input(">>> "))
		except ValueError:
			continue
		break
	return value

def read_integer():
	while(True):
		try:
			value = int(raw_input(">>> "))
		except ValueError:
			continue
		break
	return value

def select_implementation():
	print "> Select implementation, {sw} for Software (PS) or {hw} for Hardware (PL):".format(sw=SOFTWARE+1, hw=HARDWARE+1)
	implementation = read_integer() - 1
	if implementation == TRAINING:
		print "[INFO] Selected implementation: Software."
	elif implementation == PREDICTION:
		print "[INFO] Selected implementation: Hardware."
	else:
		print "[ERROR] Unknown option.\n"
		sys.exit()
	print ""
	return implementation

def select_session():
	print "> Select {tr} for training or {pr} for prediction:".format(tr=TRAINING+1, pr=PREDICTION+1)
	session = read_integer() - 1

	if session == TRAINING:
		print "[INFO] Selected task: Training."
	elif session == PREDICTION:
		print "[INFO] Selected task: Prediction."
	else:
		print "[ERROR] Unknown option.\n"
		sys.exit()
	print ""
	return session

def select_weights_opt():
	print "> Select the origin of the weights:\n -- {giv} if given in a file\n -- {rand} if randomly generated\n -- {prev} if already in on-board memory".format(giv=WEIGHTS_GIVEN+1, rand=WEIGHTS_RAND+1, prev=WEIGHTS_PREV+1)
	option = read_integer() - 1

	if option == WEIGHTS_GIVEN:
		print "[INFO] Selected option for weights: Given."
	elif option == WEIGHTS_RAND:
		print "[INFO] Selected option for weights: Random."
	elif option == WEIGHTS_PREV:
		print "[INFO] Selected option for weights: On-board."
	else:
		print "[ERROR] Unknown option.\n"
		sys.exit()
	print ""
	return option

def select_accuracy_pred():
	if (session == PREDICTION):
		print "> Do you want to provide a set of labels for accuracy computation ? \n Yes (1) or No(0):"
		return bool(read_integer())
	else:
		return False

# Ask for number of iterations
def select_iter():
	if (session == TRAINING):
		print "> Enter number of epochs, between 1 and 4096:"
		iterations = read_integer()
		print ""
		return iterations
	else:
		return 0

def main_loop():
	global implementation, session, option, accuracy_needed, iterations, split_sets, split_ratio
	while(True):

		implementation = select_implementation()
		session = select_session()
		option = select_weights_opt()
		accuracy_needed = select_accuracy_pred()
		iterations = select_iter()

		features = None;

		# Import features
		print "> Enter file name for features:"
		while True:
			try:
				features = np.genfromtxt(BASE_PATH + raw_input(">>> "), dtype=np.uint8, delimiter=',')
			except IOError:
				print "[ERROR] File not found."
				continue
			else:
				break
		nb_examples = features.shape[0]
		if (features.shape[1] != NB_FEATURES) :
			print "[ERROR] Number of features from dataset: {found}, expected: {exp}".format(found=features.shape[1], exp=NB_FEATURES)
			sys.exit()
		print "[INFO] Number of examples: ", nb_examples

		# Import Labels if training or accuracy computation
		if ( (session == TRAINING) or accuracy_needed):
			print "> Enter file name for labels:"
			while True:
				try:
					labels = np.genfromtxt(BASE_PATH + raw_input(">>> "), dtype=np.uint8, delimiter=',')
				except IOError:
					print "[ERROR] File not found."
					continue
				else:
					break
			if (labels.shape[0] != nb_examples):
				print "[ERROR] Features and labels sets do not match in size.\n"
				sys.exit()

		if (session == TRAINING):
			print "> Split data set between training and validations sets ? Yes (1) or No(0):"
			split_sets = bool(read_integer())
			if (split_sets):
				print "> Give the splitting ratio # Training examples / # Examples :"
				split_ratio = read_float()
				
		if (split_sets):
			nb_train = int(split_ratio * nb_examples)
			perm = np.random.permutation(nb_examples)
			features = features[perm]
			labels = labels[perm]
			features_train = features[:nb_train,:]
			features_val = features[nb_train:,:]
			labels_train = labels[:nb_train]
			labels_val = labels[nb_train:]

			data_feat = features_train
			data_lab = labels_train
			nb_data = nb_train
		else:
			data_feat = features
			if ( (session == TRAINING) or accuracy_needed):
				data_lab = labels
			nb_data = nb_examples


		# Import weights if given
		if (option == WEIGHTS_GIVEN):
			print "> Enter file name for first layer weights:"
			while True:
				try:
					weights1 = np.genfromtxt(BASE_PATH + raw_input(">>> "), dtype=np.int16, delimiter=',').flatten('C') #col major
					print weights1
				except IOError:
					print "[ERROR] File not found."
					continue
				else:
					break
			print "> Enter file name for second layer weights:"
			while True:
				try:
					weights2 = np.genfromtxt(BASE_PATH + raw_input(">>> "), dtype=np.int16, delimiter=',').flatten('C')
					print weights2
				except IOError:
					print "[ERROR] File not found."
					continue
				else:
					break
			
		# Send Opcode
		print "[INFO] Sending opcode."
		opcode = (implementation << 19) | (session << 18) | (option << 16) | (nb_data & 0xFFFF)
		if (session == TRAINING):
			opcode = opcode | (iterations << 20)
		ser.write( bytearray(( (opcode & 0xFF),((opcode >> 8) & 0xFF),((opcode >> 16) & 0xFF),((opcode >> 24) & 0xFF) )) )
		wait_for_ack(ser)

		# Send Weights
		if (option == WEIGHTS_GIVEN):
			print "[INFO] Sending weights1."
			for i in range(0, (NB_FEATURES+1)*NB_HIDDEN_NODES):
				ser.write(weights1[i].tobytes())
				#print weights1[i] # DEBUG
				wait_for_ack(ser)
			print "[INFO] Sending weights2."
			for i in range(0, (NB_HIDDEN_NODES+1)*NB_OUTPUT_NODES):
				ser.write(weights2[i].tobytes())
				#print weights2[i] # DEBUG
				wait_for_ack(ser)

		# Send Data
		print "[INFO] Sending features and labels."
		for i in range(0,nb_data):
			ser.write(data_feat[i].tobytes())
			#print data_feat[i] # DEBUG
			if (session == TRAINING):
				ser.write(data_lab[i].tobytes())
				#print bytes(data_lab[i]) # DEBUG
			wait_for_ack(ser)

		# Wait for reply
		print "[INFO] Waiting..."
		while(True):

			line = ser.readline().decode('utf-8')[:-1]
			code = line[0]

			if code == c_DONE:
				print "[INFO] Done..."
				break
			if code == c_END:
				print "[INFO] Exiting..."
				ser.close()
				sys.exit()
			else:
				print line

		if (session == PREDICTION):
			s = ""
			for i in range(0,nb_data):
				c = ser.read()
				s += c
				ser.write(bytes(c_ACK))
			predictions = np.transpose(np.fromstring(s, dtype=np.uint8))
			np.savetxt(BASE_PATH + predictions_file, predictions, fmt='%1u', delimiter=',')
			if accuracy_needed:
				accuracy = 100. * np.sum(np.equal(data_lab, predictions)) / nb_data;
				print "Accuracy of prediction: {acc:.4g} %".format(acc=accuracy)
		if (split_sets):
			session = PREDICTION
			option = WEIGHTS_PREV

			data_feat = features_val
			data_lab = labels_val
			nb_data = nb_examples - nb_train

			opcode = (implementation << 19) | (session << 18) | (option << 16) | (nb_data & 0xFFFF)
			ser.write( bytearray(( (opcode & 0xFF),((opcode >> 8) & 0xFF),((opcode >> 16) & 0xFF),((opcode >> 24) & 0xFF) )) )
			wait_for_ack(ser)

			print "[INFO] Sending features and labels."			
			for i in range(0,nb_data):
				ser.write(data_feat[i].tobytes())
				#print features[i] # DEBUG
				if (session == TRAINING):
					ser.write(data_lab[i].tobytes())
					#print bytes(labels[i]) # DEBUG
				wait_for_ack(ser)

			while(True):

				line = ser.readline().decode('utf-8')[:-1]
				code = line[0]

				if code == c_DONE:
					print "[INFO] Done..."
					break
				else:
					print line

			s = ""
			for i in range(0,nb_data):
				c = ser.read()
				s += c
				ser.write(bytes(c_ACK))
			predictions = np.transpose(np.fromstring(s, dtype=np.uint8))
			np.savetxt(BASE_PATH + predictions_file, predictions, fmt='%1u', delimiter=',')
			if (split_sets):
				accuracy = 100. * np.sum(np.equal(data_lab, predictions)) / nb_data;
				print "Accuracy of validation set: {acc:.4g} %".format(acc=accuracy)

		implementation = None
		session = None
		option = None
		iterations = None
		opcode = None
		accuracy_need = False
		split_sets = False
		split_ratio = 1;
			


if __name__ == '__main__': 

	# Let's starts now...
	print "--- Neural Network Hardware Accelerator ---"
	print "[INFO] Starting a new session.\n"

	# Open Serial
	try:
		ser = serial.Serial(port='/dev/ttyACM0', baudrate=115200)
	except serial.SerialException:
		print "[ERROR] Failed to open Serial port.\n"
	    	sys.exit()

	try:
		main_loop()
	except KeyboardInterrupt:
		print implementation
		print "\n[INFO] Exiting...\n"
		ser.close()
