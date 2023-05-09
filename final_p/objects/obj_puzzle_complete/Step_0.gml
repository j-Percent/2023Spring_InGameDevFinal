/// @description Insert description here
// You can write your code in this editor


#region //spawn animation
if(spawn_count<=spawn){
	spawn_count++;
	switch(spawn_count){
		case time[0]:
		val = .25;
		break;
		case time[1]:
		val = 0;
		break;
		case time[2]:
		val = .25;
		break;
		case time[3]:
		val = .5;
		break;
		case time[4]:
		val = 0;
		break;
		case time[5]:
		val = .75;
		break;
		case time[6]:
		val = .5;
		break;
		case time[7]:
		val = 1;
		start_end = true;
		break;
		default:
		break;
	}
}
#endregion

//skip/continue with space
if(start_end){
	count++;
	if(count >= 1.5*room_speed){
		death = true;
		start_end = false;
	}
}

if(death){
	#region // despawn animation and despawning
	if(despawn_count<=despawn){
		despawn_count++;
			switch(despawn_count){
			case time[0]:
			val = .75;
			break;
			case time[1]:
			val = .5;
			break;
			case time[2]:
			val = .75;
			break;
			case time[3]:
			val = 0;
			break;
			case time[4]:
			val = .5;
			break;
			case time[5]:
			val = .25;
			break;
			case time[6]:
			val = 0;
			break;
			case time[7]:
			val = .25;
			break;
			default:
			break;
		}
	}else{
	    global.switcher = true;
		instance_destroy(id);
	}
#endregion
}

