#import "@preview/metropolyst:0.1.0": config-info, metropolyst-theme, slide, title-slide
#import "@preview/touying:0.6.1": config-common, config-page, pause

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
)[#text(size: 24pt, body)]

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
    #text(size: 24pt, fill: palette.cyan, weight: 700)[Dr. Gaurav Manek]\
    #text(size: 20pt, fill: palette.mist)[A*STAR]
  ])
]

#slide(title: [By The Time You Graduate], config: config-page(
  header: none,
  background: backdrop("images/bg.png", dim: 20%),
  margin: 0pt,
))[
  #align(center, text(size: 24pt)[
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
      #text(fill: palette.violet)[history, economics, chemistry, ]
      #text(fill: palette.paper)[essays, calculus, biology, chemistry, and art]
      #text(fill: palette.violet)[, design, finance, law, and philosophy.]
    ]
    #v(.4em)#pause

    It never needs sleep, motivation, or a lunch break.
    #v(0em)#pause

    It is not always right, but it is\
    always #warm[available], always #warm[fast], and always #warm[ready] to try again.
  ])
]

// Graphic: a student desk at night with notes, laptop, bubble tea cups, and a ghostly AI presence woven through the scene like an invisible extra worker.
// Tone: unsettling but plausible, like an unfair advantage that already fits into ordinary student life.
// Purpose: hook attention by making AI feel cheap, broad, tireless, and already close at hand.

#slide(title: [The Question])[
  #callout[
    If AI can do the task #accent[faster], what are you still in school to learn?
  ]

  #v(1em)

  - The car goes faster. We still run.
  - Better tools do not remove human effort; they #warm[change what human effort is for].
  - Learning is still how you build judgment, taste, and control.
]
// Graphic: split image of a sports car beside a runner on a track.
// Tone: slightly funny, slightly confrontational, with enough empty space for a short headline.
// Purpose: open with a visual joke that immediately leads into the core question of the talk.

#slide(title: [AI Is Already Here])[
  #callout[
    AI can already help with #accent[writing], #accent[revision], #accent[code], #accent[images], and #accent[planning].
  ]

  #v(1em)

  - This is not a future demo anymore.
  - Many students are already using it quietly.
  - The baseline for what one person can produce is moving.
]
// Graphic: collage of AI outputs on one desk: essay feedback, code editor, generated image, spreadsheet, and notes.
// Tone: busy and energetic, like one student suddenly having many extra capabilities.
// Purpose: show breadth without explaining technical details.

#slide(title: [Your Timing Matters])[
  #callout[
    You are entering university and work just as the rules start to shift.
  ]

  #v(1em)

  - Older students had a more stable playbook.
  - Your batch will likely be asked to work differently.
  - That is risky, but it is also an opportunity.
]
// Graphic: a road splitting toward "University" and "Work", both disappearing into fog or neon haze.
// Tone: uncertain but not apocalyptic.
// Purpose: make the change feel personal to JC students about to leave school.

#slide(title: [Do Not Wait for Permission])[
  #callout[
    Schools, universities, and companies are still figuring out what "using AI well" even means.
  ]

  #v(1em)

  - Even institutions are experimenting.
  - In many fields, nobody can clearly describe the workflow three years from now.
  - Waiting for an official syllabus is too slow.
]
// Graphic: a classroom or lecture hall overlaid with loading bars, revision marks, or "updating..." motifs.
// Tone: systems moving slowly while technology races ahead.
// Purpose: justify self-directed learning without sounding anti-school.

#slide(title: [The Real Competition])[
  #callout[
    #warm[AI is not the only thing competing with you.] The person using AI well is.
  ]

  #v(1em)

  - Same person, same task, different tools.
  - One version struggles alone.
  - The other uses AI as tutor, editor, and assistant.
]
// Graphic: split screen of the same student doing the same assignment twice, one overwhelmed and one augmented by AI tools.
// Tone: sharp contrast, visually easy to understand at a glance.
// Purpose: make the "AI won't replace you, a person with AI might" idea memorable.

#slide(title: [How To Work With AI])[
  #callout[
    Treat AI as a #accent[tutor], #accent[sparring partner], #accent[intern], and #accent[automator].
  ]

  #v(1em)

  - Tutor: explain things at your level.
  - Sparring partner: challenge your argument and point out gaps.
  - Intern: draft version 1 quickly.
  - Automator: handle repetitive tasks.
]
// Graphic: four bold cards or panels, each showing one role with a simple icon and an example task.
// Tone: structured and practical, less cinematic than earlier slides.
// Purpose: turn a vague idea into a usable mental model.

#slide(title: [Start Experimenting Now])[
  #callout[
    The fastest way to learn is to #warm[try things before you need them badly].
  ]

  #v(1em)

  - Open an account and use it regularly.
  - Make it teach you, critique your work, and generate ideas.
  - Try code, art, music, notes, or revision prompts.
  - See what breaks, then learn how to recover.
]
// Graphic: a challenge board or checklist styled like a 7-day sprint, with tasks getting ticked off.
// Tone: playful, action-oriented, slightly game-like.
// Purpose: convert urgency into a concrete first step.

#slide(title: [Use It, Do Not Surrender To It])[
  #callout[
    AI is powerful, but your job is still to #accent[verify], #accent[decide], and #accent[take responsibility].
  ]

  #v(1em)

  - It can be wrong.
  - It can sound confident while being wrong.
  - If you stop thinking, you lose the real benefit.
]
// Graphic: human hand on the steering wheel while an AI dashboard suggests routes and actions.
// Tone: confident human control, not anti-AI fear.
// Purpose: keep the talk credible by acknowledging limits and judgment.

#slide(title: [Closing Challenge])[
  #callout[
    Learn to work with AI #warm[before] the world quietly starts expecting you to.
  ]

  #v(1em)

  - Start early.
  - Build instincts.
  - Arrive at university already experimenting.
]
// Graphic: a lunch tray on a conveyor belt moving away while one student reaches early and another reacts too late.
// Tone: witty callback to the title, with a sense of urgency and agency.
// Purpose: end on the central metaphor and a clear call to action.
