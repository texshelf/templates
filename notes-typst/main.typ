#let course = "Course Name"
#let author = "A. U. Thor"

#set document(title: course + " notes", author: author)
#set page(
  paper: "a4",
  margin: (x: 2.2cm, y: 2.5cm),
  header: context {
    if counter(page).get().first() > 1 [
      #text(size: 9pt)[#course #h(1fr) #author]
    ]
  },
  numbering: "1",
)
#set text(size: 11pt, lang: "en")
#set par(justify: true)
#set heading(numbering: "1.1")

#let definition(title, body) = block(
  width: 100%,
  inset: (left: 10pt, y: 6pt),
  stroke: (left: 2pt + rgb("#185442")),
)[*Definition (#title).* #body]

#let example(body) = block(
  width: 100%,
  inset: (left: 10pt, y: 6pt),
  stroke: (left: 2pt + luma(160)),
)[*Example.* #body]

#text(size: 20pt, weight: "bold")[#course]

Notes by #author

#outline(depth: 2)

= First lecture

== Main idea

Write the one-sentence version of the lecture here before the details.

#definition("Derivative")[
  The derivative of $f$ at $x$ is
  $ f'(x) = lim_(h -> 0) (f(x + h) - f(x)) / h. $
]

#example[
  For $f(x) = x^2$ the limit gives $f'(x) = 2x$.
]

== Open questions

- Things to ask in the next class.
