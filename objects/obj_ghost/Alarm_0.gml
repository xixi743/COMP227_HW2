/// @description Sets to "dash" every 3 seconds

// wait for some seconds
// change to dash state
state = "dash";
alarm[0] = 60*seconds_to_wait;
show_debug_message("alarm 0 went off");