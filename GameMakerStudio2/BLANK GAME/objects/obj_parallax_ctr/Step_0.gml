/// @description Insert description here
// You can write your code in this editor

if (farAway_var != 0){
	
	var farAway = layer_get_id(farAway_var)
}else{
	
	farAway = noone	
}

if (distant_var != 0){
	
	var distant = layer_get_id(distant_var)
}else{
	
	distant = noone		
}

if (near_var != 0){
	
	var near = layer_get_id(near_var)
}else{
	
	near = noone		
}





layer_x(farAway, lerp(0,camera_get_view_x(view_camera[0]), 0.2))
layer_x(distant, lerp(0,camera_get_view_x(view_camera[0]), 0.08))
layer_x(near, lerp(0,camera_get_view_x(view_camera[0]), 0.02))