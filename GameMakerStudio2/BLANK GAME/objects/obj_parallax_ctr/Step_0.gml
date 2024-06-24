/// @description Insert description here
// You can write your code in this editor

var farAway = layer_get_id(farAway_var)
var distant = layer_get_id(distant_var)
var near = layer_get_id(near_var)

layer_x(farAway, lerp(0,camera_get_view_x(view_camera[0]), 0.2))
layer_x(distant, lerp(0,camera_get_view_x(view_camera[0]), 0.05))
layer_x(near, lerp(0,camera_get_view_x(view_camera[0]), 0.02))