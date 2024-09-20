
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);
keyAttack_up = keyboard_check_pressed(ord("W")) && mouse_check_button_pressed(mb_left);
keyAttack =  mouse_check_button_pressed(mb_left);
keyInteract = keyboard_check_pressed(ord("E"))

if (keyLeft) directionn = 0
if (keyRight) directionn = 1


switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.DIALOG: PlayerState_Dialog(); break;
	case PLAYERSTATE.ATTACK_POWER1: PlayerState_Attack_P1(); break;
	case PLAYERSTATE.DEATH: PlayerState_Death(); break;
	
}



if (y > room_height + 16) {
    // Player has fallen off the room, restart the room
	
	time_dark = 90
	state = PLAYERSTATE.DEATH


}
if (player_was_hitted == true){

	
	player_hp_time--
}