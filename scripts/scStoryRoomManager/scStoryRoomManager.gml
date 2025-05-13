function scStoryRoomManager(){
	switch (global.story) {
		case 0: switch (global.storyProgression) {
			case 0: switch (global.Room) {
					case rLevel1Room1: {
						if (global.follow)
						{
							if (!instance_exists(oJosh))
							{
								instance_create_layer(oPlayer.x,oPlayer.y, "ObjectFixtures",oJosh);
							}
						}
					} break;
					case rLevel1Room2: {
						if (global.follow)
						{
							if (!instance_exists(oJosh))
							{
								instance_create_layer(oPlayer.x,oPlayer.y, "ObjectFixtures",oJosh);
							}
						}
					}
					case rLevel1Room3: break;
					case rLevel1Room4: break;
					case rLevel1Room5: break;
					case rLevel1Room6: break;
					case rLevel1Room7: {
						if (instance_exists(oSarah))
						{
							scSaySomething(oSarah.id)	
						}	
					}
					case rLevel1Room8: break;
					case rLevel1RoomChapel: break;
					case rLevel1FB1: break;
					case rLevel2Room1: break;
					case rLevel2Room2: break;
					case rLevel2Room3: break;
					case rLevel2Room4: break;
					case rLevel2Room5: break;
					case rLevel2SaveRoom: break;
					case rLevel2WP1: break;
					case rLevel2WP2: break;
					case rLevel2WP3: break;
					case rLevel2WP4: break;
					case rLevel2WP5: break;
					case rLevel2WP6: break;
					case rLevel3Room1: break;
					case rLevel3Room2: break;
					case rLevel3Room3: break;
					case rLevel3Room4: break;
					case rLevel3Room5: break;
					case rLevel3Hotel1: break;
					case rLevel3Hotel2: break;
					case rLevel3Hotel3: break;
					case rLevel3Hotel4: break;
					case rLevel3HotelOutside: break;
					case rLevel4Room1: break;
					case rLevel4Room2: break;
					case rLevel4Room3: break;
					case rLevel4Room4: break;
					default: break;
				} break;
			case 1: switch (global.Room) {
					case rLevel1Room1: {
						if (!instance_exists(oSTLeader)) && (global.stLeaderCounter == 2) //create stleader if is in follow scene	
						{
							with (instance_create_layer(319, 30, "ObjectFixtures", oSTLeader))
							{
								lead = true;	
							}	
						}
					} break;
					case rLevel1Room2: {
						if (global.stLeaderCounter > 4) 
						{
							global.targetX = oPlayer.x;
							global.targetY = oPlayer.y;
							room = (rLevel1Room2S0SP1); 
						}
						break;
					} 
					case rLevel1Room3: break;
					case rLevel1Room4: break;
					case rLevel1Room5: break;
					case rLevel1Room6: break;
					case rLevel1Room7: break;
					case rLevel1Room8: {
						if (!instance_exists(oSTLeader)) && (global.stLeaderCounter == 2) //create stleader if is in follow scene
						{
							with (instance_create_layer(63, 223, "ObjectFixtures", oSTLeader))
							{
								lead = true;	
							}	
						}
						if (global.stLeaderCounter > 3) 
						{
							global.storyProgression ++;	
							scResetCounter(); //FIXME
						}
					} break;
					case rLevel1RoomChapel: {
						if (!instance_exists(oSTLeader)) && (global.stLeaderCounter == 2) //create stleader if is in follow scene	
						{
							with (instance_create_layer(63, 255, "ObjectFixtures", oSTLeader))
							{
								lead = true;	
							}	
						}
					} break;
					case rLevel1FB1: break;
					case rLevel2Room1: {
						global.storyProgression = 2;
					} break;
					case rLevel2Room2: break;
					case rLevel2Room3: break;
					case rLevel2Room4: break;
					case rLevel2Room5: break;
					case rLevel2SaveRoom: break;
					case rLevel2WP1: break;
					case rLevel2WP2: break;
					case rLevel2WP3: break;
					case rLevel2WP4: break;
					case rLevel2WP5: break;
					case rLevel2WP6: break;
					case rLevel3Room1: break;
					case rLevel3Room2: break;
					case rLevel3Room3: break;
					case rLevel3Room4: break;
					case rLevel3Room5: break;
					case rLevel3Hotel1: break;
					case rLevel3Hotel2: break;
					case rLevel3Hotel3: break;
					case rLevel3Hotel4: break;
					case rLevel3HotelOutside: break;
					case rLevel4Room1: break;
					case rLevel4Room2: break;
					case rLevel4Room3: break;
					case rLevel4Room4: break;
					default: break;
				} break;
			case 2: switch (global.Room) {
					case rLevel1Room1: break;
					case rLevel1Room2: {
						if (room != rLevel1Room2S0SP2)
						{
							global.targetX = oPlayer.x;
							global.targetY = oPlayer.y;
							room = (rLevel1Room2S0SP2);	
						}
					} break;
					case rLevel1Room3: break;
					case rLevel1Room4: break;
					case rLevel1Room5: break;
					case rLevel1Room6: break;
					case rLevel1Room7: break;
					case rLevel1Room8: break;
					case rLevel1RoomChapel: break;
					case rLevel1FB1: break;
					case rLevel2Room1: break;
					case rLevel2Room2: break;
					case rLevel2Room3: break;
					case rLevel2Room4: break;
					case rLevel2Room5: break;
					case rLevel2SaveRoom: {
						break;                                                                                                                                                                                                                                              
					}
					case rLevel2WP1: break;
					case rLevel2WP2: break;
					case rLevel2WP3: break;
					case rLevel2WP4: break;
					case rLevel2WP5: break;
					case rLevel2WP6: break;
					case rLevel3Room1: break;
					case rLevel3Room2: break;
					case rLevel3Room3: break;
					case rLevel3Room4: break;
					case rLevel3Room5: break;
					case rLevel3Hotel1: break;
					case rLevel3Hotel2: break;
					case rLevel3Hotel3: break;
					case rLevel3Hotel4: break;
					case rLevel3HotelOutside: break;
					case rLevel4Room1: break;
					case rLevel4Room2: break;
					case rLevel4Room3: break;
					case rLevel4Room4: break;
					default: break;
				} break;
			case 3: switch (global.Room) {
					case rLevel1Room1:
					case rLevel1Room2:
					case rLevel1Room3: 
					case rLevel1Room4:
					case rLevel1Room5:
					case rLevel1Room6:
					case rLevel1Room7:
					case rLevel1Room8:
					case rLevel1RoomChapel:
					case rLevel1FB1:
					case rLevel2Room1:
					case rLevel2Room2:
					case rLevel2Room3:
					case rLevel2Room4:
					case rLevel2Room5:
					case rLevel2SaveRoom:
					case rLevel2WP1:
					case rLevel2WP2:
					case rLevel2WP3:
					case rLevel2WP4:
					case rLevel2WP5:
					case rLevel2WP6:
					case rLevel3Room1:
					case rLevel3Room2:
					case rLevel3Room3:
					case rLevel3Room4:
					case rLevel3Room5:
					case rLevel3Hotel1:
					case rLevel3Hotel2:
					case rLevel3Hotel3:
					case rLevel3Hotel4:
					case rLevel3HotelOutside:
					case rLevel4Room1:
					case rLevel4Room2:
					case rLevel4Room3:
					case rLevel4Room4:
					default: break;
				} break;
			case 4: switch (global.Room) {
					case rLevel1Room1:
					case rLevel1Room2:
					case rLevel1Room3: 
					case rLevel1Room4:
					case rLevel1Room5:
					case rLevel1Room6:
					case rLevel1Room7:
					case rLevel1Room8:
					case rLevel1RoomChapel:
					case rLevel1FB1:
					case rLevel2Room1:
					case rLevel2Room2:
					case rLevel2Room3:
					case rLevel2Room4:
					case rLevel2Room5:
					case rLevel2SaveRoom:
					case rLevel2WP1:
					case rLevel2WP2:
					case rLevel2WP3:
					case rLevel2WP4:
					case rLevel2WP5:
					case rLevel2WP6:
					case rLevel3Room1:
					case rLevel3Room2:
					case rLevel3Room3:
					case rLevel3Room4:
					case rLevel3Room5:
					case rLevel3Hotel1:
					case rLevel3Hotel2:
					case rLevel3Hotel3:
					case rLevel3Hotel4:
					case rLevel3HotelOutside:
					case rLevel4Room1:
					case rLevel4Room2:
					case rLevel4Room3:
					case rLevel4Room4:
					default: break;
				} break;
			case 5: switch (global.Room) {
					case rLevel1Room1:
					case rLevel1Room2:
					case rLevel1Room3: 
					case rLevel1Room4:
					case rLevel1Room5:
					case rLevel1Room6:
					case rLevel1Room7:
					case rLevel1Room8:
					case rLevel1RoomChapel:
					case rLevel1FB1:
					case rLevel2Room1:
					case rLevel2Room2:
					case rLevel2Room3:
					case rLevel2Room4:
					case rLevel2Room5:
					case rLevel2SaveRoom:
					case rLevel2WP1:
					case rLevel2WP2:
					case rLevel2WP3:
					case rLevel2WP4:
					case rLevel2WP5:
					case rLevel2WP6:
					case rLevel3Room1:
					case rLevel3Room2:
					case rLevel3Room3:
					case rLevel3Room4:
					case rLevel3Room5:
					case rLevel3Hotel1:
					case rLevel3Hotel2:
					case rLevel3Hotel3:
					case rLevel3Hotel4:
					case rLevel3HotelOutside:
					case rLevel4Room1:
					case rLevel4Room2:
					case rLevel4Room3:
					case rLevel4Room4:
					default: break;
				} break;
			} break;
		case 1: switch (global.storyProgression) {
				case 0: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 1: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 2: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 3: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 4: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 5: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
			}
		case 2: switch (global.storyProgression) {
				case 0: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 1: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 2: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 3: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 4: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 5: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
			}
		case 3: switch (global.storyProgression) {
				case 0: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 1: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 2: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 3: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 4: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
				case 5: switch (room) {
						case rLevel1Room1:
						case rLevel1Room2:
						case rLevel1Room3: 
						case rLevel1Room4:
						case rLevel1Room5:
						case rLevel1Room6:
						case rLevel1Room7:
						case rLevel1Room8:
						case rLevel1RoomChapel:
						case rLevel1FB1:
						case rLevel2Room1:
						case rLevel2Room2:
						case rLevel2Room3:
						case rLevel2Room4:
						case rLevel2Room5:
						case rLevel2SaveRoom:
						case rLevel2WP1:
						case rLevel2WP2:
						case rLevel2WP3:
						case rLevel2WP4:
						case rLevel2WP5:
						case rLevel2WP6:
						case rLevel3Room1:
						case rLevel3Room2:
						case rLevel3Room3:
						case rLevel3Room4:
						case rLevel3Room5:
						case rLevel3Hotel1:
						case rLevel3Hotel2:
						case rLevel3Hotel3:
						case rLevel3Hotel4:
						case rLevel3HotelOutside:
						case rLevel4Room1:
						case rLevel4Room2:
						case rLevel4Room3:
						case rLevel4Room4:
						default: break;
					}
			}
	}	
}