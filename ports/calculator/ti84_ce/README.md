# DOOM Port for TI-84 CE Calculator
## Status: Planning

### Memory Budget (Target: <128KB)

| Component | Size |
|-----------|------|
| WAD data | 64KB (compressed levels) |
| Game engine | 32KB |
| Sprite cache | 16KB |
| Audio buffer | 8KB |
| Stack/Heap | 8KB |
| **Total** | 128KB |

### Rendering Pipeline

1. Render world at 160x120
2. Upscale to 320x240 via fast interpolation
3. Chunk-based: render visible sectors only

### Controls

| Key | Action |
|-----|--------|
| 2nd | Use / Shoot |
| Mode | Menu |
| Arrow Keys | Move |
| Alpha | Strafe |
| Y= | Open |
| Graph | Fire weapon |