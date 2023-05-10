/*
Esse é o objeto mais complexo do código, tivemos que adptar o GameMaker para que pudessemos aplicar os conceitos
de threads, já que essa engine é EXTREMAMENTE linear e não tem bibliotecas que permitam trabalhar com as 
threads diretamente, fazendo com que nós buscassemos maneiras criativas para resolução desse impasse.
*/


globalvar semaforo;
semaforo = 1; 


/*
Dentro desse objeto existem 3 alarmes que são os gatilhos threads, o GameMaker funciona através de steps (que seriam como frames),
então quando atinge um determinado frame ele executa o alarme, que adaptamos para serem como os processos, ou seja, as 
threads.
*/

/*
Essa função determina a ordem de disparo dos processo (Fizemos isso para simular como 
funciona numa situação real, onde não tem controle da ordem em que os processo chega,)
*/
disparar_threads = function(){ 
	alarm[0] = irandom_range(1,10) // Diz em quantos steps será disparado a thread, por exemplo se o valor for cinco, ele será disparado depois de 5 steps
	alarm[1] = irandom_range(1,10)
	alarm[2] = irandom_range(1,10) 
	turnoFinalizado = false
}


/*
Conforme mencionado anteriormente o GameMaker funciona com Steps, então essa função vai receber o Id da
Thread e só irá disparar quando o semáforo estiver livre
*/
/*
- Vamos supor que na função "dispara_threads" tenha gerado respectivamente os valores de 5, 3 e 8.
- A primeira a ser executada thread será a segunda thread, já que 3 é o menor valor.
- Para visualizar melhor, foi definido que demora 60 steps para realizar um processamento.
- Começando o processamento no terceiro Step, a segunda thread terminará o processamento quando o jogo atingir o Step 63.
- Nisso que acabar coincidindo com o Step 5 (que é quando chega dispara a thread 1), a thread 1 verificará se o semáforo está livre, como não está, será incrementado mais um Step nele
- Funciona na mesma lógica para a thread 3.
- Quando o jogo atingir o Step 63, que é a etapa de finalização do processamento, o semáforo será liberado.
- Com o semáforo liberado, a thread 1 é disparada.
- Novamente processa em 60 Steps, então é liberado no Step 124, então no Step 125 dispara a thread 3
*/
function esperar(idThread) {
	if (semaforo == 0){ 
		alarm[idThread] = 1
		return true
	}
	return false
		
}


// Função de liberação
liberar = function() {
    semaforo = 1;
	
}







