

switch (state)
{
	case  ENEMYBIGCHASE.INTRO: Boss_chase_intro(); break;
	case  ENEMYBIGCHASE.CHASE: Boss_chase_chase(); break;
	case  ENEMYBIGCHASE.DEATH: Boss_chase_death(); break;
	

	
}

if (hp <=0){
	
	state = ENEMYBIGCHASE.DEATH
	
}