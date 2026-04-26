obj_item_picker : object {
    visible = true;
    
    items = [
        { name: "Bandage", desc: "Heals 10 HP", heal: 10, type: "consumable" },
        { name: "Revolver", desc: "A handy pistol", damage: 12, type: "weapon" },
        { name: "Tophat", desc: "Makes you look cool", defense: 2, type: "armor" },
        { name: "Sugar", desc: "Restores 15 TP", restore_tp: 15, type: "consumable" },
        { name: "Pie", desc: "Heals 30 HP", heal: 30, type: "consumable" },
        { name: "Darkbone Blade", desc: "A dark sword", damage: 24, type: "weapon" },
        { name: "Shoes", desc: "Increases mobility", speed: 2, type: "armor" },
        { name: "Manual", desc: "Heals 20 HP & 10 TP", heal: 20, restore_tp: 10, type: "consumable" },
        { name: "Amulet", desc: "Protects from attacks", defense: 5, type: "armor" },
        { name: "Spade", desc: "A deadly spade", damage: 18, type: "weapon" },
        { name: "Carrot", desc: "Just a carrot", heal: 5, type: "consumable" },
        { name: "Steel Sword", desc: "A sturdy blade", damage: 15, type: "weapon" }
    ];
    
    selected_index = 0;
    max_display = 8;
    scroll_offset = 0;
    is_active = true;
    shake = 0;
    
    Create: function() {
        visible = true;
        items = [
            { name: "Bandage", desc: "Heals 10 HP", heal: 10, type: "consumable" },
            { name: "Revolver", desc: "A handy pistol", damage: 12, type: "weapon" },
            { name: "Tophat", desc: "Makes you look cool", defense: 2, type: "armor" },
            { name: "Sugar", desc: "Restores 15 TP", restore_tp: 15, type: "consumable" },
            { name: "Pie", desc: "Heals 30 HP", heal: 30, type: "consumable" },
            { name: "Darkbone Blade", desc: "A dark sword", damage: 24, type: "weapon" },
            { name: "Shoes", desc: "Increases mobility", speed: 2, type: "armor" },
            { name: "Manual", desc: "Heals 20 HP & 10 TP", heal: 20, restore_tp: 10, type: "consumable" },
            { name: "Amulet", desc: "Protects from attacks", defense: 5, type: "armor" },
            { name: "Spade", desc: "A deadly spade", damage: 18, type: "weapon" },
            { name: "Carrot", desc: "Just a carrot", heal: 5, type: "consumable" },
            { name: "Steel Sword", desc: "A sturdy blade", damage: 15, type: "weapon" }
        ];
        selected_index = 0;
        scroll_offset = 0;
        is_active = true;
        shake = 0;
        global.frozen = true;
    }
    
    Step: function() {
        if (!is_active) return;
        
        shake = max(shake - 0.2, 0);
        
        if (keyboard_check_pressed(vk_up)) {
            selected_index--;
            shake = 3;
            if (selected_index < 0) selected_index = array_length(items) - 1;
        }
        
        if (keyboard_check_pressed(vk_down)) {
            selected_index++;
            shake = 3;
            if (selected_index >= array_length(items)) selected_index = 0;
        }
        
        if (keyboard_check_pressed(vk_return) || keyboard_check_pressed(ord("Z"))) {
            scr_add_item_to_inventory(items[selected_index]);
            shake = 5;
        }
        
        if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("X"))) {
            is_active = false;
            instance_destroy();
        }
    }
    
    Draw: function() {
        if (!is_active) return;
        
        var base_x = __view_get(0, 0) + 300 + shake;
        var base_y = __view_get(0, 0) + 200;
        
        draw_set_color(#000000);
        draw_set_alpha(0.8);
        draw_rectangle(base_x, base_y, base_x + 200, base_y + 240, false);
        
        draw_set_color(#FFFFFF);
        draw_set_alpha(1);
        draw_rectangle(base_x, base_y, base_x + 200, base_y + 240, true);
        
        draw_text(base_x + 75, base_y + 5, "ITEM PICKER");
        
        var display_start = selected_index - max_display;
        if (display_start < 0) display_start = 0;
        
        for (var i = 0; i < max_display; i++) {
            var item_index = display_start + i;
            if (item_index >= array_length(items)) break;
            
            var item = items[item_index];
            var draw_y = base_y + 30 + (i * 25);
            var is_selected = (item_index == selected_index);
            
            if (is_selected) {
                draw_set_color(#FFFF00);
                draw_rectangle(base_x + 5, draw_y, base_x + 195, draw_y + 20, true);
            }
            
            draw_set_color(is_selected ? #000000 : #FFFFFF);
            var type_color = #FFFFFF;
            if (item.type == "weapon") type_color = #FF6666;
            if (item.type == "armor") type_color = #6666FF;
            if (item.type == "consumable") type_color = #66FF66;
            
            draw_text(base_x + 10, draw_y + 2, item.name);
        }
        
        var selected_item = items[selected_index];
        draw_text(base_x + 10, base_y + 215, selected_item.name);
        draw_text(base_x + 10, base_y + 230, selected_item.desc);
    }
    
    Other_10: function() {
        global.frozen = false;
    }
}