
talk = true
global.dialog = true
draw_set_font(Font);
draw_set_colour (c_white);
//How many messages are in the array 
message_end = array_length_1d(messages);

if (message_end > 0)
{
	//Variables
	var charWidth = 7;
	var lineEnd = 35;
	var line = 0;
	var space = 0;
	var i = 1;
	var delay = 3;
	
	
	//Next Message
	if (keyboard_check_pressed(ord("S")))
	{
		//If we still have some more messages, go to the next one 
		if (message_current <message_end-1)
		{
	
			message_current++;
			cutoff = 0;
			//If we dont, we're done
		}
		else
		{
			done = true;
		}
	
		
	
	
	
	//Typewriter
	if (cutoff < string_length (messages[message_current]))
	{
		if (timer >= delay)
		{
			cutoff++;
			timer = 0;
		}
			else timer++;
		}
	}
	
	
	//Draw Text
	while (i <= string_length (messages[message_current]) && i <= cutoff)
	{
		//go to next line
		
		var length = 0;
		while (string_char_at (messages[message_current], i) != " " && i <= string_length (messages[message_current]))
		{
			i++;
			length++;
		}
		if (space+length > lineEnd)
		{
			space = 0;
			line++;
		}
		i -= length;
		draw_text (tX+ (space*charWidth), tY+(13*line), string_char_at (messages[message_current], i));
		space++;
		i++;
	}
}


	