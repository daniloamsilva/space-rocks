/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 17421A10
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spr_asteroid_small"
/// @DnDArgument : "option_1" "spr_asteroid_med"
/// @DnDArgument : "option_2" "spr_asteroid_huge"
sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 56F37F5E
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 46978302
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
image_angle = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3B594057
/// @DnDArgument : "speed" "1"
speed = 1;