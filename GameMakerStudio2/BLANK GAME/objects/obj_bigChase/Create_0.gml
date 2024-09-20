
fall_speed = 23
hSpeed = 2;
vSpeed = 2;
jumpForce = 7;
walkSpeed = 3;
gravSpeed = .2;
screamTime = 70
step_timer= 12

runningSpeed = 5.5
stomp_sounds = [stomp1 , stomp2,stomp3,stomp4,stomp5]
stomp_sound = random_range(0,4)


hp =3 
hit_time = 30

hit_play = false
switch_cam = false
state = ENEMYBIGCHASE.INTRO

enum ENEMYBIGCHASE
{
	INTRO,
	CHASE,
	DEATH
	
}