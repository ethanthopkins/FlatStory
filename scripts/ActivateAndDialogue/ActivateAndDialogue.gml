function scActivate() 
{
	#region Check Who Collider Is
	//var _inst = collision_rectangle(x,y,x+lengthdir_x(50,Direction),y+lengthdir_y(50,Direction),pTalk,false,true);
	if (Direction == 0) || (Direction == 180)
	{
		_inst = collision_line(x,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction),pTalk,false,true);
		_inst = collision_line(x,y-activateWidth,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction),pTalk,false,true);
		_inst = collision_line(x,y+activateWidth,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction),pTalk,false,true);
	}
	if (Direction == 90) || (Direction == 270)
	{
		_inst = collision_line(x,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction),pTalk,false,true);
		_inst = collision_line(x-activateWidth,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction),pTalk,false,true);
		_inst = collision_line(x+activateWidth,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction),pTalk,false,true);
	}
	////show_debug_message(string(_inst));
	#endregion
	if (_inst != noone)	scSaySomething(_inst);
}
function scSaySomething(instance)
{
	var _line = scGetTheCharacter(instance); //oGameManager.whatText = oGameManager.whatText;
		////show_debug_message(_line);
	scGetTheText(_line);// oGameManager.theActualText = oGameManager.theActualText;
		////show_debug_message(_result);
}
function scGetTheCharacter(instance) //what should each player say when interacted with
{
	scTextFeat(.25,c_white,fDefault,0,false,sTransparent,"",oTransparent); //default text
	#region Declarations
		if (instance_exists(oSamuel)) var levelOneSamuel = oSamuel.id; else levelOneSamuel = 0;
		if (instance_exists(oFlora)) var levelOneFlora = oFlora.id; else levelOneFlora = 0;
		if (instance_exists(oSarah)) var levelOneSarah = oSarah.id; else levelOneSarah = 0;
		if (instance_exists(oSave)) var save = oSave.id; else save = 0;
		if (instance_exists(oOven)) var oven = oOven.id; else oven = 0;
		if (instance_exists(oSign)) var aSign = oSign.id; else aSign = 0;
		if (instance_exists(oHotelKeep)) var levelThreeHotelKeep = oHotelKeep.id; else levelThreeHotelKeep = 0;
		if (instance_exists(oSTLeader)) var levelOneSTLeader = oSTLeader.id; else levelOneSTLeader = 0;
		if (instance_exists(oShopKeep1)) var levelOneShopKeep = oShopKeep1.id; else levelOneShopKeep = 0;
		if (instance_exists(oAugust)) var august = oAugust.id; else august = 0;
		if (instance_exists(oJosh)) var josh = oJosh.id; else josh = 0;
		if (instance_exists(oLockedGate)) var lockedGate = oLockedGate.id; else lockedGate = 0;
		if (instance_exists(oFireBeast)) var fireBeast = oFireBeast.id; else fireBeast = 0;
		if (instance_exists(oBattle)) var battle = oBattle.id; else battle = 0;
		if (instance_exists(oLog)) var log = oLog.id; else log = 0;
		if (instance_exists(oSaw)) var levelTwoSaw = oSaw.id; else levelTwoSaw = 0;
		if (instance_exists(oAthena)) var levelTwoAthena = oAthena.id; else levelTwoAthena = 0;
		if (instance_exists(oRuth)) var levelTwoRuth = oRuth.id; else levelTwoRuth = 0;
	#endregion
	switch(instance)
	{
		case levelOneSarah: {
			scTextFeat(.25,c_lime,fSarah,0,true,sSarah, "Sarah",oSarah);		
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if (global.Room == rLevel1Room7) && (global.sarahCounter == 0) return(1); //initial game text
						if (global.Room == rLevel1Room7) && (global.sarahCounter == 1) return(4);
						if (global.Room == rLevel1Room3) return(5);
						break;
					}
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
		} break;
		case levelOneFlora: {
			scTextFeat(.25,c_lime,fFlora,0,true,sFlora, "Flora",oFlora);		
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						switch (global.oneLovers) 
						{
							case 0: {
								if (global.floraCounter == 0) {return(46);}
								if (global.floraCounter == 1) {return(49);}
								break;
							}
							case 1: {
								if (global.floraCounter == 0) {return(46);}
								if (global.floraCounter == 1) {return(49);}
								if (global.floraCounter == 2) {return(50);}	
								break;
							}
							case 2: {
								if (global.floraCounter == 3) {return(57);}
								break;
							}
							case 3: break;
						} break;
					} break;
					case 1: {
						}
					case 2: {
						switch (global.oneLovers) 
						{
							case 0: {
								if (global.floraCounter == 0) {return(63);}
								break;
							}
							case 1: {								
								if (global.floraCounter == 0) {return(64);}
								break;
							}
							case 2: {
								if (global.floraCounter == 0) {return(70);}
								break;
							}
							case 3: break;
						} break;
							break;
						}
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		} break;
		case levelOneSamuel: {
			scTextFeat(.25,c_white,fSamuel,0,false,sSamuel, "Samuel",oSamuel);		
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						switch (global.oneLovers) 
						{
							case 0: {
								if (global.samuelCounter == 0) {return(47);}
								if (global.samuelCounter == 1) {return(48);}
								break;
							}
							case 1: {
								if (global.samuelCounter == 2) {return(53);}
								break;
							}
							case 2: {
								if (global.samuelCounter == 2) {return(54);}
								break;
							}
							case 3: {
								if (global.samuelCounter == 2) {return(66);}
								break;
							} 
						}
						break;
					} break;
					case 1: {
					}
					case 2: {
						switch (global.oneLovers) {
							case 0: {
								if (global.samuelCounter == 0) {return(58);}
								if (global.samuelCounter == 1) {return(59);}
								if (global.samuelCounter == 2) {return(60);}
								break;
								}
							case 1: {
								if (global.samuelCounter == 2) {return(62);}
								break;
							}
							case 2: {
								if (global.samuelCounter == 2) {return(65);}
								break;
							}
							case 3: break;
						}
						break;
					}
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		} break;
		case josh: {
			scTextFeat(.1,c_white,fDefault,0,true,sJosh, "Josh",oJosh);
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if (global.Room == rLevel1Room3) && (global.joshCounter == 0) return(2); //initial game text
						if (global.Room == rLevel1Room1) && (global.joshCounter == 0) return(7); //decorative text 
						if (global.Room == rLevel1Room2) && (global.joshCounter == 0) return(8); //decorative text
						if (global.Room == rLevel1Room2) && (global.joshCounter == 1) return(9);
						break;
					}
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case save: {
			global.saveNotification = true;
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: {
						if (!global.saveRoom1)
						{
							scTextFeat(.25,c_lime,fSarah,0,true,sSarah, "Sarah",oSarah);	
							global.saveRoom1 = true;
							return(35);
						} else 
						{
							scTextFeat(.25,c_white,fDefault,0,false,sSave, "Phone",oSave);	
							return(36);
						}
						break;
					}
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case oven: {
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {}
					case 1: {}
					case 2: 
					case 3: 
					case 4: 
					case 5: {
						if (global.oneOven) {return(31)} else {return(28);} 
						break;
					}
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case aSign: {
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: {
						if (global.Room = rLevel2WP1) {return(18);}
						break;
					}
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case levelThreeHotelKeep: {
			return(19); break;
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case levelOneSTLeader: {
			scTextFeat(.25,c_white,fDefault,0,false,sSTLeader,"Leader",oSTLeader);
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if (global.Room == rLevel1Room2) && (global.stLeaderCounter == 0) return(10); 
						if (global.Room == rLevel1Room2) && (global.stLeaderCounter == 1) return(11);
						if (global.Room == rLevel1Room2) && (global.stLeaderCounter == 2) return(12);
						if (global.Room == rLevel1Room2) && (global.stLeaderCounter == 3) return(16);				
						break;
					}
					case 1: {
						if (global.Room == rLevel1Room2) && (global.stLeaderCounter == 0) return(25);
						if (global.Room == rLevel1Room2) && (global.stLeaderCounter == 1) return(26);
						if (global.Room == rLevel1Room2) && (global.stLeaderCounter == 2) return(27);
						if (global.Room != rLevel1Room2) && (global.Room != rLevel1RoomChapel) && (global.stLeaderCounter == 2) return(38);
						if (global.Room == rLevel1RoomChapel) && (global.stLeaderCounter == 2) return(39);
						if (global.Room == rLevel1RoomChapel) && (global.stLeaderCounter == 3) return(44);
						if (global.Room == rLevel1RoomChapel) && (global.stLeaderCounter == 4) return(40);			
						if (global.Room == rLevel1RoomChapel) && (global.stLeaderCounter == 5) return(45);
						break;
					}
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case levelOneShopKeep: {
		scTextFeat(.25,c_white,fDefault,0,false,sShopKeep1, "Shop Keep",oShopKeep1);
		
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if (global.shopKeep1Counter == 0) {return(37);}
						if (global.shopKeep1Counter == 1) {return(67);}
						break;
					}
					case 1: {
						if (global.shopKeep1Counter == 0) {return(68);}
						if (global.shopKeep1Counter == 1) {return(69);}
						break;
					}
					case 2: {
						if (global.shopKeep1Counter == 0) {return(68);}
						if (global.shopKeep1Counter == 1) {return(69);}
						break;
					}
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}			
		}
		case august: {
			scTextFeat(.25,c_white,fAugust,0,false,sAugust, "August",oAugust);
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if ((global.Room == rLevel1FB1) && (global.augustCounter == 0)) return(31); 
						if ((global.Room == rLevel1FB1) && (global.augustCounter == 1)) return(3); 
						break;
					}
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case lockedGate: {
			scTextFeat(.25,c_white,fDefault,0,false,sCol, "",oLockedGate);
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if (instance == oGameManager.fireBeastGateLock)
						{
							if (global.Room == rLevel1Room2) && (!global.fireBeastCaveKey) return(13);
							if (global.Room == rLevel1Room2) && (global.fireBeastCaveKey) return(14);
						}
						if (instance == oGameManager.wolfPineGateLock)
						{
							if (global.Room == rLevel1Room2) return(41);
						}
						break;
					}
					case 1: {
						if (global.Room == rLevel1Room2) && (!global.wolfPineGateKey) return(42);
						if (global.Room == rLevel1Room2) && (global.wolfPineGateKey) return(43);
						break;
					}
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
			break;
		}
		case fireBeast: {
			scTextFeat(.25,c_orange,fFireBeast,0,false,sFireBeast, "Fire Beast",oFireBeast);
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if (global.Room == rLevel1FB1) && (global.fireBeastCounter == 0) return(21);
						break;
					}
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
		}
		case battle: {
			scTextFeat(.25,c_white,fDefault,0,false,sCol, "",oBattle);
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						if (oBattle.optionSelected == 0) return(22); //fight
						if (oBattle.optionSelected == 1) return(23); //defend
						if (oBattle.optionSelected == 2) return(25); //item
						if (oBattle.optionSelected == 3) return(26); //flee
			
						if (global.battleCounter == 1) /*(not player's turn)*/ return(29);
						if (global.battleCounter == 2) /*(not player's turn)*/ return(28);
						//if (global.battleCounter == 3) PLAYER TURN
						if (global.battleCounter == 4) return(27);
						if (global.battleCounter == 5) return(30);
						//if (global.battleCounter == 6) PLAYER TURN
						if (global.battleCounter == 7) return(35);
						if (global.battleCounter == 8) return(36);
						//if (global.battleCounter == 9) PLAYER TURN
						if (global.battleCounter == 10) return(37);
						break;
					}
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}
		}
		case log: {
			return(77);
			/*
			switch(global.story) {
				case 0: {
					switch(global.Room) {
						case rLevel2Room8: {
								if (oPlayer.inventorySaw) return(72); 
								if (!oPlayer.inventorySaw) return(73);
								break;
							}
					}
					break;
					}
				case 1: break;
				default: break;
			}
		*/
		}
		case levelTwoSaw: {
			switch(global.story) {
				case 0: {
					switch(global.Room) {
						case rLevel2Room8: {
							return(74);
							break;
							}
					}
					break;
					}
				case 1: break;
				default: break;
			}				
		}
		case levelTwoAthena: {
			scTextFeat(.25,c_white,fAthena,0,false,sAthena, "Athena",oAthena);
			
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						break;
					}
					case 1: {
						break;
					}
					case 2: {
						if (global.athenaCounter == 0) {return(33);}
						break;
					}
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			} break;	
		}
		case levelTwoRuth: {
			scTextFeat(.25,c_white,fRuth,0,false,sRuth, "Ruth",oRuth);
			
			switch(global.story) {
				case 0: switch(global.storyProgression) {
					case 0: {
						break;
					}
					case 1: {
						break;
					}
					case 2: {
						if (global.ruthCounter == 0) {return(34);}
						break;
					}
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 1: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 2: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				case 3: switch(global.storyProgression) {
					case 0: break;
					case 1: break;
					case 2: break;
					case 3: break;
					case 4: break;
					case 5: break;
					default: break;
				}
				default: break;
			}						
			break;	
		}
	}
}
function scGetTheText(_line) //the actual text storage
{
	scSpeechResponses(undefined, undefined, undefined, undefined);
	switch (_line)
	{
		case 0: oPlayer.movementPause = false; break;
		case 1: {
			global.oneTimeText = true;
			
			global.msg[0] = "Lo!!!";
			global.msg[1] = "Are you going to wake up?";
			global.msg[2] = "It's time to wake up for the sun festival.";
			global.msg[3] = "You said that you would take Josh!";
			global.msg[4] = "He's been up for an hour. He's waiting in the other global.Room.";
			break;
		}
		case 2: {
			global.msg[0] = "Can we go yet?!";
			break;
		}
		case 3: {
			global.oneTimeText = true;
			
			global.msg[0] = "Don't you hate this world...?";
			global.msg[1] = "The same story every day.";
			global.msg[2] = "You. Lo. The reluctant but brave hero...";
			global.msg[3] = "...and the fire beast. The brutal and evil villain.";
			global.msg[4] = "...yes...the charming hero's journey..."
			global.msg[5] = "I HATE IT";
			global.msg[6] = "Love, joy, accomplishment...It all gets overshadowed by the pain of our choices.";
			global.msg[7] = "Let me help you Lo and we can fix this world...";
			global.msg[8] = "I'm going to unleash a virus upon this world."
			global.msg[9] = "I'm just...so...tired...";
			global.msg[10] = "The virus will fix it... Even though...NO, it will fix it.";
			global.msg[11] = "You'll thank me later Lo.";
			break;
		}
		case 4: {
			global.msg[0] = "What are you waiting for? You guys are going to be late!";
			global.msg[1] = "Get with Josh in the other global.Room."; 
			break;
		}
		case 5: {
			global.msg[0] = "Okay it's starting soon, you need to leave now!";
			break;
		}
		case 6: {
			global.msg[0] = "Lo, if you understood what I went through you'd want the same.";
			global.msg[1] = "I used to be the hero of this world.";
			global.msg[2] = "I had finally defeated the fire beast...";
			global.msg[3] = "...Recovered the gem...";
			global.msg[4] = "...I was returning home to see Sarah and Josh...";
			global.msg[5] = "...I walked into the house and saw her...";
			global.msg[6] = "...We were so happy to be reunited...";
			global.msg[7] = "Suddenly, everything started to disappear...";
			global.msg[8] = "The table, the house, one by one, gone...";
			global.msg[9] = "I reached out for her...but...";
			global.msg[10] = "...My son...Josh glanced at me and then was gone as well...";
			global.msg[11] = "soon there was nothing left.";
			global.msg[12] = "That's when I saw it. The virus.";
			global.msg[13] = "It didn't care about anything, just consumption.";
			global.msg[14] = "I was scared. It crept towards me and when it was about to touch me...";
			global.msg[15] = "...reality snapped and this world appeared in front of me.";
			global.msg[16] = "I ran to my house to see Sarah and saw her. I spoke to her but she could not hear me.";
			global.msg[17] = "I begged her and Josh both but nothing. That's when I saw you and understood.";
			global.msg[18] = "There was two of us. Two heros. There was no longer any global.Room for me in this world.";
			global.msg[19] = "I began to look around me and realize that this world. My life. For what it was.";
			global.msg[20] = "A stupid game that I began to learn every facet of.";
			global.msg[21] = "I lost my hope. I felt nothing. I wanted to talk to my former friends...";
			global.msg[22] = "...but they could only saw what they were programmed to.";
			global.msg[23] = "But seeing you preservere made me realize there might still be hope.";
			global.msg[24] = "........";
			global.msg[25] = "...............";
			global.msg[26] = "...You took everything from me...";
			global.msg[27] = "...This virus can't be stopped...";
			global.msg[28] = "...It will consume everything...";
			global.msg[29] = "...This entire stupid world...";
			global.msg[30] = "...LET IT BURN! LET IT ALL BURN...";
			global.msg[31] = "I DON'T WANT TO SAVE ANYTHING. I HATE THIS STUPID WORLD.";
			break;
		}
		case 7: {
			global.msg[0] = "Let's hurry! We're going to be late!";
			break;
		}
		case 8: {
			global.msg[0] = "We're almost there! Hurry!";
			global.oneTimeText = true;
			break;
		}
		case 9: {
			global.msg[0] = "Hurry, they already started!";
			break;
		}
		case 10: {
			global.oneTimeText = true;
			
			global.msg[0] = "Welcome everyone to the sun celebration!";
			global.msg[1] = "Every year we gather to celebrate the sun queen!";
			global.msg[2] = "100 years ago the sun queen defeated the fire beast and brought peace...";
			global.msg[3] = "She gave each town a magical artifact. She gave this gem to SketchTown.";
			global.msg[4] = "It protects us from harm.";
			global.msg[5] = "...What is...that?!";
			break;
		}
		case 11: {
			global.oneTimeText = true;
			global.intensity = .75;
			global.font = fPanic;
			
			global.msg[0] = "Some sort of dragon!";
			global.msg[1] = "It's stealing the town's gem!";
			global.msg[2] = "*visible panic*";
			global.msg[3] = "It's gone! Along with the gem!";
			break;
		}
		case 12: {
			global.oneTimeText = true;
		
			global.msg[0] = "Lo, I don't know how but...";
			global.msg[1] = "I have reason to believe that may be the beast of legend.";
			global.msg[2] = "The fire beast. You are our only hope. You must retrieve the fire gem.";
			global.msg[3] = "It appears to have retreated to the cave in the north.";
			global.msg[4] = "Be careful Lo. It is a very powerful creature.";
			global.msg[5] = "Take this sword...And here is the key to the gate.";
			
			global.fireBeastCaveKey = true;
			break;
		}
		case 13: {
			global.msg[0] = "The cave is locked...";
			global.msg[1] = "if ONLY there was a key somewhere.";
			break;
		}
		case 14: {
			scSketchTown5();
			
			global.msg[0] = "The leader just gave me the key.";
			global.msg[1] = "............";
			global.msg[2] = "Well let's go on the adventure.";
			break;
		}
		case 15: {
			global.oneOven = !global.oneOven;
			
			global.msg[0] = "You turned the oven on.";
			global.msg[1] = "The flames ignite again. It reminds you off something you can't quite pin.";
			break;
		}
		case 16: {
			global.msg[0] = "Lo, you are the world's only hope.";
			global.msg[1] = "You must go to the cave to the north and defeat the fire beast!";
			break;
		}
		case 18: {
			global.msg[0] = "Welcome to WolfPine";
			global.msg[1] = "Population: (someone scratched out 12 and wrote 13)";
			break;
		}
		case 19: {
			var next = pTalk.nextLine;
			var text = "Welcome to the hotel!";
			return[text,next];
			break;
		}
		case 20: {
			global.oneOven = !global.oneOven;
		
			global.msg[0] = "You turned the oven off.";
			global.msg[1] = "The flames pitter out and die just like...no...";
			break;
		}
		case 21: {
			global.oneTimeText = true;
			
			global.msg[0] = "So you have followed me here foolish mortal?";
			global.msg[1] = "Have you not heard the legends of the fire beast?";
			global.msg[2] = "Yet you follow me to challenge me?";
			global.msg[3] = "You will fall in battle and I will rise to power again!";
			break;
		}
		case 22: {
			global.oneTimeText = true;
			oBattle.optionSelected = undefined;
			
			global.msg[0] = "You strike the Fire Beast with your sword!";
			global.msg[1] = "Fire Beast takes 1 damage!";
			break;
		}
		case 23: {
			global.oneTimeText = true;
			oBattle.optionSelected = undefined;
			
			global.msg[0] = "You...defend...I guess?";
			global.msg[1] = "...........";
			global.msg[2] = "...Anyway, your turn's over";
			break;
		}
		case 24: {
			scSaveGame();
			var next = pTalk.nextLine;
			//var text = "Would you like to load?";
			global.msg[0] = "You foolish mortal, you don't stand a chance!";
			global.msg[1] = "I'm the Fir --- ";
			break;
		}
		case 25: {
			global.oneTimeText = true;
			
			global.msg[0] = "LO!";
			break;	
		}
		case 26: {
			global.oneTimeText = true;
			
			global.msg[0] = "Quickly, we must stop the Fire Bea--";
			global.msg[1] = "Wait, something is not right...";
			global.msg[2] = "Quickly, follow me.";
			break;	
		}
		case 27: {
			global.oneTimeText = true;
			
			global.msg[0] = "Hurry, follow me to the Chapel";
			break;	
		}
		case 28: {
			global.msg[0] = "The oven is off. Turn it on?"
			scSpeechResponses("Yes", "No", 29, 30);
			break;	
		}
		case 29: {
			global.msg[0] = "You turn the oven on."
			global.msg[1] = "You feel a comforting warmth";
			
			global.oneOven = true;
			break;
		}
		case 30: {
			global.msg[0] = "It's okay, you don't have to.";
			if (!global.oneOven) {
				global.msg[1] = "You leave the oven off.";
			} else {global.msg[1] = "You leave the oven on.";}
			break;
		}
		case 31: {
			global.msg[0] = "The oven is on. Turn it off?";
			scSpeechResponses("Yes", "No", 32, 30);
			break;
		}
		case 32: {
			global.msg[0] = "You turn the oven off.";
			global.msg[1] = "The house gets a bit chilly";
			global.oneOven = false;
			break;
		}
		case 33: {
			global.msg[0] = "H-hi, w-who are you?";
			global.msg[1] = "Why are you here?";
			break;	
		}
		case 34: {
			global.msg[0] = "Hi, sorry if you have traveled far.";
			global.msg[1] = "The sage's memory has fallen ill";
			global.msg[2] = "No one knows why...";
			break;	
		}
		case 35: {
			global.msg[0] = "Hi...L-Lo is that you??";
			global.msg[1] = "Josh, come here, it's your father!";
			global.msg[2] = "Lo, I've been so worried about you.";
			global.msg[3] = "*cough* sorry I'm just a bit sick but don't worry.";
			global.msg[4] = "Please call me again when you get to a phone.";
			global.msg[5] = "Your game has been saved.";
			break;	
		}
		case 36: {
			global.msg[0] = "You pick up the phone...";
			global.msg[1] = "...But no one answers";
			break;
		}
		case 37: {
			global.oneTimeText = true;
			
			global.msg[0] = "Hey pal, how's it going?";
			break;
		}
		case 38: {
			global.msg[0] = "No time to talk!";
			break;
		}
		case 39: {
			global.oneTimeText = true;
			
			global.msg[0] = "Exactly as I thought, there's a glitch in this world.";
			global.msg[1] = "Lo, I'm not sure what happened in that cave --";
			global.msg[2] = "This...August. He's not supposed to be here.";
			global.msg[3] = "Lo -- Whatever August .. did in that cave --";
			global.msg[4] = "This world is changing..., I can feel it.";
			global.msg[5] = "This isn't supposed to be the story.";
			global.msg[6] = "I think he wants to take stop everything.";
			global.msg[7] = "He wants the story to slow to a halt.";
			global.msg[8] = "Not everyone is going to be able to understand.";
			global.msg[9] = "I think I can feel it because I'm a main character";
			global.msg[10] = "This world is going to start falling apart.";
			global.msg[11] = "Some parts of the old story will remain.";
			global.msg[12] = "Some things will be out of place.";
			global.msg[13] = "This virus is going to be fast. You need to find a cure.";
			global.msg[14] = "Savos. In LodgeCry. The healer. He would know.";
			global.msg[15] = "Leave now Lo. To the right. Here's the key.";
			
			global.wolfPineGateKey = true;
			break;
		}
		case 40: {
			global.oneTimeText = true;
			
			global.msg[0] = "... Be careful Lo..";
			global.msg[1] = "In the original story you were a fighter.";
			global.msg[2] = "August is taking everything away --";
			global.msg[3] = "Including your ability to fight.";
			global.msg[4] = "Enemies that would have been easy for you before..";
			global.mgs[5] = "Will now be difficult, you'll have to sneak by them.";
			break;
		}
		case 41: {
			global.msg[0] = "You touch the gate. It is locked.";
			global.msg[1] = "You hear a high pitched ringing";
			global.msg[2] = "You let go of the gate and it stops.";
			break;
		}
		case 42: {
			global.msg[0] = "The gate is locked.";
			global.msg[1] = "You are scared of what's on the other side.";
			break;
		}
		case 43: {
			scSketchTown8()
		
			global.msg[0] = "The gate is locked.";
			global.msg[1] = "You have the key.";
			global.msg[2] = "You notice your hands shake as you go to unlock it.";
			global.msg[3] = "You unlock the door.";
			break;
		}
		case 44: {
			global.msg[0] = "Why is he doing this...";
			break;
		}
		case 45: {
			global.msg[0] = "Make haste Lo.";
			break;
		}
		case 46: {
			global.oneTimeText = true;
			
			global.msg[0] = "What a lovely day :)";
			global.msg[1] = "How are you? <3";
			break;
		}
		case 47: {
			global.oneTimeText = true;
			
			global.msg[0] = "The sun celebration is here again...";
			global.msg[1] = "I just wish I..had someone to spend it with...";
			break;
		}
		case 48: {
			global.msg[0] = "...She's so perfect..Flora";
			global.msg[1] = "I'm just too nervous to talk to her.";
			global.msg[2] = "...Hey...do you think you could help me?";
			scSpeechResponses("Yes", "No", 51, 52);
			break;
		}
		case 49: {
			if (global.oneLovers > 0) {global.oneTimeText = true;}
			
			global.msg[0] = "It seems like everyone else has a sun festival date...";
			global.msg[1] = "......EXCEPT ME :'(";
			global.msg[2] = "I was kinda wishing that Samuel...wouldaskme.";
			global.msg[3] = "No...that's stupid he would never do that.";
			break;
		}
		case 50: {
			global.msg[0] = "So you're saying Samuel wanted to ask me out?";
			global.msg[1] = "But he was too nervous?";
			global.msg[2] = "Oh my gosh, that's so cute, can you please give him this note?";
			
			scSpeechResponses("Yes", "No", 55, 56);
			break;
		}
		case 51: {
			global.oneTimeText = true;
			
			global.msg[0] = "Oh thank you so much!";
			
			global.oneLovers ++;
			break;
		}
		case 52: {
			global.msg[0] = "Oh...okay...";
			break;
		}
		case 53: {
			global.msg[0] = "Have you talked to her yet??";
			break;	
		}
		case 54: {
			global.msg[0] = "What did she say?!"; 
			global.msg[1] = "I can't bear it";
			global.msg[2] = "She said yes?!?!?!";
			
			global.oneLovers ++;
			break;	
		}
		case 55: {
			global.oneTimeText = true;
			
			global.msg[0] = "You're the best, thank you!";
			global.oneLovers ++;
			break;	
		}
		case 56: {
			global.msg[0] = "Oh...Okay...";
			break;
		}
		case 57: {
			global.msg[0] = "Not to be rude but have you gave him the note yet?";
			break;	
		}
		case 58: {
			global.oneTimeText = true;
			
			global.msg[0] = "...wha--what...";
			global.msg[1] = "...Oh...You're not...her...";
			global.msg[2] = "Leave me alone...";
			break;
		}
		case 59: {
			global.oneTimeText = true;
			
			global.msg[0] = "I said leave me alone!!!"
			break;
		}
		case 60: {
			global.msg[0] = "...Wait, you can be...of use to me...";
			global.msg[1] = "........   .... ....";
			global.msg[2] = "She...She's so beautiful...";
			global.msg[3] = "...so p --perfect";
			global.msg[4] = "Tell her I love her";
			
			scSpeechResponses("Okay", "Yes", 61, 61);
			break;
		}
		case 61: {			
			global.msg[0] = "...Okay...";
			
			global.oneLovers ++;
			break;
		}
		case 62: {
			global.msg[0] = "wha-what are you waiting for.";
			break;
		}
		case 63: {
			global.msg[0] = "hi.";
			break;	
		}
		case 64: {		
			global.msg[0] = "okay, i'll go out with Samuel.";
			global.oneLovers ++;
			break;
		}
		case 65: {
			global.msg[0] = "That's...great <3 <3";
			break;
		}
		case 66: {
			global.msg[0] = "Wow, this is a dream come true";
			break;	
		}
		case 67: {
			global.msg[0] = "Sorry, nothing to buy today.";
			global.msg[1] = "I'm on holiday due to the sun festival!";
			break;
		}
		case 68: {
			global.oneTimeText = true;
			
			global.msg[0] = "ERROR: msg not found.";
			break;
		}
		case 69: {
			global.msg[0] = "He doesn't remember you. Time to move on.";
			break;
		}
		case 70: {
			global.msg[0] = ".........";
			break;
		}
		case 71: {
			global.msg[0] = "I want to love you...";
			break;
		}
		case 72: {
			global.msg[0] = "The log is blocking the way.";
			global.msg[1] = "It could be cut if you had a saw";
			break;	
		}
		case 73: {
			global.msg[0] = "The log is blocking the way.";
			global.msg[1] = "You cut it with the saw.";
			break;
		}
		case 74: {
			global.msg[0] = "An old rusty saw. Take?";
			
			scSpeechResponses("Yes", "No", 75, 76);
			break;
		}
		case 75: {
			scForest0();
			
			global.msg[0] = "Rusty saw added to inventory!";
			global.msg[1] = "This has got to be handy for something.";
			break;
		}
		case 76: {
			global.msg[0] = "Uhhhh okay I guess.";
			global.msg[1] = "You leave the saw on the forest floor.";
			break;
		}
		case 77: { //BLANK
			break;	
		}
		default: break;
		//return(string(text_current));
	}
	(instance_create_layer(0,0,layer,oSpeech))
}
function scSpeechResponses(responseOne,responseTwo,responseOneCase,responseTwoCase)
{
	global.responseOne = responseOne;
	global.responseTwo = responseTwo;
	global.responseOneCase = responseOneCase;
	global.responseTwoCase = responseTwoCase;
}
function scDrawSetText(font,color,halign,valign)
{
	draw_set_font(font);
	draw_set_color(color);
	draw_set_halign(halign);
	draw_set_valign(valign);
}
function scTextBox(txt,nxtline)
{
	
		myString = txt;	
		nextLine = nxtLine;
		if (!is_undefined(response1Case)) rsp1Case = response1Case;
		if (!is_undefined(response1)) rsp1Text = response1;
		if (!is_undefined(response2case)) rsp2Case = response2case;
		if (!is_undefined(response2)) rsp2Text = response2;
	
}
function scTextFeat(Speed, Color, Font,shakeInt,wave,talker,name,speaker,response1Case,response1,response2case,response2)
{
		global.textSpeed = Speed;
		global.textColor = Color;
		global.font = Font;
		global.intensity = shakeInt;
		global.talker = talker;
		global.name = name;
		global.speaker = speaker;
		if (wave == true) global.wave = true; 
		if (wave == false) global.wave = false;
}		
function scReactivateTimer()
{
	oPlayer.alarm[0] = room_speed * .5;	
}