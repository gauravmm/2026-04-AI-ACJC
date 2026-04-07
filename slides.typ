#import "@preview/metropolyst:0.1.0": config-info, metropolyst-theme, slide, title-slide
#import "@preview/touying:0.6.1": config-common, config-page

#let palette = (
  ink: rgb("#080830"),
  night: rgb("#18135B"),
  violet: rgb("#522D9E"),
  magenta: rgb("#A05EBB"),
  cyan: rgb("#8EEBFF"),
  amber: rgb("#FFB35C"),
  paper: rgb("#F6F1FF"),
  mist: rgb("#CFC4F8"),
  panel: rgb("#22194F"),
)

#let accent(body) = text(fill: palette.cyan, body)
#let warm(body) = text(fill: palette.amber, body)
#let callout(body) = block(
  width: 100%,
  inset: 16pt,
  radius: 12pt,
  fill: palette.panel,
  stroke: 1pt + palette.magenta,
)[#body]

#let title-backdrop() = box(width: 100%, height: 100%, clip: true)[
  #place(
    top + left,
    image("images/title.png", width: 100%, height: 100%, fit: "cover"),
  )
]

#show strong: it => text(weight: 700, fill: palette.paper, it.body)

#show: metropolyst-theme.with(
  font: ("Roboto", "DejaVu Sans"),
  title-font: ("Roboto", "DejaVu Sans"),
  header-font: ("Roboto", "DejaVu Sans"),
  accent-color: palette.cyan,
  line-separator-color: palette.magenta,
  progress-bar-color: palette.cyan,
  progress-bar-background: palette.night,
  header-background-color: palette.violet,
  focus-background-color: palette.violet,
  focus-text-color: palette.paper,
  main-background-color: palette.ink,
  main-text-color: palette.paper,
  footer-text-color: palette.mist,
  config-info(
    title: [AI will take your lunch.],
    subtitle: [Learn to work with AI before it learns to work around you.],
    author: [Dr. Gaurav Manek],
    date: "2026-04-16",
    institution: [A*STAR],
    logo: [#text(fill: palette.cyan, weight: 700)[AI]],
  ),
)

// #place(top + left, rect(width: 100%, height: 100%, fill: rgb(5, 6, 28, 42%), stroke: none))
// #place(top + left, rect(width: 58%, height: 100%, fill: rgb(8, 8, 48, 42%), stroke: none))

#slide(
  config: config-page(
    header: none,
    background: title-backdrop(),
    footer: none,
  )
    + config-common(freeze-slide-counter: true),
)[

  #place(top + left, dx: 188pt, dy: 76pt, [
    #text(size: 48pt, fill: palette.paper, weight: 700)[is coming for your lunch.]\
    #box(fill: palette.night.transparentize(30%), inset: (y: 12pt), outset: (x: 12pt), radius: 12pt, text(
      size: 24pt,
      fill: palette.mist,
    )[Learn to work with AI before it learns to work around you.])
  ])

  #place(bottom + left, dx: 0pt, dy: 0pt, box(outset: 12pt, radius: 12pt, fill: palette.night.transparentize(20%))[
    #text(size: 24pt, fill: palette.cyan, weight: 700)[Dr. Gaurav Manek]\
    #text(size: 20pt, fill: palette.mist)[A*STAR]
  ])
]

#slide(title: [Why this look works])[
  #callout[
    The deck now uses the same visual language as the title art:
    #v(0.5em)
    - Deep navy backgrounds to match the night sky
    - #accent[Electric cyan] for emphasis, links, and progress
    - #text(fill: palette.magenta)[Neon magenta] for separators and panels
    - #warm[Warm amber] for contrast when you want a human note
  ]
]
