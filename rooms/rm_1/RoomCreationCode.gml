obj_player.has_control = true;
obj_ghost.state = "wait";
obj_ghost.alarm[0] = obj_ghost.framerate*obj_ghost.seconds_to_wait;