# SQL in the Shell

Relationenalgebra auf der Kommandozeile - eine [Marp](https://marp.app/) Praesentation.

Zeigt wie klassische SQL-Operationen mit Unix-Tools umgesetzt werden koennen:

| SQL | Shell |
|-----|-------|
| `SELECT *` | `cat`, `awk '{print}'` |
| `SELECT col1, col2` | `awk '{print $1, $2}'` |
| `WHERE` | `grep`, `awk '{if ...}'` |
| `UNION` | `cat file1 file2 \| sort \| uniq` |
| `EXCEPT` | `comm -23` |
| `FROM R, S` | `cartesian.sh` |

## Entwicklung

```bash
npm install
npm start          # Live-Preview im Browser
npm run build      # Build nach dist/
```

## Dateien

- `PITCHME.md` - Hauptpraesentation
- `CheatSheet.md` - Kurzreferenz SQL → Shell
- `work/` - Beispieldaten und Skripte

## Inspiration

Basiert auf [SQL in the Shell](http://matt.might.net/articles/sql-in-the-shell/) von Matt Might.

## Lizenz

[WTFPL](LICENSE)
