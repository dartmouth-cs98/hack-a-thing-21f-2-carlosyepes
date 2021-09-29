/// @description Insert description here
// You can write your code in this editor

// (0,0) starts at top left

/* Globals (?)*/
OtherStats = 0
StepSpeed = 2 + OtherStats
ProjectileSpeed = 20

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

/* Spiky boi */
if mouse_check_button_pressed(mb_left) {
	SpikeInstance = instance_create_depth(mouse_x, mouse_y, depth, oSpike)
	
	SpikeInstance.speed = ProjectileSpeed
	SpikeInstance.direction = image_angle;
	SpikeInstance.image_angle = image_angle;
}