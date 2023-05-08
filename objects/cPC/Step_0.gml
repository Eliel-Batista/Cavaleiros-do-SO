if (cSilberschartz.ordemAtaques[2] != -1 and cTanenbaum.ordemAtaques[2] != -1 and cRobinho_Pierre.ordemAtaques[2] != -1 and!emAtaque){
	//Finalizou o turno de escolha de ataques
	emAtaque = true
	show_debug_message("AEEEEEEEEEEEEEE PORRAAAAAAAAAAAAAAAAAAAA")
	
	Semaforo.disparar_threads()
}

if (turnosDeAtaque == 0){
	show_debug_message("Seu Jogo tá todo bugado")
	restartDoGame()
}

if (vidaBoss <= 0){
	show_debug_message("Consertou o Bug")
	restartDoGame()
}

