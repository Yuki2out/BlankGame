/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x,y,obj_player)){
	doing = true
	instance_deactivate_all(true)
	audio_pause_all()
}
	if (doing == true){
		draw_sprite(s_dark,-1,321,322)
		
		if(keyboard_check_pressed(vk_anykey)){

			audio_play_sound(P_bop1,10,false)
			audio_resume_all()
			doing = false
			instance_activate_all()
			global.power++;
			instance_destroy(self)
			
		
		}

		
	
		
	
		
		
		
	}
