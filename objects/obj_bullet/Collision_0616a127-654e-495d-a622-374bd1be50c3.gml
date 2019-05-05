/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6D8B73E2
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "4dd68c68-b50d-4b75-a04b-14fb1cab6a2e"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 79C62B27
/// @DnDApplyTo : 9d46c6d7-f192-4199-9166-933791903281
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3081842D
	/// @DnDParent : 79C62B27
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5FD862B3
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 1C8D5AE1
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7F64F678
	/// @DnDParent : 1C8D5AE1
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B2C8278
	/// @DnDParent : 1C8D5AE1
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_huge"
	if(sprite_index == spr_asteroid_huge)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 10560595
		/// @DnDParent : 7B2C8278
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 219094FA
			/// @DnDParent : 10560595
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "4e5e979d-4e1a-4d49-a2f5-6c3e33b0fd42"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B47E611
			/// @DnDParent : 10560595
			/// @DnDArgument : "expr" "spr_asteroid_med"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_med;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BADBA34
	/// @DnDParent : 1C8D5AE1
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_med"
	if(sprite_index == spr_asteroid_med)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 5BED764D
		/// @DnDParent : 2BADBA34
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0DFD81F0
			/// @DnDParent : 5BED764D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "4e5e979d-4e1a-4d49-a2f5-6c3e33b0fd42"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45983D67
			/// @DnDParent : 5BED764D
			/// @DnDArgument : "expr" "spr_asteroid_small"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 321CC470
	/// @DnDParent : 1C8D5AE1
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2B78C641
		/// @DnDParent : 321CC470
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "6eae4ddb-6f60-4136-a6c2-9998e2db9c0e"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}