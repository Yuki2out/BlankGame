/// @description Insert description here
// You can write your code in this editor



if (global.lightsEffect)
{
	
	if (!place_meeting(x,y,ligts)){
		if (obj_dark.image_alpha < 0.70){
			obj_dark.image_alpha += fuel	
		}
		
		if (obj_dark.image_alpha >= 0.55){
			if (sinewave < 0.8){
				sinewave += 0.01
			}
		
			
		}


	}else{
		if (obj_dark.image_alpha > 0.3){
			
			obj_dark.image_alpha -= 0.01	
			
		}

		if (sinewave > 0.3){
			sinewave -= 0.01
		}			
			
		
	
	}
}else{
	obj_dark.image_alpha = 0.3
		
}




// Get the camera position and size
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

// Get the camera position
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Set the position to the left corner of the camera view
var sprite_x = cam_x;
var sprite_y = cam_y;

gpu_set_blendmode(bm_add)

for(c = 0; c < 360;c +=20){
	draw_sprite_ext(sprite_index,image_index,x + lengthdir_x(6,c), y + lengthdir_y(6,c),image_xscale,image_yscale,image_angle,image_blend,sinewave * 0.1)	
}
gpu_set_blendmode(bm_normal)

draw_self()
// Draw the sprite at the left corner of the camera view
//draw_text(sprite_x, sprite_y,"Fuel left: " + string(obj_dark.image_alpha) );
//draw_text(sprite_x, sprite_y + 20,"Player light: " + string(sinewave) );


