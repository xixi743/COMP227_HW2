event_inherited();

state = "wait";
hp = 10; // only takes one hit
max_hp = hp;

// Alarm
seconds_to_wait = 3;
alarm[0] = 60*seconds_to_wait;

image_speed = 0.8;


//hspeed = 2;
//if instance_exists(obj_player) {
//	hspeed *= sign(obj_player.x - x);
//	// making sure always going toward the player
//	// want negative hspeed to go left
//	// positive hspeed to go right
//	// so just end up with -1 or +1
//}
//image_xscale = sign(-hspeed);
	// actually have no clue what is going on with image_xscale here ahhh
	// I can't get it to flip the image correctly when the player moves to the other side
	// quick solution is to just always have the bat coming from the right
	// but that's infuriating bc it works with other characters RIP
	// messed around with the placement of the negative bc I think that would be it....
