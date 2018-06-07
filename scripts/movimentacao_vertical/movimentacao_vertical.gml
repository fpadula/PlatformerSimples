/// @desc Controle padrão vertical do personagem
v_vertical = v_vertical + gravidade;
if(v_vertical > 0){
	v_vertical = min(v_vertical, max_velocidade_vertical);
}
