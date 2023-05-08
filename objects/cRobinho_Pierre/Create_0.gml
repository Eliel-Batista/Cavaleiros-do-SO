ataque1 = instance_create_depth(x,y-310,depth, Ataque1, {pai: id});
ataque2 = instance_create_depth(x,y-210,depth, Ataque2, {pai: id});
ataque3 = instance_create_depth(x,y-110,depth, Ataque3, {pai: id});

ordemAtaques = [-1,-1,-1];
ataqueAtual = 0;

restart = function(){
	ordemAtaques = [-1,-1,-1];
	ataqueAtual = 0;
	ataque1.pressionado = false
	ataque2.pressionado = false
	ataque3.pressionado = false
}