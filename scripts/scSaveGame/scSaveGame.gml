function scSaveGame()
{
	//make save array
	var _saveData = array_create(0);
	
	//for every instance, create a struct and add it to the array
	with (pSaveMe)
	{
		var _saveEntity = 
		{
			room : room,
			playerObject : object_get_name(oPlayer.object_index),
			X : oPlayer.x, 
			Y : oPlayer.y,
			playerHealth : oPlayer.playerHealth,
			noise: global.noise,
			
			storyObject : object_get_name(oStoryChanger.object_index),
			Level1OvenOn : global.oven,
		}
		array_push(_saveData,_saveEntity);
	}
	//turn all the data into json string and save it via a buffer
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save( _buffer, "savedgame.save");
	buffer_delete( _buffer);
	
	//show_debug_message("Game saved! " + _string);
}
function scLoadGame() 
{
	//erase current game state
	if instance_exists(oPlayer) with (oPlayer) instance_destroy();
	//with (oStoryChanger) instance_destroy();

	if (file_exists("savedgame.save"))
	{
		var _buffer = buffer_load( "savedgame.save");
		var _string = buffer_read( _buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		while (array_length(_loadData) > 1)
		{
			var _loadEntity = array_pop(_loadData);
			var theRoom= _loadEntity.Room;
			scChangeRoom(theRoom);
			global.loadData = true;
			global.loadArray = _loadEntity;
			global.loadString = _string;

		}
	}
}
function scChangeRoom(theRoom) 
{
	room_goto(theRoom);
}
function scLoadData(_loadEntity,_string)
{
	with (instance_create_layer(0,0,"Player",asset_get_index(_loadEntity.playerObject)))
	{
		//show_debug_message("player made");
		oPlayer.x = _loadEntity.X;
		oPlayer.y = _loadEntity.Y;
		oPlayer.playerHealth = _loadEntity.playerHealth;
		oPlayer.global.noise= _loadEntity.playerNoise;
	}	
			
	/*
	with (instance_create_layer(0,0,"Manager",asset_get_index(_loadEntity.storyObject)))
	{
		global.oven = _loadEntity.Level1OvenOn;
	}
	*/
	//show_debug_message("game loaded! " + _string);
}