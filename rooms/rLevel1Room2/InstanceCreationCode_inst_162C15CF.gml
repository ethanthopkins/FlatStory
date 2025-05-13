if (global.storyProgression == 0) //if beginning of story don't do anything
{
	return;	
}
if (global.storyProgression == 1) //if second part of story don't have gate cause it's been unlocked already
{
	instance_destroy();	
}