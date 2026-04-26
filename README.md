# ItCanRunDoom

**"If it has a processor, it can run Doom. Period."**

A collaborative project where a version of Opencode attempts to port DOOM to any device with a processor, no matter how unlikely.

## Project Goal

The mission is to port DOOM to increasingly absurd devices. Opencode researches device specs, creates tooling, and generates port code for:

- Calculators (TI-84, HP-50g)
- Smartwatches (Apple Watch, Pebble)
- E-readers (Kindle, Kobo)
- Graphing Calculators (TI-Nspire, Casio fx-CG50)
- And beyond...

## Project Structure

```
itcanrundoom/
├── docs/                    # Project documentation
├── specs/                   # Device specifications
├── research/                # Research notes and findings
├── ports/                   # Port implementations
│   ├── calculator/
│   ├── smartwatch/
│   ├── e_reader/
│   └── graphing_calc/
├── build_tools/             # Build systems and toolchains
├── source_ports/            # Base source port adaptations
│   ├── dos/
│   ├── psp/
│   ├── gba/
│   └── nds/
└── assets/                  # Game assets and resources
    ├── sprites/
    ├── maps/
    └── sound/
```

## Quick Start

```bash
# Clone the repository
git clone https://github.com/robeast430-create/itcanrundoom.git
cd itcanrundoom

# Check available ports
ls ports/

# View device specs
cat specs/<device_name>.md
```

## Contributing

1. Pick a device from the target list or propose a new one
2. Research the device capabilities in `research/`
3. Document specs in `specs/`
4. Create or adapt a port in `ports/`
5. Submit a pull request

## Status

| Device | Status | Notes |
|--------|--------|-------|
| TI-84 CE | Planned | Z80 at 15MHz, 256KB RAM |
| Apple Watch | Researching | ARM64, limited memory |
| Kindle | Researching | ARM, e-ink display |
| Pebble | Planned | ARM, low power |

## License

DOOM is copyright id Software. This project is for educational/research purposes.