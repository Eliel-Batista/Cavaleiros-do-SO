ataque1 = instance_create_depth(x,y-310,depth, Ataque1, {pai: id}); // Cria a instância do ataque e vincula com o personagem
ataque2 = instance_create_depth(x,y-210,depth, Ataque2, {pai: id}); // Cria a instância do ataque e vincula com o personagem
ataque3 = instance_create_depth(x,y-110,depth, Ataque3, {pai: id}); // Cria a instância do ataque e vincula com o personagem

ordemAtaques = [-1,-1,-1]; //Inicia o vetor dos ataques do player
ataqueAtual = 0;

//Reinicia os ataques 
restart = function(){
	ordemAtaques = [-1,-1,-1];
	ataqueAtual = 0;
	ataque1.pressionado = false
	ataque2.pressionado = false
	ataque3.pressionado = false
}