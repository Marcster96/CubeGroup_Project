//Falls man im Selector bereits ist muss der zurückgsetzt werden, um den 
//alten Cube noch dazuzurechen

if(SelectorIsActive == true){
	with(Selector)instance_destroy();
	for(var i = 0; i < ds_list_size(SelectorCubes);i++){
		var selectableCube = ds_list_find_value(SelectorCubes,i);
		with(selectableCube)instance_destroy();
		SelectorIsActive = false
	}
}

