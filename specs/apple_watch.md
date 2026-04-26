# Apple Watch Specifications

## Hardware (Series 7)

| Component | Specification |
|-----------|---------------|
| CPU | Apple S7 SiP (ARM64 dual-core) |
| RAM | 1GB LPDDR4 (shared) |
| Storage | 32GB |
| Display | 396x484 LTPO OLED |
| OS | watchOS |

## Port Challenges

1. **Sandboxing**: Apps run in restricted sandbox
2. **No OpenGL/DirectX**: Must use Metal or SpriteKit
3. **Small screen**: 44mm = 368x448 logical pixels
4. **No keyboard**: Touch input only
5. **Battery**: Must be efficient

## Recommended Approach

- Use SpriteKit for rendering
- 240x240 game resolution
- Touch controls with virtual joystick
- Metal shader for raycasting (if feasible)

## Status

Researching Metal API capabilities on watchOS.