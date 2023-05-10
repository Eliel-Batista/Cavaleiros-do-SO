// DETALHE IMPORTANTE: O GML admite tanto '=' quanto '==' nas condicionais

draw_self() //Desenha a si mesmo na tela
var txt = ""; // Inicia a variável onde será armazenada a string de numeração


if(pai.ordemAtaques[0] == ataqueVermelho) txt = "1º" // Armazena o valor na ordem que foi selecionado
if(pai.ordemAtaques[1] == ataqueVermelho) txt = "2º" // Armazena o valor na ordem que foi selecionado
if(pai.ordemAtaques[2] == ataqueVermelho) txt = "3º" // Armazena o valor na ordem que foi selecionado

draw_set_color(c_white)
if(instance_exists(cAtacando) and txt= "1º") if(cAtacando.ataqueIndice = 0) draw_set_color(c_red); // Caso esteja em rodada de ataque e o indice seja igual à ordem, ele pintará o número de vermelho
if(instance_exists(cAtacando) and txt= "2º") if(cAtacando.ataqueIndice = 1) draw_set_color(c_red); // Caso esteja em rodada de ataque e o indice seja igual à ordem, ele pintará o número de vermelho
if(instance_exists(cAtacando) and txt= "3º") if(cAtacando.ataqueIndice = 2) draw_set_color(c_red); // Caso esteja em rodada de ataque e o indice seja igual à ordem, ele pintará o número de vermelho

draw_text(x + 80,y,txt) // Desenha o número da ordem em que foi selecionado (Foi deixado visível para fins didáticos, mas a ideia do jogo é justamente não apresentar)
	
draw_set_color(c_white)
draw_text(x + 65,y+20, "Supremacia Linux") // Define o nome e a posição do ataque

