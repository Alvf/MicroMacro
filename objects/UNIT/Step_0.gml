/// @description Insert description here
// You can write your code in this editor

//passive running
for(var i =0 ; i< instance_count; i++){
	if (instance_id[i] != id and place_meeting(x,y,instance_id[i])){
		image_angle += (360 - point_direction(x,y,instance_id[i].x,instance_id[i].y))/4
		direction = image_angle
	}
}
//state machine interaction
if(state = states.idle){
	if(mouse_check_button(mb_left)){
		tox = mouse_x
		toy = mouse_y
		startx = x
		starty = y
		state = states.moveto
	}
}
else if(state = states.moveto){
	pointdir = point_direction(x,y,tox,toy)
	image_angle+= sin(degtorad(pointdir-image_angle))*rspeed
	direction = image_angle
	script_execute(CurveMove,tox,toy,7,startx,starty)
	
	if(mouse_check_button(mb_left)&&point_distance(x,y,mouse_x,mouse_y)>10){
		startx = x
		starty = y
		tox = mouse_x
		toy = mouse_y
	}
	else if(distance_to_point(tox,toy)==0){
		speed =0
		state = states.idle
	}
}