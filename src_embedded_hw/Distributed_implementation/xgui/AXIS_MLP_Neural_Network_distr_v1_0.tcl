# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}


proc update_MODELPARAM_VALUE.nb_features { MODELPARAM_VALUE.nb_features } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "nb_features". Setting updated value from the model parameter.
set_property value 13 ${MODELPARAM_VALUE.nb_features}
}

proc update_MODELPARAM_VALUE.nb_hidden_nodes { MODELPARAM_VALUE.nb_hidden_nodes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "nb_hidden_nodes". Setting updated value from the model parameter.
set_property value 20 ${MODELPARAM_VALUE.nb_hidden_nodes}
}

proc update_MODELPARAM_VALUE.nb_classes { MODELPARAM_VALUE.nb_classes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "nb_classes". Setting updated value from the model parameter.
set_property value 3 ${MODELPARAM_VALUE.nb_classes}
}

proc update_MODELPARAM_VALUE.single_ended { MODELPARAM_VALUE.single_ended } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "single_ended". Setting updated value from the model parameter.
set_property value false ${MODELPARAM_VALUE.single_ended}
}

proc update_MODELPARAM_VALUE.nb_examples_max { MODELPARAM_VALUE.nb_examples_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "nb_examples_max". Setting updated value from the model parameter.
set_property value 1020 ${MODELPARAM_VALUE.nb_examples_max}
}

proc update_MODELPARAM_VALUE.examples_block_size { MODELPARAM_VALUE.examples_block_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "examples_block_size". Setting updated value from the model parameter.
set_property value 8 ${MODELPARAM_VALUE.examples_block_size}
}

proc update_MODELPARAM_VALUE.axis_data_width { MODELPARAM_VALUE.axis_data_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "axis_data_width". Setting updated value from the model parameter.
set_property value 32 ${MODELPARAM_VALUE.axis_data_width}
}

