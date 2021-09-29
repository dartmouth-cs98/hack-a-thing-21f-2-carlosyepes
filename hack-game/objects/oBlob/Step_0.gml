/// @description Insert description here
// You can write your code in this editor

function print(variables) {

var output_string = "";

for (var i = 0; i < argument_count; i++) {
    output_string += string(argument[i]) + " ";
}

show_debug_message(output_string);
}

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
		if global.KilledEnemies >= global.BlobsKilledBeforeBoss {
			instance_create_depth(random_range(global.SpawnOffset, room_width - global.SpawnOffset), random_range(global.SpawnOffset, room_height - global.SpawnOffset), depth, oGoon)
			global.KilledEnemies = 0
		} else {
			instance_create_depth(random_range(global.SpawnOffset, room_width - global.SpawnOffset),random_range(global.SpawnOffset, room_height - global.SpawnOffset),depth, oBlob)
			//instance_create_depth(random(room_width),random(room_height),depth, oBlob)
			instance_destroy()
			global.KilledEnemies = global.KilledEnemies + 1
			print(global.KilledEnemies)
		}
	}
}