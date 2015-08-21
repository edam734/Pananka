var player = argument0;

if !player or !instance_position(player.x,player.y,obj_Player) then return -1;

var xx = player.x;
var yy = player.y;
var _sprite_ = player.sprite_index;

var object = noone;

switch _sprite_
{
case spr_Red:
    object = instance_create(xx,yy,obj_Red);
    break;
case spr_Yellow:
    object = instance_create(xx,yy,obj_Yellow);
    break;
case spr_Blue:
    object = instance_create(xx,yy,obj_Blue);
    break;
case spr_Model_1:
    object = instance_create(xx,yy,oModel_1);
    break;
case spr_Model_2:
    object = instance_create(xx,yy,oModel_2);
    break;
case spr_Model_3:
    object = instance_create(xx,yy,oModel_3);
    break;
case spr_Model_4:
    object = instance_create(xx,yy,oModel_4);
    break;
case spr_Domino_1:
    object = instance_create(xx,yy,obj_Domino_1);
    break;
case spr_Domino_2:
    object = instance_create(xx,yy,obj_Domino_2);
    break;
case spr_Domino_3:
    object = instance_create(xx,yy,obj_Domino_3);
    break;
case spr_Domino_4:
    object = instance_create(xx,yy,obj_Domino_4);
    break;
case spr_Domino_5:
    object = instance_create(xx,yy,obj_Domino_5);
    break;
case spr_Domino_6:
    object = instance_create(xx,yy,obj_Domino_6);
    break;
}

if ( object )
    {
    object.depth = player.depth - 1;
    object.last_fit_x = player.last_fit_x;
    object.last_fit_y = player.last_fit_y;
    }

return object;
