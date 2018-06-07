switch(state){
	
	case states.parado:
		if(sprite_index != spr_player_parado){
			sprite_index = spr_player_parado;
			image_index = 0;
			image_speed = 1;
			animacao_acabou = false;
		}
		if(move_direction != 0){
			image_xscale = move_direction;
		}
		movimentacao_horizontal();	
		movimentacao_vertical();
	break;
	
	case states.correndo:
		if(sprite_index != spr_player_correndo){
			sprite_index = spr_player_correndo;
			image_index = 0;
			image_speed = 1;
			animacao_acabou = false;
		}
		if(move_direction != 0){
			image_xscale = move_direction;
		}
		movimentacao_horizontal();		
		movimentacao_vertical();
		
	break;
	
	case states.pairando_ar:
		if(sprite_index != spr_player_pairando_ar){
			sprite_index = spr_player_pairando_ar;
			image_index = 0;
			image_speed = 1;
			animacao_acabou = false;
			if(prev_state != states.aplicando_impulso_pulo){
				pulo_variavel = false;
			}
		}
		if(move_direction != 0){
			image_xscale = move_direction;
		}
		movimentacao_horizontal();
		
		if(pulo_variavel && jump_released){
			pulo_variavel = false;
		}
		
		if(pulo_variavel){
			v_vertical += fator_pulo_variavel*gravidade;
		}
		else{
			movimentacao_vertical();
		}
	break;
	
	case states.subindo_ar:
		if(sprite_index != spr_player_subindo_ar){
			sprite_index = spr_player_subindo_ar;
			image_index = 0;
			image_speed = 1;
			animacao_acabou = false;
			if(prev_state != states.aplicando_impulso_pulo){
				pulo_variavel = false;
			}
		}
		if(move_direction != 0){
			image_xscale = move_direction;
		}
		movimentacao_horizontal();
		
		if(pulo_variavel && jump_released){
			pulo_variavel = false;
		}
		
		if(pulo_variavel){
			v_vertical += fator_pulo_variavel*gravidade;
		}
		else{
			movimentacao_vertical();
		}
	break;	
	
	case states.descendo_ar:
		if(sprite_index != spr_player_descendo_ar){
			sprite_index = spr_player_descendo_ar;
			image_index = 0;
			image_speed = 1;
			animacao_acabou = false;
			if(prev_state != states.aplicando_impulso_pulo){
				pulo_variavel = false;
			}
		}
		if(move_direction != 0){
			image_xscale = move_direction;
		}
		if(animacao_acabou){
			image_index = image_number - 1;
			image_speed = 0;
		}
		movimentacao_horizontal();
		movimentacao_vertical();		
	break;		
	case states.aplicando_impulso_pulo:
		v_vertical = jump_spd;
		pulo_variavel = true;
		jump = false;
	break;
	
	case states.deslizar_parede:
		if(sprite_index != spr_deslizar_parede){
			sprite_index = spr_deslizar_parede;
			image_index = 0;
			image_speed = 1;
			animacao_acabou = false;
		}
		movimentacao_horizontal();		
		movimentacao_vertical();
		v_vertical = clamp(v_vertical, -2, 2);
		if(parede_direita){
			image_xscale = 1;
		}
		else{
			image_xscale = -1;
		}
	break;
	
	case states.aplicando_impulso_pulo_parede:
		v_vertical = wall_jump_v_spd;
		if(parede_direita){
			v_horizontal = -wall_jump_h_spd;
			image_xscale = -1;
		}
		else{
			v_horizontal = wall_jump_h_spd;
			image_xscale = 1;
		}
	break;
}