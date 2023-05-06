/// @description Insert description here
// You can write your code in this editor

draw_self()
var txt = "";
draw_set_color(c_blue)

if(pai.ordemAtaques[0] == ataqueAmarelo) txt = "1º"
if(pai.ordemAtaques[1] == ataqueAmarelo) txt = "2º"
if(pai.ordemAtaques[2] == ataqueAmarelo) txt = "3º"
	
draw_text(x + 80,y,txt)
