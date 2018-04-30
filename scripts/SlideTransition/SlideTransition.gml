/// @desc SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto
/// @arg Target sets target room when using the goto mode

with(transition_obj)
{
	mode = argument[0]; //first argument (same as argument0)
	if(argument_count > 1)
	{
		target = argument[1];
	}
}

