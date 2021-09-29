/// @description Insert description here
// You can write your code in this editor

/* Bouncing */

if y < 0 + (sprite_height/2) or y > room_height - (sprite_height/2) {
	vspeed = vspeed * -1
}

if x < 0 + (sprite_width/2) or x > room_width - (sprite_width/2) {
	hspeed = hspeed * -1
}


/* Projectiles */
IncomingProjectile = instance_place(x, y, oSpike)
if instance_exists(IncomingProjectile) {

	with IncomingProjectile {
		instance_destroy()
	}
	speed = speed + 1
	image_xscale = image_xscale - .1
	image_yscale = image_xscale
	if image_xscale <= 0 {
		instance_create_depth(random_range(global.SpawnOffset, room_width - global.SpawnOffset),random_range(global.SpawnOffset, room_height - global.SpawnOffset),depth, oBlob)
		instance_destroy()
		audio_stop_sound(global.SoundPlaying)
	}
	
}