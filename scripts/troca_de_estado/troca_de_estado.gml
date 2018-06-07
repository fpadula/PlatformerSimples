prev_state = state;

if(state == states.parado){
	if(jump && no_chao){
		state = states.aplicando_impulso_pulo;
	}
	else if(!no_chao){
		state = states.pairando_ar;
		timer_ghost_j = janela_ghost_jump * room_speed;
		ghost_jump_enabled = true;
	}
	else if((move_direction != 0) && no_chao){
		state = states.correndo;
	}
}
else if(state == states.correndo){
	if(jump && no_chao){
		state = states.aplicando_impulso_pulo;
	}
	else if(!no_chao){
		state = states.pairando_ar;
		timer_ghost_j = janela_ghost_jump * room_speed;
		ghost_jump_enabled = true;
	}
	else if((move_direction == 0) && no_chao){
		state = states.parado;
	}
}
else if(state == states.aplicando_impulso_pulo){
	state = states.subindo_ar;	
}
else if(state == states.deslizar_parede){
	if(parede_esquerda || parede_direita) && jump {
		state = states.aplicando_impulso_pulo_parede;
	}
	else if(parede_esquerda && !pressed_left) || (parede_direita && !pressed_right){
		state = states.pairando_ar;
	}
	else if(!parede_esquerda && !parede_direita){
		state = states.pairando_ar;	
	}
	else if(no_chao && move_direction == 0){
		state = states.parado;
	}
	else if(no_chao && move_direction != 0){
		state = states.correndo;
	}
	
}
else if(state == states.aplicando_impulso_pulo_parede){
	state = states.subindo_ar;	
}
else if(state >= states.subindo_ar && state <= states.descendo_ar){
	
	if(ghost_jump_enabled){
		if(timer_ghost_j <= 0){
			ghost_jump_enabled = false;			
		}
		else{
			timer_ghost_j--;
		}
	}

	
	if(parede_esquerda || parede_direita) && jump {
		state = states.aplicando_impulso_pulo_parede;
	}
	else if(ghost_jump_enabled && jump){
		state = states.aplicando_impulso_pulo;
	}
	else if((move_direction == 0) && no_chao){
		state = states.parado;
	}
	else if ((parede_esquerda && pressed_left) || (parede_direita && pressed_right)) && (v_vertical > 0){
		state = states.deslizar_parede;
	}
	else if((move_direction != 0) && no_chao){
		state = states.correndo;
	}	
	else if(state == states.subindo_ar){
		if((v_vertical > -1) || animacao_acabou){
			state = states.pairando_ar;
		}
	}
	else if(state == states.pairando_ar){
		if(v_vertical > 1){
			state = states.descendo_ar;
		}
	}
}