/// @description Insert description here
// You can write your code in this editor

draw_self()
var txt = "";

if(pai.ordemAtaques[0] == ataqueAmarelo) txt = "1º"
if(pai.ordemAtaques[1] == ataqueAmarelo) txt = "2º"
if(pai.ordemAtaques[2] == ataqueAmarelo) txt = "3º"

draw_set_color(c_blue)
if(instance_exists(cAtaqueTurno1) and txt= "1º") draw_set_color(c_red);
if(instance_exists(cAtaqueTurno2) and txt= "2º") draw_set_color(c_red);
if(instance_exists(cAtaqueTurno3) and txt= "3º") draw_set_color(c_red);

	

draw_text(x + 80,y,txt)