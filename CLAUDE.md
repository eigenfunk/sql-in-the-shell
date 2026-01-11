# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

SQL in the Shell is a Marp-based presentation demonstrating how relational algebra operations can be implemented using Unix/Linux command-line tools. It maps SQL operations to their shell equivalents:

- SELECT → cat/awk
- WHERE → grep/awk
- UNION → cat
- EXCEPT → comm
- Cartesian Product → custom shell scripts

## Commands

```bash
npm install              # Install dependencies
npm start                # Live preview with hot reload (opens Chrome)
npm run build            # Full build (og-image + slides) to dist/
npm run deck             # Build slides only to dist/index.html
npm run og-image         # Generate Open Graph image
```

## Project Structure

- `PITCHME.md` - Main presentation (Marp Markdown)
- `CheatSheet.md` - SQL-to-shell command reference
- `work/` - Practical examples
  - `*.csv` - Sample data files (Customer_A, Customer_B, Shipping)
  - `bin/cartesian.sh` - Cartesian product with CLI options (-d delimiter, -t for tabs)
  - `bin/crt.sh` - Simplified cartesian product
- `themes/` - Custom Marp CSS themes
- `assets/` - Images used in slides
- `marp.config.js` - Marp configuration (themes, URL, OG image)

## Deployment

GitHub Actions deploys to GitHub Pages on push to master. The workflow builds slides and deploys to `gh-pages` branch.
