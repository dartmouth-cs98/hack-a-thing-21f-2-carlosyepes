/// @description Insert description here
// You can write your code in this editor

// (0,0) starts at top left

/* Globals (?)*/
OtherStats = 0
StepSpeed = 2 + OtherStats


/* Movement */
if keyboard_check(ord("W")) {
	y = y - StepSpeed
}
if keyboard_check(ord("S")) {
	y = y + StepSpeed
}
if keyboard_check(ord("A")) {
	x = x - StepSpeed
}
if keyboard_check(ord("D")) {
	x = x + StepSpeed
}


/* Direction */
image_angle = point_direction(x,y, mouse_x, mouse_y)