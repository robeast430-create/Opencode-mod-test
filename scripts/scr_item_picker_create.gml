/// @function scr_item_picker_create()
function scr_item_picker_create()
{
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
    visible = true;
    depth = -9999;
}