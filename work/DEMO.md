# Demo-Skript: SQL in the Shell

Befehle passend zu den Slides. Ausfuehren aus dem `work/` Verzeichnis.

```bash
cd work
```

---

## Slide: Relation

Zeige die Daten (= die Relation):

```bash
cat demo/kunden_a.csv
```

```
id,name,stadt,land
1,Mueller GmbH,Berlin,Germany
2,Schmidt AG,Hamburg,Germany
3,Dupont SARL,Paris,France
4,Smith Ltd,London,UK
5,Rossi SpA,Milano,Italy
```

---

## Slide: Projektion

Nur bestimmte Spalten auswaehlen:

```bash
# SQL: SELECT name, land FROM kunden_a;
cut -d',' -f2,4 demo/kunden_a.csv
```

Alternative mit awk:

```bash
awk -F',' '{print $2, $4}' demo/kunden_a.csv
```

Mit schoener Formatierung:

```bash
awk -F',' 'OFS="," {print $2, $4}' demo/kunden_a.csv
```

---

## Slide: Selektion

Zeilen filtern die Bedingung erfuellen:

```bash
# SQL: SELECT * FROM kunden_a WHERE land = 'Germany';
grep Germany demo/kunden_a.csv
```

Mit Header:

```bash
head -1 demo/kunden_a.csv && grep Germany demo/kunden_a.csv
```

Komplexere Bedingung mit awk:

```bash
# SQL: SELECT * FROM kunden_a WHERE id > 2;
awk -F',' '$1 > 2' demo/kunden_a.csv
```

---

## Slide: Vereinigung

Beide Tabellen zusammenfuehren (mit Duplikat-Entfernung):

```bash
# SQL: SELECT * FROM kunden_a UNION SELECT * FROM kunden_b;
cat demo/kunden_a.csv demo/kunden_b.csv | sort | uniq
```

Ohne Header-Duplikat:

```bash
head -1 demo/kunden_a.csv && tail -n +2 demo/kunden_a.csv demo/kunden_b.csv | sort | uniq
```

---

## Slide: Differenz

Zeilen die nur in A, aber nicht in B sind:

```bash
# SQL: SELECT * FROM kunden_a EXCEPT SELECT * FROM kunden_b;
comm -23 <(tail -n +2 demo/kunden_a.csv | sort) <(tail -n +2 demo/kunden_b.csv | sort)
```

Ergebnis: Mueller, Schmidt, Dupont (die nicht in B sind)

---

## Slide: Umbenennung

Spalten umsortieren/umbenennen:

```bash
# Spaltenreihenfolge aendern: land, name statt name, land
awk -F',' 'OFS="," {print $4, $2}' demo/kunden_a.csv
```

---

## Slide: Kartesisches Produkt

Jede Zeile aus A mit jeder Zeile aus B kombinieren:

```bash
# SQL: SELECT * FROM kunden_a, versand;
./bin/crt.sh demo/kunden_a.csv demo/versand.csv
```

Oder mit dem erweiterten Skript:

```bash
./bin/cartesian.sh demo/kunden_a.csv demo/versand.csv
```

---

## Slide: Join

Join = Kartesisches Produkt + Selektion + Projektion

```bash
# SQL: SELECT * FROM kunden_a JOIN versand ON kunden_a.land = versand.land;

# Schritt 1: Sortieren nach Join-Spalte
sort -t',' -k4 demo/kunden_a.csv > /tmp/a_sorted.csv
sort -t',' -k1 demo/versand.csv > /tmp/v_sorted.csv

# Schritt 2: Join (Unix join braucht sortierte Daten)
join -t',' -1 4 -2 1 /tmp/a_sorted.csv /tmp/v_sorted.csv
```

Oder alles in einer Pipeline:

```bash
join -t',' -1 4 -2 1 \
  <(tail -n +2 demo/kunden_a.csv | sort -t',' -k4) \
  <(tail -n +2 demo/versand.csv | sort -t',' -k1)
```

---

## Bonus: Komplexe Abfrage

"Alle deutschen Kunden mit Versandkosten":

```bash
# SQL: SELECT name, stadt, kosten
#      FROM kunden_a
#      JOIN versand ON kunden_a.land = versand.land
#      WHERE kunden_a.land = 'Germany';

join -t',' -1 4 -2 1 \
  <(tail -n +2 demo/kunden_a.csv | sort -t',' -k4) \
  <(tail -n +2 demo/versand.csv | sort -t',' -k1) \
| grep Germany \
| awk -F',' '{print $2, $3, $5}'
```

---

## Quick Reference

| SQL | Shell |
|-----|-------|
| `SELECT *` | `cat` |
| `SELECT a,b` | `cut -f1,2` / `awk '{print $1,$2}'` |
| `WHERE` | `grep` / `awk '{if(...) print}'` |
| `UNION` | `cat a b \| sort \| uniq` |
| `EXCEPT` | `comm -23 <(sort a) <(sort b)` |
| `JOIN` | `join -t',' -1 X -2 Y` |
| `CROSS JOIN` | `cartesian.sh` |
