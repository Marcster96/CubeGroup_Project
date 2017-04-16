OptionsPanel = instance_create(room_width/2,room_height/2,obj_optionPanel);
with(OptionsPanel)depth = -10;


CloseButton = instance_create(OptionsPanel.bbox_right - 30,OptionsPanel.bbox_top,obj_closeButton);
with(CloseButton)depth = -15;