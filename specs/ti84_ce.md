# TI-84 CE Specifications

## Hardware

| Component | Specification |
|-----------|---------------|
| CPU | eZ80 (Z80 compatible) @ 48MHz |
| RAM | 256KB user accessible |
| Flash | 4MB |
| Display | 320x240 16-bit color LCD |
| Keyboard | TI-OS keypad |
| Link Port | USB-C |

## Software

- OS: TI-OS 5.6+
- Development: C via ZDS IDE or TIGCC
- File format: 8XP (TI-84 Plus)

## Port Challenges

1. **Memory constraints**: Only 256KB RAM, need <128KB for game
2. **No FPU**: All math must be integer fixed-point
3. **Stack limit**: 8KB stack max
4. **Screen buffer**: 320x240x2 bytes = 150KB (too large for framebuffer)
   - Need chunk-based rendering or smaller resolution

## Recommended Approach

- Render at 160x120, scale up
- Use 4-bit color palette (16 colors)
- Aggressive sprite optimization
- Sound via beep commands or PWM

## Port Files

See `ports/calculator/ti84_ce/`