# Research Notes

## Active Research

### TI-84 CE Calculator Port
- **CPU**: Z80 clone (eZ80) at 48MHz
- **RAM**: 256KB user accessible
- **Storage**: 4MB Flash
- **Display**: 320x240 LCD
- **Challegnes**: 
  - Limited RAM requires aggressive optimization
  - No floating point unit
  - Custom linker script needed
- **Status**: Feasibility study

### Apple Watch Port
- **CPU**: Apple S7 SiP (ARM64)
- **RAM**: 1GB shared
- **Challenges**:
  - watchOS restrictions
  - No DirectX/OpenGL
  - Limited screen size (44mm = 368x448)
- **Status**: Researching Metal API

### Kindle E-Ink Port
- **CPU**: ARM Cortex-A series
- **Display**: E-ink, 167 DPI
- **Challenges**:
  - Slow refresh rate (~1s)
  - Grayscale only
  - No color
- **Status**: Initial assessment

### Pebble Smartwatch
- **CPU**: ARM Cortex-M4
- **RAM**: 128KB
- **Display**: 144x168 e-paper
- **Challenges**:
  - Extremely limited resources
  - Only 64KB for game code
- **Status**: Theoretical only

## Completed Research

_(None yet)_