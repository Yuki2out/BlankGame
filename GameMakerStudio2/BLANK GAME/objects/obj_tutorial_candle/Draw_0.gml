/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player)){
	
	
	draw_text(obj_candle.x - 15,obj_candle.y - 20,"[E]")
	if (keyboard_check_pressed(ord("E"))){
		
		instance_destroy(self)	
	}
}
draw_self()