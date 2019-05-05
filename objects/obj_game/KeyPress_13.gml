/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5AFE12FB
/// @DnDArgument : "expr" "room"
var l5AFE12FB_0 = room;
switch(l5AFE12FB_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0969014D
	/// @DnDParent : 5AFE12FB
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 555A6C42
		/// @DnDParent : 0969014D
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "89121235-6a02-4e75-9e76-2f1ac00fc621"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6A23828F
	/// @DnDParent : 5AFE12FB
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 2C4EA35C
		/// @DnDParent : 6A23828F
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5BE1534B
	/// @DnDParent : 5AFE12FB
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 1FBEA0ED
		/// @DnDParent : 5BE1534B
		game_restart();
		break;
}