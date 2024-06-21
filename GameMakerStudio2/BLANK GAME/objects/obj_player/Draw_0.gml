/// @description Insert description here
// You can write your code in this editor
draw_self()




if (!place_meeting(x,y,obj_light)){
	if (obj_dark.image_alpha < 1){
		obj_dark.image_alpha += 0.0001	
	}
	
}else{
	if (obj_dark.image_alpha > 0){
		obj_dark.image_alpha -= 0.01	
	}
	
}

draw_text(x + 10, y - 20, obj_dark.image_alpha)