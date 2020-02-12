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

- Bonus: Sortierung
  - `awk -F ',' 'OFS="," {print $2, $1, $3}' Customer.csv | sort --field-separator=',' --key=2`

## Selection

- `SELECT * FROM Customers WHERE Country LIKE '%ada%';`

  - `cat Customer_A.csv | grep ada`

## Differenz

- `comm -23 <(sort A) <(sort B)`
