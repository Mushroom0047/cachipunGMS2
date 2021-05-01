/// @description Inserte aquí la descripción

if(room == 2)
{
	draw_set_color(c_black);
	draw_set_font(font0);
	draw_text(5, 440, string(global.puntos));
}

if(room == 1)
{
	draw_set_color(c_black);
	draw_set_font(font01);
	draw_set_halign(fa_left);
	draw_text(5, 440, "Puntaje Maximo: ");
	draw_text(5+string_width("Puntaje Maximo: "), 440, string(global.puntosMax));
}