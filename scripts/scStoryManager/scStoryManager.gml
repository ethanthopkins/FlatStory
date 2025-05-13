// S = global.story;
// SP = global.storyProgression;
function scS0SP0()
{
	if (room == rLevel1Room2) //stLeader speech and fire beast attack
	{
		if (global.stLeaderCounter == 1) //make stleader say second part of speech panicked
		{
			if (!set)
			{
				scSaySomething(oSTLeader.id); //make him say it
				scSketchTown3() //make dragon appear during speech
				set = true; //makes this not run every step of game lol
			}
		}
		if (global.stLeaderCounter == 2) //make dragon fly away after speech.
		{
			set = false;
			if (!set)	
			{
				scSketchTown4(); //make dragon fly away
				set = true;
			}
		}
	}
	if (room == rLevel1FB1) //fire beast's cave fight
	{						
		#region BATTLE
			if (!instance_exists(oSpeech))
			{
				if (global.fireBeastCounter == 1) //start fire beast battle after text
				{
					if (!set1)
					{
						scFireBeast2();
						set1 = true;
						set = false;
					}
				}
				if (instance_exists(oBattle))
				{
					if (global.battleCounter == 1) //firebeast talk
					{
						if (!set)
						{
							scSaySomething(oBattle.id);	
							set = true;
							set1 = false;
						}
					}
					if (global.battleCounter == 2) //firebeast attack
					{
						if (!set1)
						{
							scSaySomething(oBattle.id);	
							set1 = true;
							set2 = false;
						}
					}					
					if (global.battleCounter == 3) //players turn take player health
					{
						if (!set2)
						{
							scScreenShake(5,4);
							oPlayer.playerHealth = oPlayer.playerHealth - 4;	
							set2 = true;
							set3 = false;
						}
					}
					if (global.battleCounter == 4) //firebeast talk
					{
						if (!set3)
						{
							scScreenShake(2,2);
							scSaySomething(oBattle.id);	
							set3 = true;
							set = false;
						}
					}
					if (global.battleCounter == 5) //firebeast attack
					{
						if (!set)
						{
							scSaySomething(oBattle.id);	
							set = true;
							set1 = false;
						}
					}	
					if (global.battleCounter == 6) //players turn take player health
					{
						if (!set1)
						{
							scScreenShake(5,3);
							oPlayer.playerHealth = oPlayer.playerHealth - 3;
							set1 = true;
							set2 = false;
						}
					}
					if (global.battleCounter == 7) //firebeast talk
					{
						if (!set2)
						{
							scScreenShake(2,2);
							scSaySomething(oBattle.id);	
							set2 = true;
							set3 = false;
						}
					}
					if (global.battleCounter == 8) //firebeast attack
					{
						if (!set3)
						{
							scSaySomething(oBattle.id);	
							set3 = true;
							set = false;
						}
					}	
					if (global.battleCounter == 9) //players turn take player health
					{
						if (!set)
						{
							scScreenShake(5,3);
							oPlayer.playerHealth = oPlayer.playerHealth - 2;
							set = true;
							set1 = false;
						}
					}
					if (global.battleCounter == 10) //firebeast attack
					{
						if (!set1)
						{
							scSaySomething(oBattle.id);	
							set1 = true;
							set2 = false;
						}
					}	
					if (global.battleCounter == 11) //end battle sequence
					{
						if (!set2)
						{
							global.battleCounter = 12;							
							instance_create_layer(510, 95, "ObjectFixtures", oAugust);
							instance_destroy(oBattle);
							set2 = true;
							set3 = false;
						}
					}
				}
			}
		#endregion
		#region AUGUST
		if (!instance_exists(oSpeech))
		{
			if (global.augustCounter == 0) && (global.battleCounter == 12) && (!instance_exists(oBattle))
			{
				if (!set3)
				{
					scSaySomething(oAugust.id);
					set3 = true;
					set = false;
				}
			}
			if (global.augustCounter == 1) 
			{
				if (!set)
				{
					scSaySomething(oAugust.id);
					set = true;
					set1 = false;
				}
			}
			if (global.augustCounter == 2) //start virus onset sequence
			{
				if (!set1)
				{
					scScreenShake(5,room_speed*10);
					instance_destroy(oAugust);
					instance_destroy(oFireBeast);
					global.storyProgression ++;
					scResetCounter(); //FIXME
					set1 = true;
					set2 = false;
				}
			}
		}
		#endregion
	}
}
function scS0SP1()
{
	if (global.storyProgression == 1) //fire beast cave to end of sketchtown
	{
		if (!set2) //RESET COUNTERS FOR NEW STORY PROGRESSION
		{
			scResetCounter();
			set2 = true;
			set3 = false;
		}
		if (global.Room == rLevel1Room2) //IF BACK IN CELEBRATION ROOM
		{
			if (global.stLeaderCounter == 0)
			{
				if (!set3)
				{
					scSaySomething(oSTLeader.id); //make stLeader shout for lo
					global.exclamation = (instance_create_layer(0,0,"ObjectFixtures",oExclamation)) //make exclamation mark appear above leader
					global.exclamation.stLeader = true;	//make exclamation mark actually go to leader's location
					set3 = true;
					set = false;
				}
			}
			//if (global.stLeaderCounter == 1) HAPPENS WHEN PLAYER ACTIVATES LEADER
			if (global.stLeaderCounter == 2)
			{
				if (!set)
				{
					scSketchTown6(); //MAKE STLEADER GO TO CHAPEL WHEN LO FOLLOWS	
					set = true;
					set1 = false;
				}
			}
		}
	}	
}
function scS0SP2()
{
	
}