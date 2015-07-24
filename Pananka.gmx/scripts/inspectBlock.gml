
var block = argument0;
sprite = argument1;
add = argument2;

if (block) {
    
    // Verify if this block was inspected with this color (sprite) already
    var wasColorInspected = ds_list_find_index(block.inspectColor, sprite);
    if (wasColorInspected >= 0)
    {
        return add;
    }
    
    // Assert inspected list with this color
    ds_list_add(block.inspectColor, sprite);
        
    if (block.sprite_index == sprite) {
        block.autoDestroy = true;
        add = true;
    }
    
    var rightBlock = instance_position(block.x + block.sprite_width, block.y, oBlock);
    var leftBlock = instance_position(block.x - block.sprite_width, block.y, oBlock);
    var bottomBlock = instance_position(block.x, block.y + block.sprite_height, oBlock);
    var topBlock = instance_position(block.x, block.y - block.sprite_height, oBlock);
    
    var newSprite = block.sprite_index;
    
    return 
        inspectBlock(rightBlock, newSprite, add) | 
        inspectBlock(leftBlock, newSprite, add) | 
        inspectBlock(bottomBlock, newSprite, add) | 
        inspectBlock(topBlock, newSprite, add);
    
}
else {
    return add;
}