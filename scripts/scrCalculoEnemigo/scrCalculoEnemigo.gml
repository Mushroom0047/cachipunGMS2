randomize();
spr = choose("Pi", "Pa", "Ti"); //generamos sprite enemigo



switch(spr)//comprobamos y cambiamos el sprite
{
	case "Pi":
	with(inst_71CF4DA2)
	{
		sprite_index =sprPiedra;
		image_xscale =  4;
		image_yscale = -4;
	}
	break;
	case "Pa":
	with(inst_71CF4DA2)
	{
		sprite_index =sprPapel;
		image_xscale =  4;
		image_yscale = -4;
	}
	break;		
	case "Ti":
	with(inst_71CF4DA2)
	{
		sprite_index =sprTijera;
		image_xscale =  4;
		image_yscale = -4;
	}
	break;
}
global.elecEnemigo = spr;//lo asignamos a una var global

scrCalcularGanador();