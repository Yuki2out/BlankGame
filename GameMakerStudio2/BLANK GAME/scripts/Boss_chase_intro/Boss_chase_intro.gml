// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Boss_chase_intro(){
	
	global.camFollow = obj_bigChase
	obj_camera.y = obj_camera.y + 5
	global.dialog = true
	global.camFollowSmoothnesX = 15
	global.camFollowSmoothnesY = 15
	if (place_meeting(x,y,obj_collision)){
		y--
		global.dialog = true
		screamTime--
		if (screamTime >= 0){
			if (hit_play = false){
				audio_play_sound(a_stef_scream,10,false)	
				hit_play = true
			}
			sprite_index = s_enemy_bigChaseScream
		}else{
			
			global.camFollow = obj_player
			
			global.camFollowSmoothnesX = 25
			global.camFollowSmoothnesY = 25
			global.dialog = false
			state = ENEMYBIGCHASE.CHASE
		}

		
	}else{
		
		y += 5
		
		
		
	}

		
	//if (place_meeting(x+hSpeed,y, obj_collision)) {
  
	//  var onePixel = sign(hSpeed);
	//  while (!place_meeting(x+onePixel, y, obj_collision))  x += onePixel;
	//  hSpeed = 0;
	  
	//}else{
		
			
	//}
	
	
}