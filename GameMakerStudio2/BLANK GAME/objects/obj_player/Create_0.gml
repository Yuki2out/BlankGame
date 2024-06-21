
hSpeed = 2;
vSpeed = 2;
jumpForce = 7;
walkSpeed = 5;
gravSpeed = .2;

instance_create_layer(x,y,"dark",obj_dark)
obj_dark.image_alpha = 0
directionn = 1
//0 left
//1 right

global.dialog = false

empty_dialog = []

NPCs = [obj_merenge]

player_hp = 6
player_hp_time = 0
player_was_hitted = false

hit_play = false

state = PLAYERSTATE.FREE
hitByAttack = ds_list_create()

enum PLAYERSTATE
{
	HITTED,
	FREE,
	ATTACK_SLASH,
	ATTACK_SLASH_UP,
	ATTACK_COMBO,
	DIALOG
	
}