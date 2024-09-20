/// @description Insert description here
// You can write your code in this editor

if (obj_dark.image_alpha > 0.50){
		
	
	if (spawn < 0 ){
		
		instance_create_layer(x - 10,obj_player.y,"enemy",obj_enemy)
		audio_play_sound(P_bop1,0,false)
		spawn = 300
		
	}

	spawn--
}else{
	instance_destroy(obj_enemy)
}
