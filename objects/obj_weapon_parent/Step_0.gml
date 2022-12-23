
var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_parent, false, true, _list, false);


if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
		if(_list[| i].sprite_index == _list[| i].spr)
		{

			
			//knockback							
			var dir = point_direction(x,y, _list[| i].x, _list[| i].y);
				_list[| i].x = _list[| i].x + lengthdir_x(10, dir);
				_list[| i].y = _list[| i].y + lengthdir_y(10, dir);
			
			//sprite branco
			_list[| i].sprite_index = _list[| i].sprW;
					
			
				_list[| i].inimigo_hp -= dmg; 	
		
			
			if(_list[| i].inimigo_hp <= 0)
			{
				instance_destroy(_list[| i]);
			}
		}
	}
}

ds_list_destroy(_list);

//instance_create_layer(x, y, "DANO", obj_damage_draw)