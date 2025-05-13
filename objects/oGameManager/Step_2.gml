/// @desc Speech Changer

#region Speech Changer
	//check notification if text has been completed
	if (global.textNotification != global.oldTextNotification) 
	{
		//check if text was supposed to be a one time thing
		if (global.oneTimeText)
		{
		//check if sarah character was the one who said it. 
			if (global.speaker == oSarah)
			{
				global.sarahCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oJosh)
			{
				global.joshCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oSTLeader)
			{
				global.stLeaderCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oShopKeep1)
			{
				global.shopKeep1Counter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oFireBeast)
			{
				global.fireBeastCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oBattle)
			{
				global.battleCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oAugust)
			{
				global.augustCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oFlora)
			{
				global.floraCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oSamuel)
			{
				global.samuelCounter ++;
				global.oneTimeText = false;
			}
			if (global.speaker == oAthena)
			{
				global.athenaCounter ++;
				global.oneTimeText = false;
			}
		}
	}
	//change old value to new value
	global.oldTextNotification = global.textNotification;
#endregion