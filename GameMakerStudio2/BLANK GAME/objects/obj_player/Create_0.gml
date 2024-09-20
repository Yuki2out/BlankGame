
hSpeed = 2;
vSpeed = 2;
jumpForce = 7;
walkSpeed = 3;
gravSpeed = .2;

sinewave = 0.3

global.power = 0
//1
//2
//3



trigger = true
audio_play_sound(footsteps_cellar,10,true)
audio_pause_sound(footsteps_cellar)
fuel = 0.001

ligts = [obj_light,obj_light_circle_candle]


instance_create_layer(x,y,"dark",obj_dark)
//instance_create_layer(x- 5,y + 10,"light",obj_light_player)
obj_dark.image_alpha = 0
//obj_light_player.image_alpha = 0

global.lightsEffect = false

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

time_dark = 90

state = PLAYERSTATE.FREE
player_state_for_timer = state
hitByAttack = ds_list_create()

enum PLAYERSTATE
{
	HITTED,
	FREE,
	ATTACK_POWER1,
	DIALOG,
	DEATH
	
}


