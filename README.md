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
│   └── calculator/
│       └── ti84_ce/        # TI-84 CE port
├── build_tools/
│   └── calculator/         # Build tools for calculators
├── source_ports/
│   └── generic/            # Generic base port
└── assets/                  # Game assets
```

## Quick Start

```bash
git clone https://github.com/robeast430-create/itcanrundoom.git
cd itcanrundoom

# View device specs
cat specs/ti84_ce.md

# Check build tools
cat build_tools/calculator/Makefile
```

## Device Targets

| Device | Status | Port Location |
|--------|--------|---------------|
| TI-84 CE | Planning | ports/calculator/ti84_ce |
| Apple Watch | Researching | specs/apple_watch.md |
| Kindle | Researching | - |
| Pebble | Planned | - |

## Contributing

1. Pick a device from targets
2. Research in `research/`
3. Document specs in `specs/`
4. Create port in `ports/`

## License

DOOM is copyright id Software. Educational purposes only.