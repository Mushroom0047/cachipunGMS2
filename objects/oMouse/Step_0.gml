/// @description Inserte aquí la descripción
//seguir al mouse
x = mouse_x;
y = mouse_y;

coll = place_meeting(x,y,oJugador);
//comprobar que boton presionamos

//boton inicio
if(place_meeting(x, y, inst_609C7703) and instance_exists(inst_609C7703))
{
	inst_609C7703.image_xscale = 1.5
	inst_609C7703.image_yscale = 1.5;
	 if(global.click)
	 {
		room_goto_next();
	 }
}else if(instance_exists(inst_609C7703))
{
	inst_609C7703.image_xscale = 1;
	inst_609C7703.image_yscale = 1;	
}

if(global.play)
{

	//boton piedra
	if(place_meeting(x, y, inst_76D8FA4E) and global.click)
	{
		global.eleccion = "piedra";
		global.play = false;
		inst_76D8FA4E.image_xscale = 4
		inst_76D8FA4E.image_yscale = 4;
		scrCalculoEnemigo();
	}

	//boton papel
	if(place_meeting(x, y, inst_58DEEEBC) and global.click)
	{
		global.eleccion = "papel";
		global.play = false;	
		inst_58DEEEBC.image_xscale = 4
		inst_58DEEEBC.image_yscale = 4;
		scrCalculoEnemigo();	
	}

	//boton tijera
	if(place_meeting(x, y, inst_7D4415AA) and global.click)
	{
		global.eleccion = "tijera";
		global.play = false;	
		inst_7D4415AA.image_xscale = 4
		inst_7D4415AA.image_yscale = 4;
		scrCalculoEnemigo();
	}
}
//boton reinicio
if(place_meeting(x, y, inst_359BE8E) and global.click)
{
	global.play = true;
	room_restart();
}

//boton atras
if(place_meeting(x, y, inst_37975CCD) and global.click)
{
	room_goto_previous();
	global.play = true;
}

//boton publicidad
if(place_meeting(x, y, inst_4DC6968) and global.click)
{
	url_open( "https://www.instagram.com/hv.game.studio/?hl=es-la");
}