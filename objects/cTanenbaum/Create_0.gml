/// @description Insert description here
// You can write your code in this editor

ataque1 = instance_create_depth(x,y-250,depth, Ataque1, {pai: id});
ataque2 = instance_create_depth(x,y-150,depth, Ataque2, {pai: id});
ataque3 = instance_create_depth(x,y-50,depth, Ataque3, {pai: id});

ordemAtaques = [-1,-1,-1];
ataqueAtual = 0;