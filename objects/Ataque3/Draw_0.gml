/// @description Insert description here
// You can write your code in this editor

draw_self()
var txt = "";


if(pai.ordemAtaques[0] == ataqueVerde) txt = "1º"
if(pai.ordemAtaques[1] == ataqueVerde) txt = "2º"
if(pai.ordemAtaques[2] == ataqueVerde) txt = "3º"

draw_set_color(c_blue)
if(instance_exists(cAtacando) and txt= "1º") if(cAtacando.ataqueIndice = 0) draw_set_color(c_red);
if(instance_exists(cAtacando) and txt= "2º") if(cAtacando.ataqueIndice = 1) draw_set_color(c_red);
if(instance_exists(cAtacando) and txt= "3º") if(cAtacando.ataqueIndice = 2) draw_set_color(c_red);
	
draw_text(x + 80,y,txt)