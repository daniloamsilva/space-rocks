/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0A697469
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "7ca71fa7-ca91-4db5-bdf5-c2bfb3670c61"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 0807D53B
/// @DnDApplyTo : 9d46c6d7-f192-4199-9166-933791903281
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5177C38B
	/// @DnDParent : 0807D53B
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 79B9221E
/// @DnDApplyTo : 9d46c6d7-f192-4199-9166-933791903281
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 3FBB94C4
	/// @DnDParent : 79B9221E
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 26ECBC62
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 44D89833
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72F5C586
	/// @DnDParent : 44D89833
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "6eae4ddb-6f60-4136-a6c2-9998e2db9c0e"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}