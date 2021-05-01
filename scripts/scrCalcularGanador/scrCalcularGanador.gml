//calcular ganador
switch(global.eleccion)
{
	case "piedra":
		if(global.elecEnemigo == "Ti")global.resultado = true;
		if(global.elecEnemigo == "Pa")global.resultado = false;
		if(global.elecEnemigo == "Pi")global.resultado = -1;
	break;
	case "papel":
		if(global.elecEnemigo == "Pi")global.resultado = true;
		if(global.elecEnemigo == "Ti")global.resultado = false;
		if(global.elecEnemigo == "Pa")global.resultado = -1;
	break;	
	case "tijera":
		if(global.elecEnemigo == "Pa")global.resultado = true;
		if(global.elecEnemigo == "Pi")global.resultado = false;
		if(global.elecEnemigo == "Ti")global.resultado = -1;
	break;
}


if(global.resultado)
{
	i = instance_create_depth(320, 240, -1000, oResultado);
	i.sprite_index = sprGanas;
	global.puntos += 1;
	audio_play_sound(snGanas, 10, false);
	repeat(3)
	{
		col = make_color_rgb(irandom(255),irandom(255),irandom(255))
		effect_create_above(ef_firework,irandom(room_width), irandom(room_height), 2, col)
	}
	
}else if(global.resultado == -1){
	i = instance_create_depth(320, 240, -1000, oResultado);
	i.sprite_index = sprEmpate;
		audio_play_sound(snEmpate, 10, false);
}else{
	i = instance_create_depth(320, 240, -1000, oResultado);
	i.sprite_index = sprPierdes;
	global.puntos = 0;
		audio_play_sound(snPierdes, 10, false);
}

