//if position_meeting(x,y,enemyToCollideWith)
{
	var enemyID = instance_place(x,y,enemyToCollideWith);
	enemyID.pathChangeCollided = true;
	enemyID.myPath = changePathTo;
	instance_destroy();
}