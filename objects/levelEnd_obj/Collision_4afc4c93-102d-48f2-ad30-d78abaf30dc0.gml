/// @desc Move to next room

with(player_obj)
{
	if(hasControl)
	{
		hasControl = false;
		//SlideTransition(TRANS_MODE.NEXT);
		SlideTransition(TRANS_MODE.GOTO, other.target); //other: one who called it
	}
}
