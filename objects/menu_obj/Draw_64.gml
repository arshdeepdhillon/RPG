/// @description Draw menu

draw_set_font(fMenu);

draw_set_halign(fa_right); //align text to the right side
draw_set_valign(fa_bottom);//align text to the bottom

for(var i = 0; i < menu_items; i++)
{
	var offSet = 2;
	var menuTxt = menu[i];
	if(menu_cursor == i)
	{
		menuTxt = string_insert("> ",menuTxt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_item_height * (i * 1.5));
	
	draw_set_color(c_black);
	draw_text(xx - offSet, yy, menuTxt);
	draw_text(xx + offSet , yy, menuTxt);
	draw_text(xx, yy - offSet , menuTxt);
	draw_text(xx, yy + offSet , menuTxt);
	
	draw_set_color(col);
	draw_text(xx,yy, menuTxt);
}
