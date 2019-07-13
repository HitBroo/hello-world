	vsp = vsp + grv;

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
	sprite_index = EnemesA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = Enemes;
	}
	else
	{
		sprite_index = EnemesR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);