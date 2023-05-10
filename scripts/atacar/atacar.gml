
/*É a função que contabiliza o dano total dado no Boss (Essa função está horrível porque 
gastamos a maior parte do tempo aplicando os conceitos das threads e semaforo)*/
function Dano(a) {
	dano = 0
	bonificacao = 0
	ataqueVermelhoEscolhido = 0
	ataqueVerdeEscolhido = 0
	ataqueAmareloEscolhido = 0
	
	AtaqueEscolhido1 = cSilberschartz.ordemAtaques[a]
	AtaqueEscolhido2 = cTanenbaum.ordemAtaques[a]
	AtaqueEscolhido3 = cRobinho_Pierre.ordemAtaques[a]
		
	if(AtaqueEscolhido1 == ataqueAmarelo){
		dano += 5
		ataqueAmareloEscolhido ++
	}

	if(AtaqueEscolhido1 == ataqueVerde){
		dano += 5
		ataqueVerdeEscolhido ++
	}

	if(AtaqueEscolhido1 == ataqueVermelho){
		dano += 5
		ataqueVermelhoEscolhido ++
	}

	if(AtaqueEscolhido2 == ataqueAmarelo){
		dano += 5
		ataqueAmareloEscolhido ++
	}

	if(AtaqueEscolhido2 == ataqueVerde){
		dano += 5
		ataqueVerdeEscolhido ++
	}

	if(AtaqueEscolhido2 == ataqueVermelho){
		dano += 5
		ataqueVermelhoEscolhido ++
	}

	if(AtaqueEscolhido3 == ataqueAmarelo){
		dano += 5
		ataqueAmareloEscolhido ++
	}

	if(AtaqueEscolhido3 == ataqueVerde){
		dano += 5
		ataqueVerdeEscolhido ++
	}

	if(AtaqueEscolhido3 == ataqueVermelho){
		dano += 5
		ataqueVermelhoEscolhido ++
	}
//Define a bonificação aplicada com base na quantidade de ataques que coincidem
	if(ataqueVerdeEscolhido == 2 or ataqueAmareloEscolhido == 2 or ataqueVermelhoEscolhido == 2){
		bonificacao = 30 
	}

	if(ataqueVerdeEscolhido == 3 or ataqueAmareloEscolhido == 3 or ataqueVermelhoEscolhido == 3){
		bonificacao = 80 
	}	

	return dano + bonificacao // Retorna a quantidade de Dano
		
}

//Função que aplica dano no Boss
function atacar(a){	
	vidaBoss -= Dano(a)
}