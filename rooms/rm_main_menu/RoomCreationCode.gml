scr_setupPlayerStates();

global.CubeList = ds_list_create();
scr_readFile();
instance_create(0,0,obj_transactionController)