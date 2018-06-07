no_chao = place_meeting(x , y + 1, obj_wall);
parede_esquerda = place_meeting(x - 1, y, obj_wall);
parede_direita = place_meeting(x + 1, y, obj_wall);

if(jump_pressed){
	jump = true;	
	timer_buff_j = room_speed * janela_buff_pulo;
}
else{	
	if(timer_buff_j <= 0){
		if(jump){
			jump = false;
		}
	}
	else{
		timer_buff_j--;
	}
}
move_direction = pressed_right - pressed_left;