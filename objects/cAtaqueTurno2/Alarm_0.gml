ataqueVerdeEscolhido = 0
ataqueVermelhoEscolhido = 0
ataqueAmareloEscolhido = 0

bonificacao = 0

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

if(ataqueVerdeEscolhido == 2 or ataqueAmareloEscolhido == 2 or ataqueVermelhoEscolhido == 2){
	bonificacao = 20 
}

if(ataqueVerdeEscolhido == 3 or ataqueAmareloEscolhido == 3 or ataqueVermelhoEscolhido == 3){
	bonificacao = 40 
}

vidaBoss -= (dano + bonificacao)

//dps de dar o dano 
instance_create_depth(0,0,0, cAtaqueTurno3)
instance_destroy()
