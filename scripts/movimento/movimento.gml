if(place_meeting(x + v_horizontal, y, obj_wall)){
	while(!place_meeting(x + sign(v_horizontal), y, obj_wall)){
		x += sign(v_horizontal);
	}
	v_horizontal = 0;
}
x += v_horizontal;

if(place_meeting(x, y + v_vertical, obj_wall)){
	while(!place_meeting(x, y + sign(v_vertical), obj_wall)){
		y += sign(v_vertical);
	}
	v_vertical = 0;
}
y += v_vertical;