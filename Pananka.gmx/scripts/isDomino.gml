var object = argument0;

if ( object )
{
    var domino = instance_position(object.x, object.y, oDomino);
    show_debug_message("domino = " + string(domino));
    if domino { 
        return true; 
    }
    else { 
        return false; 
    }
} else {
    return false;
}
