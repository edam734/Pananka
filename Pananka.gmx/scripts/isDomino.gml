var object = argument0;

if ( object )
{
    var domino = instance_position(object.x, object.y, oDomino);
    if domino { 
        return true; 
    }
    else { 
        return false; 
    }
} else {
    return false;
}