if(move_direction != 0){
	v_horizontal += move_direction * h_acc;			
}
else{	
	if( sign(v_horizontal - frict * sign(v_horizontal)) != sign(v_horizontal)){
		v_horizontal = 0;
	}
	else{
		v_horizontal -= frict * sign(v_horizontal);
	}
}
v_horizontal = clamp(v_horizontal, -move_spd, move_spd);