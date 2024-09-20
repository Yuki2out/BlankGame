/// @description Insert description here
// You can write your code in this editor
draw_self()
if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && candle_lit ==false){
	
	sprite_index = s_candle_lit
	
	audio_play_sound(so_candle_lit,10,false)
	candle_lit = true
}
if (candle_lit){
	if (trigger == false){
		
		instance_create_layer(x,y,"light",obj_light_circle_candle)
		if (instance_exists(obj_roomSafe_mag)){
					global.candel_lit++
		}

		trigger = true
	}
	
	
}



if (glow){
	
	gpu_set_blendmode(bm_add)

	for(c = 0; c < 360;c +=20){
		draw_sprite_ext(sprite_index,image_index,x + lengthdir_x(6,c), y + lengthdir_y(6,c),image_xscale,image_yscale,image_angle,image_blend,sinewave * 0.1)	
	}
	
	gpu_set_blendmode(bm_normal)

	
	
}