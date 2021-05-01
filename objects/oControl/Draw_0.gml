/// @description Inserte aquí la descripción
// dibujar cuadrado de color
draw_set_colour(color);
draw_rectangle(0, 0, room_width, room_height, false);

//dibujar titulo solo en el inicio
if(room_get_name(room) == "rmInicio")
{
	draw_self();
}