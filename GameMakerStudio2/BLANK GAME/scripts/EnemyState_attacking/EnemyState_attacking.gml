// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_attacking(){
	flip = false
	
	move_towards_point(obj_player.x,y,2)
	if (x > obj_player.x){
		if(flip == false){
			image_xscale = -1;
			flip = true
			
		}else if(flip == true){
			image_xscale = 1;
			flip = false
		}
		
		
	}else{
			
	}
}