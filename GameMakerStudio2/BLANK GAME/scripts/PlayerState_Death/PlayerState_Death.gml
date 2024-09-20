// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Death(){
	
	
	

		
	//audio_pause_all()
	//audio_play_sound(cinematic_boom_,1,false)
	//audio_play_sound(slime_splatter,10,false)
	//room_restart();
	//obj_dark.image_alpha = 0
	//x = obj_respawnPos.x
	//y = obj_respawnPos.y
	//instance_destroy(obj_dark_1)
	//audio_resume_all()
	
	
	//state = PLAYERSTATE.FREE
	




// Player has fallen off the room, restart the room

	if (!instance_exists(obj_dark_black)){
		instance_create_layer(obj_player.x,obj_player.y,"Death",obj_dark_black)
		audio_pause_all()
		
		audio_play_sound(slime_splatter,10,false)
	}
	
	if (instance_exists(obj_dark_black)){
		
		time_dark--	
	}
	if (time_dark <=0){
		room_restart();
		obj_dark.image_alpha = 0.3
		x = obj_respawnPos.x
		y = obj_respawnPos.y
		instance_destroy(obj_dark_black)
		audio_resume_all()
		audio_play_sound(cinematic_boom_,1,false)
		state = PLAYERSTATE.FREE
	}



}