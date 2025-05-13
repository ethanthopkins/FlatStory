if (stLeaderCollide)
{
	if (room == rLevel1RoomChapel)
	{
		if (!executed)
		{
			script_execute(eventScript,);
			executed = !executed;
			instance_destroy();
		}
	}
}