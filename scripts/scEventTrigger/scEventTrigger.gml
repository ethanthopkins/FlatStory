function scSketchTown1()
{
	//oCamera.valueY = -50; //update camera a bit forward
	scSaySomething(oSTLeader.id); //announcer speaks
	global.follow = false; //make josh stop following you randomly
	oJosh.x = 254; //change josh x coordinate to specific spot
	oJosh.y = 286;//change josh x coordinate to specific spot
}
function scSketchTown2() //make son follow you in house
{
	with oJosh
	{
		global.follow = !global.follow;
	}
}
function scSketchTown3() //make fire beast appear
{
	instance_create_layer(0,0,"ObjectFixtures",oFireBeast);
}
function scSketchTown4() //makes dragon fly away
{
	with (oFireBeast)
	{
		path_end(); //stop flying in circles
		mp_potential_step(301,-70,2,false); //flies away toward cave
	}
}
function scSketchTown5() //unlock gate
{
	//with (oLockedGate)
	with (oGameManager.fireBeastGateLock)
	{
		instance_destroy();
	}	
}
function scFireBeast1() //make fire beast say initial words
{
	scSaySomething(oFireBeast.id);	
}
function scFireBeast2() //start fire beast battle
{
	instance_create_layer(0,0,layer,oBattle);
	global.fireBeastCounter ++;
}
function scSketchTown6() //make stLeader go to chapel
{
	if (instance_exists(oSTLeader))
	{
		oSTLeader.lead = true; //marks the lead quallity as true so st leader will go to the place.
	}
}
function scSketchTown7() //make stLeader say something in chapel
{
	scSaySomething(oSTLeader.id);
}
function scSketchTown8() //destroy wolfpine gate after unlocked
{
	with (oGameManager.wolfPineGateLock)
	{
		instance_destroy();	
	}
}
function scForest0() //destroy saw if picked up
{
	if (instance_exists(oSaw)) 
	{
		oPlayer.inventorySaw = true;
		instance_destroy(oSaw);	
	}
} 