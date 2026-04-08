#import "@preview/touying:0.6.1": config-common, config-page, pause, speaker-note
#import "@preview/metropolyst:0.1.0": config-info, metropolyst-theme, slide, title-slide
#import "@preview/tiaoma:0.3.0"

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
  inset: (y: 16pt),
  outset: (x: 16pt),
  radius: 12pt,
  fill: palette.panel,
  stroke: 1pt + palette.magenta,
)[#body]

#let graphic-stub(label, width: 100%, height: 100%) = box(
  width: width,
  height: height,
  inset: 24pt,
  radius: 18pt,
  fill: palette.panel.transparentize(15%),
  stroke: 1.5pt + palette.magenta,
  clip: true,
)[
  #place(center, [
    #text(fill: palette.mist, weight: 700)[Graphic Stub]\
    #text(fill: palette.cyan)[#label]
  ])
]

#let backdrop(image-path, dim: 0%) = box(width: 100%, height: 100%, clip: true)[
  #place(
    top + left,
    image(image-path, width: 100%, height: 100%, fit: "cover"),
  )
  #if dim != 0% [
    #place(
      top + left,
      rect(width: 100%, height: 100%, fill: palette.night.transparentize(dim), stroke: none),
    )
  ]
]

#let default-slide-config(..args) = config-page(
  background: backdrop("images/bg.png", dim: 20%),
  header: none,
  margin: (top: 24pt, left: 24pt, right: 24pt, bottom: 24pt),
  ..args,
)

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
    author: [Dr. Gaurav Manek],
    date: "2026-04-16",
    institution: [A*STAR],
    logo: [#text(fill: palette.cyan, weight: 700)[AI]],
  ),
)

#set text(size: 24pt)

// #place(top + left, rect(width: 100%, height: 100%, fill: rgb(5, 6, 28, 42%), stroke: none))
// #place(top + left, rect(width: 58%, height: 100%, fill: rgb(8, 8, 48, 42%), stroke: none))

#slide(
  config: config-page(
    header: none,
    background: backdrop("images/title.png"),
    footer: none,
  )
    + config-common(freeze-slide-counter: true),
)[

  #place(top + left, dx: 188pt, dy: 76pt, [
    #text(size: 48pt, fill: palette.paper, weight: 700)[is coming for your lunch.]
  ])

  #place(bottom + left, dx: 0pt, dy: 0pt, box(outset: 12pt, radius: 12pt, fill: palette.night.transparentize(20%))[
    #text(fill: palette.cyan, weight: 700)[Dr. Gaurav Manek]\
    #text(size: 20pt, fill: palette.mist)[A*STAR]
  ])
]

== By The Time You Graduate
#slide(
  config: default-slide-config(),
)[
  #align(center)[
    For two bubble teas a month, you can rent an intelligence that

    #box(width: 200%, fill: palette.ink, outset: 12pt)[
      #set text(fill: palette.violet)
      #grid(rows: 3, columns: 1, gutter: 14pt)[
        searches, remembers, brainstorms, compares, imitates, rehearses, maps, annotates, drafts
      ][
        summarizes, translates, plans,
        #text(fill: palette.paper)[writes, explains, argues, tutors, codes, creates]
        , revises, designs, analyzes
      ][
        tests, visualizes, prototypes, researches, refactors, optimizes, composes, outlines, automates, iterates
      ]
    ]
    #v(.4em)
    #pause

    It can help with

    #box(width: 180%, fill: palette.ink, outset: 12pt)[
      #text(fill: palette.violet)[history, economics, ]
      #text(fill: palette.paper)[essays, calculus, biology, chemistry, art]
      #text(fill: palette.violet)[, design, finance, law]
    ]
    #v(.4em)#pause

    It never needs sleep, motivation, or a lunch break.
    #v(0em)#pause

    It is not always right, but it is\
    always #warm[available], always #warm[fast], and always #warm[ready] to try again.
  ]
]

== AI Is Already Here
#slide(config: default-slide-config())[
  #align(center)[
    #image("images/ai-is-already-here.png", height: 90%)
    #v(1fr)
    #place(bottom + center, callout[
      AI can already help with #accent[writing], #accent[revision], #accent[code], #accent[images], and #accent[planning].
    ])
  ]
]
#speaker-note[
  This is not a future demo anymore. This is happening today.
]
// Graphic: collage of AI outputs on one desk: essay feedback, code editor, generated image, spreadsheet, and notes.
// Tone: busy and energetic, like one student suddenly having many extra capabilities.
// Purpose: show breadth without explaining technical details.


== The Question
#slide(config: default-slide-config())[
  #align(center)[
    #image("images/the-question.png", width: 100% + 48pt)
    #v(1fr)
    #place(bottom + center, callout[
      If a car goes #accent[faster], why do you still need to run?\
      If AI is #accent[quicker], what are you still in school to learn?
    ])
  ]
]
#speaker-note[
  - The car goes faster. We still run.
  - Better tools do not remove human effort; they #warm[change what human effort is for].
  - Learning is still how you build judgment, taste, and control.
]
// Graphic: a car with a blurred motion effect, while the driver is still visible and focused.
// Tone: provocative question, with a mix of excitement and uncertainty.
// Purpose: set up the central metaphor of the talk and the main challenge.


== The Real Competition
#slide(config: default-slide-config())[
  #place(top + center, dy: -24pt)[
    #image("images/the-real-competition.png", width: 100% + 48pt)
  ]
  #place(bottom + center, callout[
    #warm[AI is _not_ competing with you.] The person using AI well is.
  ])
]
#speaker-note[
  - Same person, same task, different tools.
  TODO: explain this using the ??? paradox
]
// Graphic: split screen of the same student doing the same assignment twice, one overwhelmed and one augmented by AI tools.
// Tone: sharp contrast, visually easy to understand at a glance.
// Purpose: make the "AI won't replace you, a person with AI might" idea memorable.

== Do Not Wait for Permission
#slide(config: default-slide-config(margin: (left: 0pt)), composer: (
  auto,
  1fr,
))[
  #image("images/do-not-wait-for-permission.png", height: 120%)
][
  You are entering university and work just as the rules are shifting.

  That is risky, but it is also an opportunity.

  #pause
  #callout[
    _Nobody_ knows what jobs will look like three years from now.
  ]

  #pause
  Even institutions are experimenting.

  Waiting for an official syllabus is too slow.
]
#speaker-note[
  - Do Not Wait for Permission
  - The world is changing fast, and the rules are not set yet.
  - This is a risk, but it is also a generational responsibility and opportunity.
  - The last time this much change happened was the internet, and the students who experimented early had a huge advantage.
]
// Graphic: a classroom or lecture hall overlaid with loading bars, revision marks, or "updating..." motifs.
// Tone: systems moving slowly while technology races ahead.
// Purpose: justify self-directed learning without sounding anti-school.

== Start Experimenting Now
#slide(config: default-slide-config(margin: (left: 0pt, top: 0pt, bottom: 0pt)), composer: (
  auto,
  1fr,
))[
  #v(1fr)
  #image("images/start-experimenting-now.png", width: 8cm)
  #v(1fr)
][
  #callout[
    Experiment early, #warm[while mistakes are still cheap.]
  ]

  #pause
  Open an account and use it regularly.

  Make it teach you, critique your work, generate ideas.

  Use it to make art and music, to take notes, and to revise your work.

  #pause
  Try code, art, music, notes, or revision prompts.

  See what breaks, #warm[then learn how to recover.]
]
#speaker-note[
  - Do not wait for a perfect use case.
  - The point is to build instinct by trying many small experiments.
  - Learn where AI helps, where it fails, and how to recover when it fails.
]
// Graphic: a challenge board or checklist styled like a 7-day sprint, with tasks getting ticked off.
// Tone: playful, action-oriented, slightly game-like.
// Purpose: convert urgency into a concrete first step.

== How To Work With AI
#slide(config: default-slide-config(margin: (left: 24pt, top: 0pt, bottom: 0pt)), composer: (
  auto,
  1fr,
))[
  #v(1fr)
  #image("images/how-to-work-with-ai.png", height: 80%)
  #v(1fr)
][
  #callout[
    Use AI in diverse ways to experience its strengths and weaknesses.
  ]

  *Tutor:* ask it to explain things at your level.

  *Sparring partner:* ask it to challenge your reasoning, and defend your position. Get another AI to judge the debate.

  *Intern:* let it research topics and draft email replies.

  *Automator:* give it repetitive work. Have it sort out your files, convert notes into flash cards, etc.
]
#speaker-note[
  - Tutor: ask it to explain things at your level. Have it explain things you do understand to check it. Have it explain things in different ways, and quiz you.
  - Sparring partner: ask it to challenge your reasoning, and defend your position. Get another AI to judge the debate.
  - Intern: let it research topics and draft email replies, then revise and rewrite them yourself. Use it to brainstorm ideas, then pick the best ones and develop them yourself.
  - Automator: give it repetitive work, then check the result. Have it read your emails and draft replies, sort out your files, convert notes into flash cards, etc.
]
// Graphic: four bold cards or panels, each showing one role with a simple icon and an example task.
// Tone: structured and practical, less cinematic than earlier slides.
// Purpose: turn a vague idea into a usable mental model.

== Use It, Do Not Surrender To It
#slide(config: default-slide-config(margin: (left: 0pt, top: 0pt, bottom: 0pt)), composer: (
  auto,
  1fr,
))[
  #image("images/use-it-do-not-surrender-to-it.png", height: 100%)
][
  AI is powerful, but your job is still to #accent[verify], #accent[decide], and #accent[take responsibility].

  #callout[
    You are in the driver's seat.
  ]#pause

  It is often wrong.

  It will be *confidently* wrong.

  If you stop thinking, you lose the only real advantage you have.
]
#speaker-note[
  - AI can be wrong, and it can sound confident while being wrong.
  - Do not surrender judgment.
  - The value comes from thinking at a higher level, not from switching your brain off.
]
// Graphic: human hand on the steering wheel while an AI dashboard suggests routes and actions.
// Tone: confident human control, not anti-AI fear.
// Purpose: keep the talk credible by acknowledging limits and judgment.


== Ocellivision
#slide(config: default-slide-config(), composer: (
  auto,
  1fr,
))[
  #image("assets/mug.png", width: 8cm)
][
  *At Ocellivision, we're building the future of microscopes for cancer surgery.*

  We're developing AI tools that are #emph[accurate], #emph[explainable], and #emph[auditable], so we can *trust* them.

  There's no blueprint for how to do this, so we have to experiment and learn as we go.
]
#speaker-note[
  - for highly regulated medical paperwork: the systems, records, and checks that prove a medical product is made safely and consistently.
  - We don't have time to wait for perfect solutions, so we build the best tools we can now, and then we learn from using them.
  - This is the same mindset I encourage students to take with AI in their learning: start experimenting, learn from it, and build your instincts.
]


== Closing Challenge
#slide(config: default-slide-config(), composer: (
  auto,
  1fr,
))[
  #place(top + left)[
    #align(left)[
      *Learn to work with AI #warm[now],\
      #warm[before] the world quietly starts expecting you to.*
    ]
  ]
  #place(bottom + center, dy: 24pt)[
    #image("images/closing-challenge.png", width: 100% + 48pt, height: 100%)
  ]
]
#speaker-note[
  - Start early.
  - Build instincts.
  - Arrive at university already experimenting.
  - Learn to work with AI before it learns to work around you.
]

== Ending Slide
#slide(
  config: config-page(
    header: none,
    background: backdrop("images/title.png"),
    footer: none,
    margin: 0pt,
  ),
)[

  #place(horizon + right, dx: -48pt)[
    #align(center + horizon)[
      #box(fill: palette.paper, inset: 1em, radius: .25em, stroke: 2pt + palette.mist)[
        #link("https://www.gauravmanek.com/lectures/2026/ai-acjc/")[
          #tiaoma.qrcode("https://www.gauravmanek.com/lectures/2026/ai-acjc/", options: (scale: 4.0), width: 8cm)
        ]
        #text(fill: palette.ink, weight: 700)[Scan for more!]
      ]
    ]
  ])


]
