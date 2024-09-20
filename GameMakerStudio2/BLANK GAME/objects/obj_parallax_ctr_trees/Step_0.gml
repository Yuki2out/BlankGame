/// @description Insert description here
// You can write your code in this editor

var farAway = layer_get_id("trees_far")
var distant = layer_get_id("trees_near")


layer_x(farAway, lerp(0,camera_get_view_x(view_camera[0]), 0.2))
layer_x(distant, lerp(0,camera_get_view_x(view_camera[0]), 0.1))
