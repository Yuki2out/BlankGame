/// @description Insert description here
// You can write your code in this editor
draw_self()



if (global.lightsEffect)
{
	
	if (!place_meeting(x,y,ligts)){
		if (obj_dark.image_alpha < 1){
			obj_dark.image_alpha += fuel	
		}
		if (obj_light_player.image_alpha > 0.2){
			obj_light_player.image_alpha -= fuel	
		}
	
	}else{
		if (obj_dark.image_alpha > 0){
			
			obj_dark.image_alpha -= 0.01	
			
		}
		if (obj_light_player.image_alpha < 0.40){
			
			obj_light_player.image_alpha += 0.01	
			
		}
	
	}
}


enemyX = obj_player.x - random_range(-20,20)
for (var i = 0; i = 2; i++) {
	audio_play_sound(P_bop1,10,false)
	instance_create_layer(enemyX,obj_player.y,"enemy",obj_enemy)
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

// Draw the sprite at the left corner of the camera view
draw_text(sprite_x, sprite_y,"Fuel left: " + string(obj_dark.image_alpha) );
draw_text(sprite_x, sprite_y + 20,"Player light: " + string(obj_light_player.image_alpha) );


