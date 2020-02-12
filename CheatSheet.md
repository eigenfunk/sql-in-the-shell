---
marp: true
---

# CheatSheet

## Relation

- `SELECT * FROM Customers;`
  - `cat Customer.csv`
  - `awk '{print}' Customer.csv`

## Projektion

- `SELECT CustomerName, City FROM Customers;`
  - `awk '{print $1}' Customer.csv`
  - `awk -F ',' '{print $1}' Customer.csv`
  - `awk -F ',' 'OFS = "," {print $3, $5}' Customer.csv`

## Differenz

- `comm -23 <(sort A) <(sort B)`
