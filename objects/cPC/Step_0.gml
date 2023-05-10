if (cSilberschartz.ordemAtaques[2] != -1 and cTanenbaum.ordemAtaques[2] != -1 and cRobinho_Pierre.ordemAtaques[2] != -1 and!emAtaque){ // Quando o último item do vetor estiver preenchido, ou seja, diferente de um, o programa iniciará os ataques através das threads
	//Finalizou o turno de escolha de ataques
	
	emAtaque = true // Enquanto essa variável estiver sendo verdadeira, o jogador não poderá efetuar nenhuma ação
	
	Semaforo.disparar_threads()
}

if (turnosDeAtaque == 0){ // Condição de derrota
	show_message("Seu Jogo tá todo bugado, YOU LOSE")
	restartDoGame()
}

if (vidaBoss <= 0){ // Condição de vitória
	show_message("Consertou o Bug, Você ganhou")
	restartDoGame()
}

