
hSpeed = 2;
vSpeed = 2;
jumpForce = 7;
walkSpeed = 2;
gravSpeed = .2;

directionn = 1
//0 left
//1 right


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