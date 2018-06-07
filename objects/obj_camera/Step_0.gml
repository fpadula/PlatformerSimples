/// @description Seguindo o alvo

if(instance_exists(alvo)){
	view_width = camera_get_view_width(camera);
	view_height = camera_get_view_height(camera);
	x_camera_dest = alvo.x - view_width/2;
	y_camera_dest = alvo.y - view_height/2;
	x += (x_camera_dest - x)/10;
	y += (y_camera_dest - y)/10;
	x = clamp(x, 0, room_width - view_width);
	y = clamp(y, 0, room_height - view_height);	
	x = round(x);
	y = round(y);
	camera_set_view_pos(camera, x, y);
}
