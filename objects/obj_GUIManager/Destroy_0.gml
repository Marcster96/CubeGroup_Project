///DestroyAllGuiElements

for(var i = 0; i < ds_list_size(GUIList);i++){
    with(ds_list_find_value(GUIList,i))instance_destroy();
}

