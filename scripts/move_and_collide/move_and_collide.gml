///@arg hspeed_
///@arg vspeed_

var hspeed_ = argument0;
var vspeed_ = argument1;

if !place_meeting(x+hspeed_, y, obj_block) {
	x += hspeed_;
}

if !place_meeting(x, y+vspeed_, obj_block) {
	y += vspeed_;
}