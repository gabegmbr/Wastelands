/// @description Insert description here
// You can write your code in this editor

//Condição que controla a loja, o nível, o xp e o máximo de xp para passar para o próximo nível
if(xp >= maxXP){ //Se o número de xp for maior ou igual a quantidade de xp necessária pra passar de nível
	loja = true; //A loja abri
	lvl += 1; //O nível aumenta + 1
	xp = 0; //o xp reinicia
	maxXP = (30 + (lvl*300)- 20) //É recalculado o número de xp necessário pra passar de nível
}


if hp<=0{ //Se a vida for menor ou igual a 0 game over
game_over = true;
hp = 0;
}

