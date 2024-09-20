/// @description Camera follow and shake logic
// You can write your code in this editor

// Shake variables
if (!variable_global_exists("shakeMagnitude")) global.shakeMagnitude = 0;
if (!variable_global_exists("shakeDuration")) global.shakeDuration = 0;
if (!variable_global_exists("shakeDecay")) global.shakeDecay = 0.9;

// Update shake duration
if (global.shakeDuration > 0) {
    global.shakeDuration--;
    global.shakeMagnitude *= global.shakeDecay;
} else {
    global.shakeMagnitude = 0;
}

// Determine camera target position
if (global.camFollow != noone){
    xTo = global.camFollow.x + global.camFollowX;
    yTo = global.camFollow.y - global.camFollowY;
}

if (obj_player.walkSpeed == 5){
    
    global.camFollowSmoothnesX = 35
	global.camFollowSmoothnesy = 35
} else {
	global.camFollowSmoothnesX = 25
	global.camFollowSmoothnesY = 25
}
    x += (xTo - x) / global.camFollowSmoothnesX;
    y += (yTo - y) / global.camFollowSmoothnesY;
    camWidth = 683;
    camHeight = 384;

var camHalfWidth = camWidth * 0.5;
x = clamp(x, camHalfWidth, room_width - camHalfWidth);

// Apply shake
if (global.shakeDuration > 0) {
    x += random_range(-global.shakeMagnitude, global.shakeMagnitude);
    y += random_range(-global.shakeMagnitude, global.shakeMagnitude);
}

// Set camera position
camera_set_view_pos(view_camera[0], x - camHalfWidth, y - (camHeight * 0.5));
