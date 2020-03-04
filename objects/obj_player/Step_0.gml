/// @description Insert description here

switch (state) {
	case "move":
	#region Move State
		#region Horizontal Movement
		
		if !input.key_right and !input.key_left {
			sprite_index = spr_ninjafrog_idle;
			image_speed = idle_speed;
		}
		
		if input.key_left {
			image_xscale = -2;
			sprite_index = spr_ninjafrog_run;
			image_speed = run_speed;
		}
		
		if input.key_right{
			image_xscale = 2;
			sprite_index = spr_ninjafrog_run;
			image_speed = run_speed;
		}
		
		if input.key_jump or input.key_jump_held {
			sprite_index = spr_ninjafrog_jump;
			image_speed = 0;
		}
		
		dir = input.key_right - input.key_left;

		// horizontal movement
		hspeed_ += dir * accel;

		// what if the direction is 0?
		// to stop the player from moving

		if (dir == 0) {
			// player should stop
			if (hspeed_ < 0) {
				// going left
				hspeed_ = min(hspeed_+decel, 0);
			} else {
				hspeed_ = max(hspeed_-decel, 0);
			}
		}

		// make sure hspeed_ never gets higher than max speed_
		hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);


		// collision and gravity
		// horizontal collision

		// checks if an object is colliding with another object
		if (place_meeting(x+hspeed_, y, obj_block)) {
			speed_dir = sign(hspeed_); // -1, 1, 0
			// loop through to see if adding the speed_dir
			// would create collision
			// if not, move 1 on that direction at a time
	
			while (!place_meeting(x+speed_dir, y, obj_block)) {
				x += speed_dir;
			}
			// if a collision happens
			hspeed_ = 0;
		}
		x+= hspeed_;
		#endregion

		#region Vertical Movement

		// 1. vsp incorporate gravity

		vspeed_ += gravity_;

		// how to jump 
		// jump if we are touching the floor
		// ground jump
		if (jumpbuffer > 0) {
			jumpbuffer--;
			if (input.key_jump) {
				jumpbuffer = 0;
				vspeed_ = jumpspeed;
			}
		}

		// are you colliding with the floor?
		onground = place_meeting(x, y+groundbuffer, obj_block);
		if (onground) {
			jumpbuffer = 10;
		}

		if (vspeed_ < 0) && (!input.key_jump_held) {
			vspeed_ = max(vspeed, -3);
		}

		vspeed_ = clamp(vspeed_, -max_vspeed_, max_vspeed_);

		// 3. Vertical Collllision

		if place_meeting(x, y+vspeed_, obj_block) {
			speed_dir = sign(vspeed_);
			while(!place_meeting(x, y+speed_dir, obj_block)) {
				y+=speed_dir;
			}
			vspeed_ = 0;
		}

		y+= vspeed_;
	#endregion	
}

#endregion