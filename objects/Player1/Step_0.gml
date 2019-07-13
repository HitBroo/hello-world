//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space)

//Calculate Movement	
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

if (place_meeting(x,y+1,Wall1)) && (key_jump)
{
	vsp = -7
}

//Horizontal Collision
if (place_meeting(x+hsp,y,Wall1))
{
	while (!place_meeting(x+sign(hsp),y,Wall1))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,Wall1))
{
	while (!place_meeting(x,y+sign(vsp),Wall1))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,Wall1))
{
	sprite_index = PlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = Player;
	}
	else
	{
		sprite_index = PlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);