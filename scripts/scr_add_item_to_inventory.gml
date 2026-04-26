/// @function scr_add_item_to_inventory(item)
function scr_add_item_to_inventory(item)
{
    if (!variable_instance_exists(id, "inventory"))
    {
        inventory = [];
    }
    
    if (array_length(inventory) < 8)
    {
        var new_item = {
            name: item[@ "name"],
            desc: item[@ "desc"],
            type: item[@ "type"]
        };
        
        if (variable_struct_exists(item, "heal"))
            new_item[@ "heal"] = item[@ "heal"];
        if (variable_struct_exists(item, "damage"))
            new_item[@ "damage"] = item[@ "damage"];
        if (variable_struct_exists(item, "defense"))
            new_item[@ "defense"] = item[@ "defense"];
        if (variable_struct_exists(item, "restore_tp"))
            new_item[@ "restore_tp"] = item[@ "restore_tp"];
        if (variable_struct_exists(item, "speed"))
            new_item[@ "speed"] = item[@ "speed"];
        
        array_push(inventory, new_item);
        scr_show_item_added(item[@ "name"]);
    }
}