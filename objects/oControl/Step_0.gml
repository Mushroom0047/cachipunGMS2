/// @description step event bitch

//cambiar color aleatorio
r = irandom_range(0,200);
g = irandom_range(0,200);
b = irandom_range(0,200);


//seleccionar color cada 5seg 
if(alarm[0] == -1)alarm[0] = room_speed*irandom(6);

//calculo de victoria
/*
eleccion - gana - pierde

piedra - tijera - papel
papel - piedra - tijera
tijera - papel - piedra
*/

//calcular clicks
global.click = mouse_check_button_pressed(mb_left);


if(!global.play and !oMouse.coll and global.click)global.play = true;

if(global.play and room == 2)
{
		//reiniciar escala
	inst_7D4415AA.image_xscale = 1;
	inst_58DEEEBC.image_xscale = 1;
	inst_76D8FA4E.image_xscale = 1;
	inst_71CF4DA2.image_xscale = 1;

	inst_7D4415AA.image_yscale = 1;
	inst_58DEEEBC.image_yscale = 1;
	inst_76D8FA4E.image_yscale = 1;
	inst_71CF4DA2.image_yscale = 1;
	if(instance_exists(oResultado))instance_destroy(oResultado);
}


//calcular puntaje max
if(global.puntos > global.puntosMax)global.puntosMax = global.puntos;	

