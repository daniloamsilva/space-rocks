/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2CD85A69
/// @DnDArgument : "expr" "room"
var l2CD85A69_0 = room;
switch(l2CD85A69_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 763106C7
	/// @DnDParent : 2CD85A69
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 19BAE8C3
		/// @DnDParent : 763106C7
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 2B2F8389
		/// @DnDParent : 763106C7
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "9d601fed-ee6e-4755-869d-b7f01f8e5f6e"
		var l2B2F8389_0 = sprite_get_width(spr_lives);
		var l2B2F8389_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l2B2F8389_2 = __dnd_lives; l2B2F8389_2 > 0; --l2B2F8389_2) {
			draw_sprite(spr_lives, 0, 20 + l2B2F8389_1, 40);
			l2B2F8389_1 += l2B2F8389_0;
		}
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 523CFC6B
		/// @DnDParent : 763106C7
		/// @DnDArgument : "font" "fnt_text"
		/// @DnDSaveInfo : "font" "9e8f36cc-37d3-4c61-8749-f421343a8bf5"
		draw_set_font(fnt_text);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 07F86853
	/// @DnDParent : 2CD85A69
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0972E224
		/// @DnDParent : 07F86853
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4A6E8940
		/// @DnDParent : 07F86853
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l4A6E8940_0=($FF00FFFF >> 24);
		draw_set_alpha(l4A6E8940_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1D4E2470
		/// @DnDParent : 07F86853
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 201BC486
		/// @DnDParent : 07F86853
		draw_set_colour($FFFFFFFF & $ffffff);
		var l201BC486_0=($FFFFFFFF >> 24);
		draw_set_alpha(l201BC486_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 356B5CA5
		/// @DnDParent : 07F86853
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win!""
		draw_text(250, 200, string("Score 1,000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 26910538
		/// @DnDParent : 07F86853
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with UP/RIGHT/LEFT keys""
		draw_text(250, 230, string("Move with UP/RIGHT/LEFT keys") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5F77FEA3
		/// @DnDParent : 07F86853
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot.""
		draw_text(250, 260, string("Press SPACE to shoot.") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 69520A35
		/// @DnDParent : 07F86853
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l69520A35_0=($FF00FFFF >> 24);
		draw_set_alpha(l69520A35_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1FF4BD9B
		/// @DnDParent : 07F86853
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START <<""
		draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 4C365FFD
		/// @DnDParent : 07F86853
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 075ACDC6
		/// @DnDParent : 07F86853
		draw_set_colour($FFFFFFFF & $ffffff);
		var l075ACDC6_0=($FFFFFFFF >> 24);
		draw_set_alpha(l075ACDC6_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 05A1844F
	/// @DnDParent : 2CD85A69
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6F8F697B
		/// @DnDParent : 05A1844F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 279B5FA8
		/// @DnDParent : 05A1844F
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l279B5FA8_0=($FF0000FF >> 24);
		draw_set_alpha(l279B5FA8_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 151ED416
		/// @DnDParent : 05A1844F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 150, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4C1842BB
		/// @DnDParent : 05A1844F
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4C1842BB_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4C1842BB_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 64BB1C16
		/// @DnDParent : 05A1844F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1E31C376
		/// @DnDParent : 05A1844F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7080CDA6
		/// @DnDParent : 05A1844F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 25F36F22
	/// @DnDParent : 2CD85A69
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 02B9909F
		/// @DnDParent : 25F36F22
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2E78E5A4
		/// @DnDParent : 25F36F22
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l2E78E5A4_0=($FF00FF00 >> 24);
		draw_set_alpha(l2E78E5A4_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4FBFC676
		/// @DnDParent : 25F36F22
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 150, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3CD9360A
		/// @DnDParent : 25F36F22
		draw_set_colour($FFFFFFFF & $ffffff);
		var l3CD9360A_0=($FFFFFFFF >> 24);
		draw_set_alpha(l3CD9360A_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1A41237B
		/// @DnDParent : 25F36F22
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5B0C2A69
		/// @DnDParent : 25F36F22
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 503B409C
		/// @DnDParent : 25F36F22
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}