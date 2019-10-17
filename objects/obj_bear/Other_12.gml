/// @description Attack State
// You can write your code in this editor

if (!instance_exists(obj_player)){
	state_ = bear.move;
	exit;
}

if (distance_to_object(obj_player) > range_){
	state_ = bear.move;
}

var _direction = point_direction(x,y,obj_player.x,obj_player.y);
image_xscale = sign(lengthdir_x(speed_,_direction));
add_movement_maxspeed(_direction,0.123,0.7);
move_movement_entity(true);

var _player = instance_place(x,y,obj_player);
if _player != noone {
	create_hitbox(spr_bear_idle,x,y,0,1,[obj_player],1,5);
}