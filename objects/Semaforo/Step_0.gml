/// @description Insert description here
// You can write your code in this editor
if(alarm[0] = -1 and alarm[1] = -1 and alarm[2] = -1 and semaforo = 1 and turnoFinalizado = false){
	//reiniciando o game
	//show_debug_message("Sem nenhuma solicitação no semáforo")
	cRobinho_Pierre.restart()
	cSilberschartz.restart()
	cTanenbaum.restart()
	turnoFinalizado = true
	emAtaque = false
	turnosDeAtaque--
}

