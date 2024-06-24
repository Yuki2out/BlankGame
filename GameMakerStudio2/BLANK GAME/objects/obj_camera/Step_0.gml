/// @description Insert description here
// You can write your code in this editor

if (global.camFollow != noone){
	xTo = global.camFollow.x + global.camFollowX
	yTo = global.camFollow.y - global.camFollowY
}

x += (xTo - x)/18
y += (yTo - y)/18

var camHalfWidth = camWidth * 0.5;
x = clamp(x, camHalfWidth, room_width - camHalfWidth);
camera_set_view_pos(view_camera[0], x - camHalfWidth, y- (camHeight*0.5));
