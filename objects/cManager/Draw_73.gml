draw_text(100,40,"unidade: " + string(global.selectedUnit));

for (var i = 0; i < ds_list_size(global.units); i++){
	draw_text(0,16+(i*16),string(global.units[|i]));
}

for (var i = 0; i < ds_list_size(global.units); i++){
	draw_text(0,16+(i*16),string(global.units[|i]));
	draw_text(global.units[|i].x,global.units[|i].y-10,string(global.units[|i]) + string(global.units[|i].turnFinished));
}

