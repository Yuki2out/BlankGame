/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && (dialog_page <= array_length(dialog))){
	talk = true
	global.dialog = true
	global.camFollow = obj_merenge
	global.camFollowY = 40
	if(dialog_page != array_length(dialog) - 1)
	{
		var audio_bop = choose(P_bop1, P_bop2, P_bop3)
		//var pich = random_range(-1,2)
		dialog_page++
		audio_play_sound(audio_bop, 10, false)
	}else 
	{
		
		talk = false
		global.dialog = false
		dialog_page = -1
		global.camFollow = obj_player
		global.camFollowY = 60
	}
	
}


if (talk){

	
	var cam = view_camera[0];

	// Retrieve the camera's view coordinates
	var view_x = view_get_xport(cam)
	var view_y = view_get_yport(cam);
	

	draw_set_font(Font)
	// Draw the dialog box sprite at a position relative to the camera's view
	draw_sprite(s_dialog_box, 0, view_x + 200, view_y + 200);

	// Draw the text at a position relative to the camera's view
	// Adjust the offsets as needed
	if (sprite_exists(s_dialog_box))
	{
		//s_dialog_box.x + 670
		//-108
		//var text = ""
		//var dialogText[];

		//dialogText = string_split(dialog[dialog_page],"")	
		
		//for (var i = 0 ; i > array_length(dialogText); i += 1)
		//{
		//	if(i % 23 == 0){
		//		text += string_join("","\n")
		//	}
		//	text += string_join("",text,dialogText[i])
			
		//	draw_text( view_x + 530 ,view_y + 600  , text);
			
		//}
		
		draw_text( view_x + 530 ,view_y + 600  , dialog[dialog_page]);
		global.lightsEffect = true;
	}
	
	
	
}