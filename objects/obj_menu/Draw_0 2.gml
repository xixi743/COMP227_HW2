draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(x,y-150, "Grumpy Ghost")

var i = 0;
repeat (buttons) {
	
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	
	if (menu_index == i) draw_set_color(c_maroon);
	
	draw_text(x, y + button_h * i, button[i]);
	i++;
}
