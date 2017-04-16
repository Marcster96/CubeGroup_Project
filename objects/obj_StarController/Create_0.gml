/// @description Init


//Es werden immer 3 Sterne pro Level gespawnt bzw. gesetzt. 
//Das Grid ist wie folgt aufgebaut: 
/*
		0		1	2
	 -----------------
	0|(star0)	3	12
	 |
	1|(star1)	20	44
	 |
	2|(star2)	55	210


	Zudem wird das gespeichert:
	Cube0 -> 5 Sterne gesammelt
*/

CubeCollected = ds_stack_create();
StarsCollected = ds_stack_create();
