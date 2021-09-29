/// @description Insert description here
// You can write your code in this editor

speed = 4
direction = random(360)

if !audio_is_playing(global.SoundPlaying) {
	global.SoundPlaying = audio_play_sound(mus_Goon, 0, true)
}