# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

SQL in the Shell is a Marp-based presentation demonstrating how relational algebra operations can be implemented using Unix/Linux command-line tools. The presentation is designed to be shown alongside live terminal demos.

| SQL | Shell |
|-----|-------|
| SELECT * | cat |
| SELECT a,b | cut / awk |
| WHERE | grep / awk |
| UNION | cat a b \| sort -u |
| EXCEPT | comm -23 |
| JOIN | join |
| CROSS JOIN | cartesian.sh |

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
- `themes/terminal.css` - Custom dark terminal theme
- `work/` - Demo materials for live presentation
  - `DEMO.md` - Step-by-step terminal commands aligned with slides
  - `demo/` - Small example datasets (5 rows each) for live demos
  - `Customer_*.csv`, `Shipping.csv` - Full sample datasets
  - `bin/cartesian.sh` - Cartesian product script (-d delimiter, -t for tabs)

## Live Presentation

The slides are meant to accompany live terminal demos. Use `work/DEMO.md` as a script - it contains all commands to run for each slide.

## Deployment

GitHub Actions deploys to GitHub Pages on push to master. Live at: https://eigenfunk.github.io/sql-in-the-shell/

## LaTeX in Marp

Use `\"u` instead of UTF-8 `ü` in `\text{}` blocks to avoid MathJax rendering issues.
