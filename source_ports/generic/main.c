/*
 * itcanrundoom - main.c
 * Porting DOOM to anything with a processor
 */

#include <stdint.h>
#include <stdbool.h>

#define VERSION "0.1.0"
#define TARGET "GENERIC"

typedef struct {
    const char* device_name;
    uint32_t screen_width;
    uint32_t screen_height;
    uint32_t ram_kb;
    bool has_fpu;
} device_specs_t;

device_specs_t current_device;

const char* get_target_name(void) {
    return TARGET;
}

void init_display(void) {
    // Placeholder - implement per device
}

void draw_pixel(int x, int y, uint8_t color) {
    // Placeholder
}

void clear_screen(void) {
    // Placeholder
}

void draw_frame(uint8_t* buffer, int width, int height) {
    // Placeholder - copy buffer to display
}

void init_sound(void) {
    // Placeholder
}

void play_sound(int sfx_id) {
    // Placeholder
}

void init_input(void) {
    // Placeholder
}

bool is_key_pressed(int key) {
    return false;
}

void game_loop(void) {
    bool running = true;
    
    while (running) {
        // Poll input
        init_input();
        
        // Update game state
        // render world
        
        // Draw to screen
        clear_screen();
        draw_frame(NULL, current_device.screen_width, current_device.screen_height);
        
        // Sync to refresh rate
    }
}

int main(void) {
    current_device.device_name = "Generic Device";
    current_device.screen_width = 320;
    current_device.screen_height = 240;
    current_device.ram_kb = 256;
    current_device.has_fpu = true;
    
    init_display();
    init_sound();
    
    game_loop();
    
    return 0;
}