#import "@preview/lemmify:0.1.5": *

// lemmify setup
#let (
  theorem, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group", lang: "en")

// The template setup
#let config(title, doc) = {

  show: thm-rules

  // latex-like setup
  set text(12pt, font: "New Computer Modern Math")
  set par(leading: 0.55em, first-line-indent: 0em, justify: true)
  show raw: set text(font: "New Computer Modern Mono")
  show par: set block(spacing: 0.55em)
  show heading: set block(above: 1.4em, below: 1em)
  set enum(numbering: "i)")

  // title setup
  align(center)[

    #text(17pt)[ Análisis Funcional I ] \ // subject
    #text(15pt)[#title]

    #text(12pt)[
      #grid(
        columns: (1fr, 1fr),
        align(center)[
          Fernando Nuñez Medina. \
          #link("mailto:fernando@cimat.mx")
        ],
        align(center)[
          Antonio Barragán Romero. \ 
          #link("mailto:antonio.barragan@cimat.mx")
        ]
      )
    ]

  ]

  // shortcuts
  show "e.B":   [espacio de Banach]
  show "e.H":  _ => [espacio de Hilbert]
  show "e.n":  _ => [espacio normado]
  show "e.v":  _ => [espacio vectorial]
  show "f.l":  _ => [funcional lineal]
  show "o.l":  _ => [operador lineal]  
  show "ssi":  _ => [si y solo si]

  doc
}


// My own exercise environment
#let e = counter("exercise")
#let exercise(label, body, number: none) = {
  // label: of the problem in the book

  if number != none {
    e.update(number)
    // let problema = [*Problema  #label*]
  } else {
    e.step()
  }
  // let problema = [*Problema #e.display() #label*]
  box(width: 100%,stroke: 1pt, inset: 1em, [#text(size: 1.6em)[*Problema #context e.display()*] #text(blue)[ #label] \ #body],)
}


#let ip(x, y) = $angle.l #x, #y angle.r$ // internal product
#let cls(S) = $overline(#S)$  // closure
#let conv(S) = $"conv"(#S)$   // convex hull
