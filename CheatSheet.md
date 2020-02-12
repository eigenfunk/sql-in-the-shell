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
  - `awk -F ',' 'OFS="," {if ($7 ~ /ada/) print $0}' Customer_A.csv`

## Vereinigung

- `SELECT * FROM Customers_A UNION SELECT * FROM Customers_B;`
  - `cat Customer_A.csv Customer_B.csv`
  - `cat Customer_A.csv Customer_B.csv | sort | uniq`

## Differenz

- `SELECT * FROM Customers_A EXCEPT SELECT * FROM Customers_B;`
  - `comm -23 <(sort Customer_A.csv) <(sort Customer_B.csv)`

## Kartesisches Produkt

- `SELECT * FROM R, S;`

  - siehe: `./bin/crt.sh`
