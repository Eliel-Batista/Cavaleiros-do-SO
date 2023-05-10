//Esse objeto é o responsável pelas declarações iniciais do game e gerenciar o jogo

globalvar turnosDeAtaque, turnoFinalizado, emAtaque; // Diz que é uma variável global
turnosDeAtaque = 10 // Número máximo de turnos
emAtaque = false // Define se está executando os ataques
turnoFinalizado = true // Se o turno foi finalizado ou não

restartDoGame = function(){ // Reinicia as variáveis que determinam o fim do jogo para recomeçar o game
	turnosDeAtaque = 10
	vidaBoss = 1000
	
}