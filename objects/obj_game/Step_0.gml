/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45DBF329
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 11723122
	/// @DnDParent : 45DBF329
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1E27BA33
		/// @DnDParent : 11723122
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "c44abaf0-4937-4789-933e-d65842700991"
		audio_play_sound(snd_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 43FA21DD
		/// @DnDParent : 11723122
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "8e394462-f4c8-4b68-b19a-b6708e370fa8"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 77E00EB3
	/// @DnDParent : 45DBF329
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 51B908BF
		/// @DnDParent : 77E00EB3
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "99318ced-a6da-481e-97c9-eee39102b28c"
		room_goto(rm_gameover);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6335019D
		/// @DnDParent : 77E00EB3
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "fa34719c-c7d2-4738-8115-9a10b1a5f697"
		audio_play_sound(snd_lose, 0, 0);
	}
}