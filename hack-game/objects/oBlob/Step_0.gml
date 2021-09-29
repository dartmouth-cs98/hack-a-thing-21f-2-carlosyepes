/// @description Insert description here
// You can write your code in this editor


/* direction facing */

image_angle = direction

/* Bouncing */

if y < 0 + (sprite_height/2) or y > room_height - (sprite_height/2) {
	vspeed = vspeed * -1
}

if x < 0 + (sprite_width/2) or x > room_width - (sprite_width/2) {
	hspeed = hspeed * -1
}

/* Damage */

IncomingProjectile = instance_place(x, y, oSpike)
if instance_exists(IncomingProjectile) {

	with IncomingProjectile {
		instance_destroy()
	}
	
	image_xscale = image_xscale - .2
	image_yscale = image_xscale
	if image_xscale <= 0 {
		instance_destroy()
	}
}