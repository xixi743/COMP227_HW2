/// @description Bat Behaviors

switch(state) {
	case "wait":
	#region Wait State
	
	// do nothing lol
	
	
	#endregion
	
	case "dash":
	#region Dash State
		
		if not instance_exists(obj_player) break;
	
		//var direction_facing = image_xscale;
		var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
		
		//move towards the player
		move_and_collide(direction_facing * chase_speed, 0);
		
		//y = lerp(room_height-70,o_player.y+o_player.jump_height_, 0.3);
		
		//if place_meeting(x, y, o_player) {
		//	//create_hitbox(x, y, self, sprite_index, knockback, 1, damage, image_xscale);
		//	attacked = true;
		//	state = "attacked";
		//}

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