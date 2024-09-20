
hSpeed = 2;
vSpeed = 2;
jumpForce = 7;
walkSpeed = 2;
gravSpeed = .2;

directionn = 1
//0 left
//1 right

y +=2
if (!place_meeting(x,y,obj_collision)){
		
	x = obj_player.x + 90
	audio_play_sound(P_bop3,10,false)
			
}
enemy_hp = 3
enemy_hp_time = 0
enemy_was_hitted = false



hit_play = false

state = ENEMYSTATE.ATTACKING
hitByAttack = ds_list_create()

enum ENEMYSTATE
{
	HITTED,
	FREE,
	ATTACKING,
	
}