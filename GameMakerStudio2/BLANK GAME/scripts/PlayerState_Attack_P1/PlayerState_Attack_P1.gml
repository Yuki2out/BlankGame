function PlayerState_Attack_P1(){
	
	if(global.power >0){
		
		instance_create_layer(x,y,"light",obj_light_ball)
	}
	

	

	
	state = PLAYERSTATE.FREE
}
	