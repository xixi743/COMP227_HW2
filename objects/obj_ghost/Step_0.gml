/// @description Ghost Behaviors

switch(state) {
	case "exit chest":
	#region Exit Chest State
		y -= vspeed_;
		vspeed_ = lerp(vspeed_, 0, 0.05);
		if vspeed_ <= 0 {
			state = "wait"
		}
	#endregion
	
	case "wait":
	#region Wait State
		// in this state, the ghost does nothing besides wait

		// the statement below just ensures that the ghost is facing
		// the player at all times
		image_xscale = 2 * -sign(x - obj_player.x);
			// must multiple it by two, because in the game room,
			// I set the xscale of the ghost to 2, otherwise,
			// the ghost is too small
			// if you don't do this, the ghost gets all stretched out and tall
			// because the yscale is also 2
	#endregion
	
	case "dash":
	#region Dash State
		
		if not instance_exists(obj_player) break; // no point in dashing w/o a player
		
		// make ghost face in the direction of the player
		image_xscale = 2 * -sign(x - obj_player.x);
		
		var dist_to_player = distance_to_object(obj_player);

		// I'm not sure why, but without the extra if with the dash state,
		// the movement gets really funky
		// so it seems redundant to say "if in the dash state" twice, but
		// trust me, it gets weird without it
		if state = "dash" and dist_to_player > 15 {
			var direction_to_move = point_direction(x, y, obj_player.x, obj_player.y)
			motion_add(direction_to_move, 15);
			
			// these are some other functions for making the ghost move, which might've
			// worked, had I figured out to use friction sooner
			//move_contact_all(direction_to_move, 100); //movement is too rigid, very snappy
			//move_towards_point(obj_player.x, obj_player.y, 10); // not sure how to stop the movement fast enough
			state = "wait";
		}
		
		if state = "dash" and dist_to_player <= 15 {
			// so because the condition above says that the ghost must be
			// 15 pixels away or further to run, the alarm is still going off
			// every 3 seconds
			// so this else means that the ghost is 15 pixels or closer
			// when it's this close, we should reset the alarm, so the player
			// has a chance to run away again (assuming multiple lives)
			// otherwise, the alarm could go off when the ghost is right
			// on the player and the player just gets mauled by the ghost
			// I think this makes sense
			alarm[0] = -1; //turning off alarm 0
			alarm[1] = framerate*seconds_to_wait;
			state = "wait";
		}

		#endregion
		break;

	case "death":
		#region Death State
		
		//set_state_sprite(s_bat_hurt, 0.7, 0);
		
		//if animation_start() {
			//audio_play_sound(snd_bat_death, 5, false);
			//repeat (experience) {
				//instance_create_layer(x+random_range(-4,4), y+random_range(-4,4), "Effects", o_experience);
			//}
		//}
		
		//if animation_end() {
		//	global.kills += 1;
		//	instance_destroy();
		//}
		
		
		#endregion
		break;
	
	default:
		show_debug_message("State " + state +" does not exist");
		state = "chase";
		break;
}