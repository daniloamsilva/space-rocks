/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 056690F7
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 25466916
	/// @DnDParent : 056690F7
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7C707D69
/// @DnDArgument : "steps" "room_speed*4"
alarm_set(0, room_speed*4);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 705B105E
/// @DnDInput : 2
/// @DnDArgument : "var" "choise"
/// @DnDArgument : "option_1" "1"
choise = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DD97069
/// @DnDArgument : "var" "choise"
if(choise == 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 44639E25
	/// @DnDInput : 2
	/// @DnDParent : 1DD97069
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_width"
	var xx = choose(room_width, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 549C2A5F
	/// @DnDParent : 1DD97069
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var yy = floor(random_range(0, room_height + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 49F35856
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 32931BDD
	/// @DnDInput : 2
	/// @DnDParent : 49F35856
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_height"
	var yy = choose(room_height, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3399BFFE
	/// @DnDParent : 49F35856
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width"
	var xx = floor(random_range(0, room_width + 1));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 21A6E11E
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_asteroid"
/// @DnDSaveInfo : "objectid" "4e5e979d-4e1a-4d49-a2f5-6c3e33b0fd42"
instance_create_layer(xx, yy, "Instances", obj_asteroid);