if (done == 1)
{
    vsp = vsp + grv;

    //Horizontal Collision
    if (place_meeting(x+hsp,y,Wall1))
    {
	    while (!place_meeting(x+sign(hsp),y,Wall1))
	    {
		    x = x + sign(hsp);
	    }
	    hsp = 0;
    }
    x = x + hsp;

    //Vertical Collision
    if (place_meeting(x,y+vsp,Wall1))
    {
		if (vsp > 0)
	    {
		    done = 1;
			image_index = 1;
	    }
	    while (!place_meeting(x,y+sign(vsp),Wall1))
	    {
		    y = y + sign(vsp);
	    }
	    vsp = 0;
		}
    y = y + vsp;
}