state = eState.patrol;
eDirection = 0;

seen = false;
heard = true;
sightReturns[0] = 0;

pVisionMultiplier = 2;

sus = 0;
#region AWARENESS
awareness = 0;

awarenessDecreaseSpeed = .05;

pVisionAwarenessSpeed = .25;

softNoiseAwarenessSpeed1 = 1;
softNoiseAwarenessSpeed2 = 5;
softNoiseAwarenessSpeed3 = 10;

mediumNoiseAwarenessSpeed2 = 2;
mediumNoiseAwarenessSpeed3 = 5;

loudNoiseAwarenessSpeed3 = 1;
#endregion
#region PATHFINDING
pathChangeCollided = false;

myPathPosition = undefined;

myPatrolPath = undefined;

myChasePath = undefined;
grid = mp_grid_create(0,0, room_width / 32, room_height /32, 32, 32);
mp_grid_add_instances(grid,oCol,true);

mySearchPath = undefined;
searchX = undefined;
searchY = undefined;

myReturnPath = undefined;
returnX = undefined;
returnY = undefined;

#endregion

set = false;