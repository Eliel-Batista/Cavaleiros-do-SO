ordemAtaques = [-1,-1,-1];
ataqueAtual = 0;

if (cSilberschartz.ordemAtaques[2] != -1 and cTanenbaum.ordemAtaques[2] != -1 and cRobinho_Pierre.ordemAtaques[2] != -1 and!emAtaque){
	//Finalizou o turno de escolha de ataques
	emAtaque = true
	show_debug_message("AEEEEEEEEEEEEEE PORRAAAAAAAAAAAAAAAAAAAA")
	instance_create_depth(0,0,0,cAtaqueTurno1)
	
}

if (turnosDeAtaque == 0){
	show_debug_message("Seu Jogo tá todo bugado")
	restartDoGame()
}

