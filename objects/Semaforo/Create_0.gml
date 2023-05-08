globalvar semaforo;
semaforo = 1;


// Função de ataque
disparar_threads = function(){
	alarm[0] = irandom_range(1,10) //5
	alarm[1] = irandom_range(1,10) //10
	alarm[2] = irandom_range(1,10) //3
	turnoFinalizado = false
}


// Função de espera
function esperar(idThread) {
	if (semaforo == 0){ //esse é o esper
		alarm[idThread] = 1
		return true
	}
	return false
		
}


// Função de liberação
liberar = function() {
    semaforo = 1;
	
}







