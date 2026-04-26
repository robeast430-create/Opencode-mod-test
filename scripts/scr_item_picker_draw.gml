/// @function scr_item_picker_draw()
function scr_item_picker_draw()
{
    if (!is_active) return;
    
    var base_x = view_xport[0] + 300 + shake;
    var base_y = view_yport[0] + 200;
    
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(base_x, base_y, base_x + 200, base_y + 240, false);
    
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_rectangle(base_x, base_y, base_x + 200, base_y + 240, true);
    
    draw_set_color(c_white);
    draw_set_font(fnt_main);
    draw_text(base_x + 50, base_y + 5, "ITEM PICKER");
    
    var display_start = max(0, selected_index - 4);
    
    for (var i = 0; i < max_display; i++)
    {
        var item_index = display_start + i;
        if (item_index >= array_length(items)) break;
        
        var item = items[item_index];
        var draw_y = base_y + 30 + (i * 25);
        var is_selected = (item_index == selected_index);
        
        if (is_selected)
        {
            draw_set_color(c_yellow);
            draw_rectangle(base_x + 5, draw_y, base_x + 195, draw_y + 20, true);
        }
        
        var type_color = c_white;
        if (item[@ "type"] == "weapon") type_color = make_color_rgb(255, 102, 102);
        if (item[@ "type"] == "armor") type_color = make_color_rgb(102, 102, 255);
        if (item[@ "type"] == "consumable") type_color = make_color_rgb(102, 255, 102);
        
        draw_set_color(is_selected ? c_black : type_color);
        draw_text(base_x + 10, draw_y + 2, item[@ "name"]);
    }
    
    var selected_item = items[selected_index];
    draw_set_color(c_white);
    draw_text(base_x + 10, base_y + 215, selected_item[@ "name"]);
    draw_text(base_x + 10, base_y + 230, selected_item[@ "desc"]);
    
    draw_set_alpha(1);
}