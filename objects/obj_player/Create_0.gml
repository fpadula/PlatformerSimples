/// @description Inicializando variáveis

gravidade = 2;
v_vertical = 0;
v_horizontal = 0;

move_direction = 0;
jump_pressed = false;
jump = false;
jump_spd = -20;
move_spd = 5;
max_velocidade_vertical = 13;

enum states{
	parado,
	correndo,
	subindo_ar,
	pairando_ar,
	descendo_ar,
	aplicando_impulso_pulo,
	deslizar_parede,
	aplicando_impulso_pulo_parede
}

state = states.parado;
prev_state = state;

pulo_variavel = false;

frict = 2;
h_acc = 1;

wall_jump_h_spd = 10;
wall_jump_v_spd = -20;

fator_pulo_variavel = 0.5;

ghost_jump_enabled = false;
janela_ghost_jump = .2;
janela_buff_pulo = .1;

animacao_acabou = false;

timer_ghost_j = 0;
timer_buff_j = 0;