event_inherited(); // inheriting all events from parent obj_enemies

// Finite State Machine
	// this initiates the first state of the ghost's finite state machine
state = "wait";

// Stats
hp = 10; // only takes one hit
max_hp = hp;

// Alarms
framerate = 60;
seconds_to_wait = 3;
alarm[0] = -1
alarm[1] = -1; // initializing alarm 1 with it off

// Physics
friction = 0.5; // friction is what is causing the ghost to slow down
				// when it dashes
				// the alternative would to do a lerp() and slowly decrease the
				// speed of the ghost's dash
vspeed_ = 5;


// Animation
image_speed = 1.5;
image_xscale = 2;
image_yscale = 2;
