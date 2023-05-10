/// @description Thread 2

//Essa é a implementação da função esperar
if(esperar(1))
	exit /* Quando o semáforo estiver com o valor 0, vai entrar no loop e executar o "exit", que fará
	sair do alarme */
	
// quando for 1, executa essas linha debaixo, muda novamente o semáforo para 0 e entra na zona crítica
semaforo = 0
instance_create_depth(0,0,0,cAtacando,{ataqueIndice: 1}) /*Pode-se considerar essa como a zona crítica, 
pois é ela que permite o ataque ser executado*/