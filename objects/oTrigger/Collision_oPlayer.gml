if (room != rLevel1RoomChapel)
{
	if (!executed)
	{
		script_execute(eventScript,);
		executed = !executed;
		instance_destroy();
	}
} else 
{
	if (global.stLeaderCounter == 3)
	{
		if (!executed)
		{
			global.stLeaderCounter = 4;
			scSaySomething(oSTLeader.id);
			executed = !executed;
			instance_destroy();
		}	
	}
}