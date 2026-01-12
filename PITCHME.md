---
marp: true
title: SQL in the shell
description: Relationenalgebra auf der Kommandozeile
theme: uncover
paginate: true
_paginate: false
---

![bg](./assets/gradient.jpg)

# SQL in the shell

Relationenalgebra auf der Kommandozeile

<style scoped>a { color: #eee; }</style>

<!-- This is presenter note with. You can write down notes through HTML comment. -->

---

![bg](#148)
![](#fff)

# Relation

| id | name | stadt |
|----|------|-------|
| 1 | Mueller GmbH | Berlin |
| 2 | Schmidt AG | Hamburg |

- **Attribut**: Spalte (id, name, stadt)
- **Tupel**: Zeile (1, Mueller GmbH, Berlin)

---

![bg](#148)
![](#fff)

# Operationen

- Projektion
- Selektion
- Vereinigung
- Differenz
- Umbenennung
- Kartesisches Produkt

---

![bg](#148)
![](#fff)

# Projektion

> $$
> R = \text{Relation über} {A_1, …, A_k} \text{ und }β ⊆ {A_1, …, A_k}.
> $$
>
> $$
> \pi_{\beta}(R):=\{t_{\beta}|t \in R\}
> $$

- `SELECT CustomerName, City FROM Customers;`

---

![bg](#148)
![](#fff)

# Selektion

> $$
> \sigma_{\text{A}}(R) := \{ t | t \in R \wedge t \text{ erfüllt A} \}
> $$

- `SELECT * FROM Customers`
  `WHERE Country LIKE '%ada%';`

---

![bg](#148)
![](#fff)

# Vereinigung

> $$
> R \cup S := \{ t | t \in R \lor t \in S \}
> $$

- `SELECT * FROM Customers_A`
  `UNION SELECT * FROM Customers_B`

---

![bg](#148)
![](#fff)

# Differenz

> $$
> R {-} S := R {\setminus} S := \{ t | t \in R \land t \notin S \}
> $$

- `SELECT * FROM Customers_A`
  `EXCEPT SELECT * FROM Customers_B;`

---

![bg](#148)
![](#fff)

# Umbenennung

> $$
> \rho_{[\mathrm{neu}\leftarrow\mathrm{alt}]}(R):= \{t'|t'(R-\mathrm{alt})=t(R-\mathrm{alt}) \land t'(\mathrm{neu})=t(\mathrm{alt})\}
> $$

- `awk -F ',' '{print $2, $1}' R`

---

![bg](#148)
![](#fff)

# Kartesisches Produkt

> $$
> R\times S:=\{(a_1,a_2,...,a_n,b_1,b_2,...,b_m)| \\
> (a_1,...,a_n)\in R\wedge (b_1,...,b_m)\in S\}
> $$

- `SELECT * FROM R, S;`

---

![bg](#148)
![](#fff)

## Join?

- Selektion
- Projektion
- Kartesisches Produkt

---

![bg](#148)
![](#fff)

# Revue

- [cat](<https://de.wikipedia.org/wiki/Cat_(Unix)>): Vereinigung
- [grep](https://de.wikipedia.org/wiki/Grep): Selektion
- [awk](https://de.wikipedia.org/wiki/Awk): Selektion, Projektion, Umbenennung
- [comm](https://en.wikipedia.org/wiki/Comm): Differenz

---

![bg](#148)
![](#fff)

# Et al.

[cat](<https://de.wikipedia.org/wiki/Cat_(Unix)>),[sed](<https://de.wikipedia.org/wiki/Sed_(Unix)>), [grep](https://de.wikipedia.org/wiki/Grep), [cut](<https://de.wikipedia.org/wiki/Cut_(Unix)>), [awk](https://de.wikipedia.org/wiki/Awk), [join](<https://de.wikipedia.org/wiki/Join_(Unix)>),
[comm](https://en.wikipedia.org/wiki/Comm), [diff](https://de.wikipedia.org/wiki/Diff), [uniq](https://en.wikipedia.org/wiki/Uniq) und [sort](<https://de.wikipedia.org/wiki/Sort_(Unix)>)

---

![bg](#148)
![](#fff)

# Inspiration

> *"Relational algebra can turn any
> shell into a respectable database."*

**Matt Might** - [SQL in the Shell](http://matt.might.net/articles/sql-in-the-shell/)

---

![bg](#148)
![](#fff)

![bg 40% opacity blur](https://s.gravatar.com/avatar/b697f623bef1a9d58326f850ec184aa6?s=80)

# Martin Funk ([@eigenfunk](https://github.com/eigenfunk))

https://github.com/eigenfunk/sql-in-the-shell
