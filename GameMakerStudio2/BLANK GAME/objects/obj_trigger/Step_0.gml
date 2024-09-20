/// @description Insert description here
// You can write your code in this editor


if (type == "activate"){
	
	if (place_meeting(x,y,obj_player)){
	
		instance_activate_object(activate)
		instance_destroy(self)
	}
	
}else if (type == "deactivate"){
	if (place_meeting(x,y,obj_player)){
	
		instance_deactivate_object(activate)
		instance_destroy(self)
	}
	
	
}