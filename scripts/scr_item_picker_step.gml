/// @function scr_item_picker_step()
function scr_item_picker_step()
{
    if (!is_active) return;
    
    shake = max(shake - 0.2, 0);
    
    if (keyboard_check_pressed(vk_up))
    {
        selected_index--;
        shake = 3;
        if (selected_index < 0) selected_index = array_length(items) - 1;
    }
    
    if (keyboard_check_pressed(vk_down))
    {
        selected_index++;
        shake = 3;
        if (selected_index >= array_length(items)) selected_index = 0;
    }
    
    if (keyboard_check_pressed(vk_return) || keyboard_check_pressed(ord("Z")))
    {
        scr_add_item_to_inventory(items[selected_index]);
        shake = 5;
    }
    
    if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("X")))
    {
        is_active = false;
        global.frozen = false;
        instance_destroy();
    }
}