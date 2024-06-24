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
		trigger = true
	}
	
	
}