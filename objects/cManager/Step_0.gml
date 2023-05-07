objetos = [cRobinho_Pierre, cSilberschartz, cTanenbaum]
switch(combatPhase){
	case phase.init:
		for(var i = 0; i < instance_number(cSpawn);i++){
			var spawner = instance_find(cSpawn,i);
			var unit = instance_create_depth(spawner.x,spawner.y, 0, objetos[i]);
			ds_list_add(global.units,unit);
		}
		combatPhase = phase.startTurn;
	break;
	
	
	
	
	
	case phase.startTurn:
		if (unitsFinished >= ds_list_size(global.units)){
			for (var i = 0; i < ds_list_size(global.units); i++){
				with(global.units[|i])
					turnFinished = false;
			}
			unitsFinished = 0
		}
		
		for (var i = 0; i < ds_list_size(global.units); i++){
			var inst = global.units[|i];
			if (inst.turnFinished == false){
				global.selectedUnit = inst;
				break;
			}
		}
		combatPhase = phase.wait;
	break;
	
	
	
	
	
	case phase.wait:
		if(global.selectedUnit.turnFinished == true){
			unitsFinished ++;
			combatPhase = phase.process;
		}
	break;
	
	case phase.process:
		combatPhase = phase.checkFinish;
	break;
	
	case phase.checkFinish:
		if(keyboard_check_released(vk_space))
			combatPhase = phase.endTurn;
	break;
	
	case phase.endTurn:
		combatPhase = phase.startTurn;
		
	break;
	
	case phase.win:
	break;
	
	case phase.lose:
	break;
}