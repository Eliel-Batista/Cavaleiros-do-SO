//Reinicializa os objetos quando finaliza o turno


if(alarm[0] = -1 and alarm[1] = -1 and alarm[2] = -1 and semaforo = 1 and turnoFinalizado = false){
	//reiniciando os objetos para o próximo turno
	cRobinho_Pierre.restart()
	cSilberschartz.restart()
	cTanenbaum.restart()
	turnoFinalizado = true
	emAtaque = false
	turnosDeAtaque--
}

