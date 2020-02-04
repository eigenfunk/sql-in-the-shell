---
marp: true
title: SQL in the shell
description: Relationenalgebra auf der Kommandozeile
theme: uncover
paginate: true
_paginate: false
---

![bg](./assets/gradient.jpg)

# <!--fit--> SQL in the shell

Relationenalgebra auf der Kommandozeile

<style scoped>a { color: #eee; }</style>

<!-- This is presenter note with. You can write down notes through HTML comment. -->

---

![bg](#148)
![](#fff)

## <!--fit--> Relation

<!-- Relation: Attribute und Tupel.
    Attribut: Typ
    Tupel: Geordnete Werte, Datensatz.
    -->

---

![bg](#148)
![](#fff)

## <!--fit--> Vereinigung

> $$
> R \cup S := \{ t | t \in R \lor t \in S \}
> $$

---

![bg](#148)
![](#fff)

## <!--fit--> Selektion

> $$
> \sigma_{\text{A}}(R) := \{ t | t \in R \wedge t \text{ erfüllt A} \}
> $$

---

![bg](#148)
![](#fff)

## <!--fit--> Projektion

> $$
> R = \text{Relation über} {A_1, …, A_k} \text{ und }β ⊆ {A_1, …, A_k}.
> $$
>
> $$
> \pi_{\beta}(R):=\{t_{\beta}|t \in R\}
> $$

---

![bg](#148)
![](#fff)

## <!--fit--> Kartesisches Produkt

> $$
> R\times S:=\{(a_1,a_2,...,a_n,b_1,b_2,...,b_m)|(a_1,a_2,...,a_n)\in R\wedge (b_1,b_2,...,b_m)\in S\}
> $$

---

![bg](#148)
![](#fff)

## <!--fit--> Differenz

> $$
> R {-} S := R {\setminus} S := \{ t | t \in R \land t \notin S \}
> $$

---

![bg](#148)
![](#fff)

## <!--fit--> Umbenennung

> $$
> \rho_{[\mathrm{neu}\leftarrow\mathrm{alt}]}(R):= \{t'|t'(R-\mathrm{alt})=t(R-\mathrm{alt}) \land t'(\mathrm{neu})=t(\mathrm{alt})\}
> $$

---

[cat](<https://de.wikipedia.org/wiki/Cat_(Unix)>),[sed](<https://de.wikipedia.org/wiki/Sed_(Unix)>), [grep](https://de.wikipedia.org/wiki/Grep), [cut](<https://de.wikipedia.org/wiki/Cut_(Unix)>), [awk](https://de.wikipedia.org/wiki/Awk), [join](<https://de.wikipedia.org/wiki/Join_(Unix)>),
[comm](https://en.wikipedia.org/wiki/Comm), [diff](https://de.wikipedia.org/wiki/Diff), [uniq](https://en.wikipedia.org/wiki/Uniq) und [sort](<https://de.wikipedia.org/wiki/Sort_(Unix)>)

---

![bg](#148)
![](#fff)

## <!--fit--> Quelle

http://matt.might.net/articles/sql-in-the-shell/

---

![bg](#148)
![](#fff)

![bg 40% opacity blur](https://s.gravatar.com/avatar/b697f623bef1a9d58326f850ec184aa6?s=80)

## <!--fit--> Martin Funk ([@eigenfunk](https://github.com/eigenfunk))

https://github.com/eigenfunk/sql-in-the-shell

---

![bg](#123)
![](#fff)

##### <!--fit--> [Marp CLI](https://github.com/marp-team/marp-cli) + [GitHub Pages](https://github.com/pages) | [Netlify](https://www.netlify.com/) | [ZEIT Now](https://zeit.co/now)

##### <!--fit--> 👉 The easiest way to host<br />your Marp deck on the web

---

### <!--fit--> :ok_hand:
