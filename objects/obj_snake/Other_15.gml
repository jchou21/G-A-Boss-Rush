/// @description move state
var _player_distance = distance_to_object(obj_player);

// reset burrow check
burrow_ = false;

if(alarm[2] <= 0){
	if(_player_distance <= 64){
		alarm[3] = global.one_second * random(3);
		state_ = snake.idle;
	}else if(_player_distance > 64){
		attack_counter_ = irandom(4);
		if(irandom(1) == 1){
			state_ = snake.venom;
		}else{
			state_ = snake.idle;
		}
	}
	
}
if(tail_attack_ == true && _player_distance <= 15){
	tail_attack_ = false;
	state_ = snake.tail;
}

speed_ = 2;
image_xscale = sign(lengthdir_x(speed_,direction_));
//image_angle = direction_;
move_movement_entity(true);