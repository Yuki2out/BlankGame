/// @description Insert description here
// You can write your code in this editor
draw_self()

if (place_meeting(x,y,obj_player) && textDisplay == false){
	
	
	draw_text(x - 15,y - 20,"[E]")
	if (keyboard_check_pressed(ord("E"))){
		
		instance_destroy(self)	
	}
}else{
	draw_text(x - 15,y - 20,"Press [E]")
}

