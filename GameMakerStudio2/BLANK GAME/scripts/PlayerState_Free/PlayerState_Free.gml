function PlayerState_Free(){

	
	hSpeed = (keyRight - keyLeft) * walkSpeed;

	vSpeed = vSpeed + gravSpeed;

	if (place_meeting(x,y,obj_collision)){
		touchingGround = true
	
	}
	  // Check for a jump input
    if (key_jump && place_meeting(x, y + 1, obj_collision)) {
        vSpeed = -jumpForce; // Apply an upward velocity for the jump
    } else {
        vSpeed = vSpeed + gravSpeed;
    }
	
	if (place_meeting(x+hSpeed,y, obj_collision)) {
  
	  var onePixel = sign(hSpeed);
	  while (!place_meeting(x+onePixel, y, obj_collision))  x += onePixel;
	  hSpeed = 0;
	  
	}


	x += hSpeed;


	if (place_meeting(x,y+vSpeed, obj_collision)) {

  
	  var onePixel = sign(vSpeed);
	  while (!place_meeting(x,y+onePixel, obj_collision))  y += onePixel;
	  vSpeed = 0;  
	}
	
	y += vSpeed;


	if (hSpeed != 0) {
		if (hSpeed < 0) image_xscale = -1;
		else image_xscale = 1
		 
		  if (sprite_index != s_player) image_index = 1;
		 
		  sprite_index = s_player
	
	}else{

		//sprite_index = s_player_idle
		sprite_index = s_player

	}
	

	
	
	//if (keyInteract && place_meeting(x,y,NPCs)) Dialog_system();
	
	
	//if (keyboard_check(ord("W")) && mouse_check_button_pressed(mb_left)) {
	//	state = PLAYERSTATE.ATTACK_SLASH_UP	
	//} 
	
	

	if (keyboard_check(ord("D")) ||keyboard_check(ord("A") ))
	{
	
		
		audio_resume_sound(footsteps_cellar)	
	
	}else{
				audio_pause_sound(footsteps_cellar)	
	}
	
	if (global.dialog == true ) state = PLAYERSTATE.DIALOG;
	
		
}
	