---
marp: true
title: SQL in the shell
description: Relationenalgebra auf der Kommandozeile
theme: terminal
paginate: true
_paginate: false
class: invert
---

<!-- _class: lead -->

# SQL in the shell

### Relationenalgebra auf der Kommandozeile

---

# Relation

| id | name | stadt |
|----|------|-------|
| 1 | Mueller GmbH | Berlin |
| 2 | Schmidt AG | Hamburg |

- **Attribut**: Spalte (id, name, stadt)
- **Tupel**: Zeile (1, Mueller GmbH, Berlin)

---

# Operationen

- Projektion
- Selektion
- Vereinigung
- Differenz
- Umbenennung
- Kartesisches Produkt

---

# Projektion

> $$
> R = \text{Relation über} {A_1, …, A_k} \text{ und }β ⊆ {A_1, …, A_k}.
> $$
>
> $$
> \pi_{\beta}(R):=\{t_{\beta}|t \in R\}
> $$

---

# Selektion

> $$
> \sigma_{\text{A}}(R) := \{ t | t \in R \wedge t \text{ erf\"ullt A} \}
> $$

```sql
SELECT * FROM Customers
    WHERE Country LIKE '%ada%';
```

---

# Vereinigung

> $$
> R \cup S := \{ t | t \in R \lor t \in S \}
> $$

```sql
SELECT * FROM Customers_A
    UNION
        SELECT * FROM Customers_B;
```

---

# Differenz

> $$
> R \setminus S := \{ t | t \in R \land t \notin S \}
> $$

```sql
SELECT * FROM Customers_A
    EXCEPT
        SELECT * FROM Customers_B;
```

---

# Umbenennung

> $$
> \rho_{[\mathrm{neu}\leftarrow\mathrm{alt}]}(R):= \{t'|t'(R-\mathrm{alt})=t(R-\mathrm{alt}) \land t'(\mathrm{neu})=t(\mathrm{alt})\}
> $$

```bash
awk -F ',' '{print $2, $1}' R
```

---

# Kartesisches Produkt

> $$
> R\times S:=\{(a_1,a_2,...,a_n,b_1,b_2,...,b_m)| \\
> (a_1,...,a_n)\in R\wedge (b_1,...,b_m)\in S\}
> $$

```sql
SELECT * FROM R, S;
```

---

# Join?

> Kartesisches Produkt
> Selektion
> Projektion

---

# Revue

- [cat](https://de.wikipedia.org/wiki/Cat_(Unix)): Vereinigung
- [grep](https://de.wikipedia.org/wiki/Grep): Selektion
- [awk](https://de.wikipedia.org/wiki/Awk): Selektion, Projektion, Umbenennung
- [comm](https://en.wikipedia.org/wiki/Comm): Differenz

---

# Unix Tools

[cat](https://de.wikipedia.org/wiki/Cat_(Unix)) · [sed](https://de.wikipedia.org/wiki/Sed_(Unix)) · [grep](https://de.wikipedia.org/wiki/Grep) · [cut](https://de.wikipedia.org/wiki/Cut_(Unix)) · [awk](https://de.wikipedia.org/wiki/Awk) · [join](https://de.wikipedia.org/wiki/Join_(Unix)) · [comm](https://en.wikipedia.org/wiki/Comm) · [diff](https://de.wikipedia.org/wiki/Diff) · [uniq](https://en.wikipedia.org/wiki/Uniq) · [sort](https://de.wikipedia.org/wiki/Sort_(Unix))

> *"Do one thing and do it well"*

---

# Inspiration

> *"Relational algebra can turn any
> shell into a respectable database."*

**Matt Might** - [SQL in the Shell](http://matt.might.net/articles/sql-in-the-shell/)

---

<!-- _class: lead -->

![w:150](https://s.gravatar.com/avatar/b697f623bef1a9d58326f850ec184aa6?s=150)

# Danke!

**Martin Funk** · [@eigenfunk](https://github.com/eigenfunk)

[github.com/eigenfunk/sql-in-the-shell](https://github.com/eigenfunk/sql-in-the-shell)
