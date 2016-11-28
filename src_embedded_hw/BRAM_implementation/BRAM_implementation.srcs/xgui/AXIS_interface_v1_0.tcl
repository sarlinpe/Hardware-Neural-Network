# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "axis_data_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "examples_block_size" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nb_classes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nb_examples_max" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nb_features" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nb_hidden_nodes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "single_ended" -parent ${Page_0}


}

proc update_PARAM_VALUE.axis_data_width { PARAM_VALUE.axis_data_width } {
	# Procedure called to update axis_data_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.axis_data_width { PARAM_VALUE.axis_data_width } {
	# Procedure called to validate axis_data_width
	return true
}

proc update_PARAM_VALUE.examples_block_size { PARAM_VALUE.examples_block_size } {
	# Procedure called to update examples_block_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.examples_block_size { PARAM_VALUE.examples_block_size } {
	# Procedure called to validate examples_block_size
	return true
}

proc update_PARAM_VALUE.nb_classes { PARAM_VALUE.nb_classes } {
	# Procedure called to update nb_classes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nb_classes { PARAM_VALUE.nb_classes } {
	# Procedure called to validate nb_classes
	return true
}

proc update_PARAM_VALUE.nb_examples_max { PARAM_VALUE.nb_examples_max } {
	# Procedure called to update nb_examples_max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nb_examples_max { PARAM_VALUE.nb_examples_max } {
	# Procedure called to validate nb_examples_max
	return true
}

proc update_PARAM_VALUE.nb_features { PARAM_VALUE.nb_features } {
	# Procedure called to update nb_features when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nb_features { PARAM_VALUE.nb_features } {
	# Procedure called to validate nb_features
	return true
}

proc update_PARAM_VALUE.nb_hidden_nodes { PARAM_VALUE.nb_hidden_nodes } {
	# Procedure called to update nb_hidden_nodes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nb_hidden_nodes { PARAM_VALUE.nb_hidden_nodes } {
	# Procedure called to validate nb_hidden_nodes
	return true
}

proc update_PARAM_VALUE.single_ended { PARAM_VALUE.single_ended } {
	# Procedure called to update single_ended when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.single_ended { PARAM_VALUE.single_ended } {
	# Procedure called to validate single_ended
	return true
}


proc update_MODELPARAM_VALUE.nb_features { MODELPARAM_VALUE.nb_features PARAM_VALUE.nb_features } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nb_features}] ${MODELPARAM_VALUE.nb_features}
}

proc update_MODELPARAM_VALUE.nb_hidden_nodes { MODELPARAM_VALUE.nb_hidden_nodes PARAM_VALUE.nb_hidden_nodes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nb_hidden_nodes}] ${MODELPARAM_VALUE.nb_hidden_nodes}
}

proc update_MODELPARAM_VALUE.nb_classes { MODELPARAM_VALUE.nb_classes PARAM_VALUE.nb_classes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nb_classes}] ${MODELPARAM_VALUE.nb_classes}
}

proc update_MODELPARAM_VALUE.single_ended { MODELPARAM_VALUE.single_ended PARAM_VALUE.single_ended } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.single_ended}] ${MODELPARAM_VALUE.single_ended}
}

proc update_MODELPARAM_VALUE.nb_examples_max { MODELPARAM_VALUE.nb_examples_max PARAM_VALUE.nb_examples_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nb_examples_max}] ${MODELPARAM_VALUE.nb_examples_max}
}

proc update_MODELPARAM_VALUE.examples_block_size { MODELPARAM_VALUE.examples_block_size PARAM_VALUE.examples_block_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.examples_block_size}] ${MODELPARAM_VALUE.examples_block_size}
}

proc update_MODELPARAM_VALUE.axis_data_width { MODELPARAM_VALUE.axis_data_width PARAM_VALUE.axis_data_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.axis_data_width}] ${MODELPARAM_VALUE.axis_data_width}
}

