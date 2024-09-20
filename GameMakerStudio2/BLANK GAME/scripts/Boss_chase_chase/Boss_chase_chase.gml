// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Boss_chase_chase(){
	
	step_timer--
	if (step_timer <= 0){
		step_timer= 42
		camera_shake(5, 30)
		audio_play_sound(stomp_sounds[stomp_sound],10,false)
		
	}
	//runningSpeed += 0.01
	sprite_index = s_enemy_bigChaseRun
	
	x += runningSpeed
	
	
	if (place_meeting(x,y,obj_light_circle_candle)){
		hit_time--
		if (hit_time <=0){
			hp--
			hit_time = 15
		  
		}
		
	}
	
	
	
	
}