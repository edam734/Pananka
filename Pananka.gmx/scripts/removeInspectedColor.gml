/*
 * Reset inspectedColor var from all blocks
 */
for (var i = instance_number(oBlock)-1; i >= 0; i--) {
    var block = instance_find(oBlock, i);
    with block 
    {
    inspectedColor = false;
    }
}