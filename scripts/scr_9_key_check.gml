///@function scr_9_key_check()
function scr_9_key_check()
{
    if (keyboard_check_pressed(ord("9")))
    {
        if (room == room_main || room == room_light || room == room_town || room == room_overworld)
        {
            if (!instance_exists(obj_item_picker))
            {
                instance_create(0, 0, obj_item_picker);
            }
        }
    }
}