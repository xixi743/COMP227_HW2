/// @description Waiting to Dash depending on distance to player

// So I'm not really sure if this alarm is necessary
// someone else can analyze that, but this works fine right now
// basically, the intention is to wait and not dash if the player
// is already next to the ghost character
// and gives the player a fair chance at running away from the ghost

show_debug_message("alarm 1 went off");
var dist_to_player = distance_to_object(obj_player);

if dist_to_player > 30 {
	state = "dash"
	alarm[0] = framerate*seconds_to_wait;
} else {
	alarm[1] = framerate*seconds_to_wait;
}