// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Boss_chase_intro(){
	
	
	if (!place_meeting(x,y,obj_collision)){
		
		y += fall_speed
		
	}else{
		global.dialog = true
		screamTime--
		if (screamTime >= 0){
			
			sprite_index = s_enemy_bigChaseScream
		}else{
			
			audio_play_sound(a_stef_scream,10,false)	
			global.dialog = false
		}
		
		
		
	}

		
	//if (place_meeting(x+hSpeed,y, obj_collision)) {
  
	//  var onePixel = sign(hSpeed);
	//  while (!place_meeting(x+onePixel, y, obj_collision))  x += onePixel;
	//  hSpeed = 0;
	  
	//}else{
		
			
	//}
	
	
}