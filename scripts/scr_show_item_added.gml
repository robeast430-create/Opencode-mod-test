/// @function scr_show_item_added(item_name)
function scr_show_item_added(item_name)
{
    var notifier = instance_create(0, 0, obj_notification);
    notifier.message = "Added: " + item_name;
    notifier.target_y = view_yport[0] + 400;
}