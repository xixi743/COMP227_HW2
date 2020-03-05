/// @description Insert description here

// Finite State Machine
state = "move";

// Dependencies
input = instance_create_layer(0, 0, "Instances", obj_input);
	// giving us access to our input object

// Speed
hspeed_ = 0; // horizontal speed
vspeed_ = 0; // vertical speed
max_hspeed_ = 4; // maximum horizontal speed
max_vspeed_ = 10; // maximum vertical speed
gravity_ = 0.4 //gravity


//// player control input
//key_left = 0;
//key_right = 0;
//key_jump = 0;
//key_jump_held = 0;

// momentum
accel = 0.5;
decel = 0.3;

// jumping
onground = false;
groundbuffer = 3;
jumpspeed = -10;
jumpbuffer = 10;

// image speeds
idle_speed = 0.5;
run_speed = 2;