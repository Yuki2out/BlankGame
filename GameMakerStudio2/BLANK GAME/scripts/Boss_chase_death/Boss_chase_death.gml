// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Boss_chase_death(){
	
	sprite_index = s_enemy_bigChaseDeath
	if (sprite_index != -1) {
	    // Check if the current frame is the last frame of the animation
	    if (image_index >= image_number - 1) {
	        // Perform the action when the animation reaches the last frame
			instance_destroy(self)
		
	    }
	}


	
	
}