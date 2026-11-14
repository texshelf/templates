#set document(title: "An Example Title", author: "A. U. Thor")
#set page(paper: "a4", margin: 2.5cm, numbering: "1")
#set text(size: 11pt, lang: "en")
#set par(justify: true)
#set heading(numbering: "1.1")
#set math.equation(numbering: "(1)")

#align(center)[
  #text(size: 17pt, weight: "bold")[An Example Title]
  #v(0.4em)
  A. U. Thor
  #v(0.2em)
  #datetime.today().display("[month repr:long] [day], [year]")
]

#v(1em)
#pad(x: 2em)[
  *Abstract.* One paragraph that says what the document is about and what it
  concludes.
]

= Introduction

Start with the question the document answers. Cite earlier work like this
@knuth1984, and refer to equations by label: see @eq-energy.

$ E = m c^2 $ <eq-energy>

= Results

@tab-example shows how to set a table.

#figure(
  table(
    columns: 3,
    stroke: none,
    align: (left, right, right),
    table.hline(),
    table.header[Sample][Mass (g)][Error (g)],
    table.hline(stroke: 0.5pt),
    [A], [12.4], [0.1],
    [B], [15.9], [0.2],
    table.hline(),
  ),
  caption: [Example measurements.],
) <tab-example>

#bibliography("refs.bib")
