/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36F2564A
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 67D7355E
	/// @DnDParent : 36F2564A
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "c772fee4-bae7-4ad7-9535-1ef7232d2b71"
	var l67D7355E_0 = msc_song;
	if (audio_is_playing(l67D7355E_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 08EB06E0
		/// @DnDParent : 67D7355E
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "c772fee4-bae7-4ad7-9535-1ef7232d2b71"
		audio_stop_sound(msc_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 23E4794E
	/// @DnDParent : 36F2564A
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "c772fee4-bae7-4ad7-9535-1ef7232d2b71"
	audio_play_sound(msc_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2B0A7807
	/// @DnDParent : 36F2564A
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 3D823E14
	/// @DnDParent : 36F2564A
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 3B3C8F8F
		/// @DnDInput : 2
		/// @DnDParent : 3D823E14
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CBD7ADD
		/// @DnDParent : 3D823E14
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 00664DF8
			/// @DnDParent : 3CBD7ADD
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5DF001E9
		/// @DnDParent : 3D823E14
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1D06B482
			/// @DnDParent : 5DF001E9
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 3E6182E8
		/// @DnDInput : 2
		/// @DnDParent : 3D823E14
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78DF142C
		/// @DnDParent : 3D823E14
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4B81B381
			/// @DnDParent : 78DF142C
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 632C1BB5
		/// @DnDParent : 3D823E14
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1FCD6713
			/// @DnDParent : 632C1BB5
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6BA98835
		/// @DnDParent : 3D823E14
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "4e5e979d-4e1a-4d49-a2f5-6c3e33b0fd42"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}