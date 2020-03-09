/// @description Insert description here
// You can write your code in this editor

var lay_id = layer_get_id("moving_tiles");
var map_id = layer_tilemap_get_id(lay_id);

hspeed = hspd;
tilemap_x(map_id, obj_movingBlock.x -225);