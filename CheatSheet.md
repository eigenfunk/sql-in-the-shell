---
marp: true
---

# CheatSheet

## Relation

- `SELECT * FROM Customers;`
  - `cat Customer_A.csv`
  - `awk '{print}' Customer_A.csv`

## Projektion

- `SELECT CustomerName, City FROM Customers;`

  - `awk '{print $1}' Customer_A.csv`
  - `awk -F ',' '{print $1}' Customer_A.csv`
  - `awk -F ',' 'OFS = "," {print $3, $5}' Customer_A.csv`

- Bonus: Sortierung
  - `awk -F ',' 'OFS="," {print $2, $1, $3}' Customer_A.csv | sort --field-separator=',' --key=2`

## Selektion

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

## Umbenennung

- `awk -F ',' 'OFS = "," {print $5, $3}' Customer_A.csv`

## Kartesisches Produkt

- `SELECT * FROM R, S;`

  - siehe: `./bin/crt.sh`
