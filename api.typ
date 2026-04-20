#import "@preview/tidy:0.4.3": *

#set page(paper: "us-trade", margin: 0.75in)
#set par(justify: true)
#set text(font: "Libertinus Serif", size: 10pt)

#let number-until-with(max-level, schema) = (..numbers) => {
  if numbers.pos().len() <= max-level {
    numbering(schema, ..numbers)
  }
}

#set heading(numbering: number-until-with(2, "1.1"))

#show heading.where(level: 1): it => [#set text(size: 14pt);#v(12pt);#it;#v(6pt)]
#show heading.where(level: 2): it => [#set text(size: 12pt);#it;#v(4pt)]
#show heading.where(level: 3): it => [#set text(size:  8pt);#it.body;#v(1pt)]

#let pkg-meta = toml("typst.toml")
#let this-pkg = pkg-meta.package

#let pkg-ver = [#raw(this-pkg.name + "-" + this-pkg.version)]

#set document(
  title: [Package API documentation for #pkg-ver],
  author: this-pkg.authors,
  description: [Package API documentation for #pkg-ver],
  keywords: this-pkg.keywords,
  date: datetime.today(),
)

#show title: it => {
  set text(size: 17pt)
  set align(center)
  block(width: 60%, height: 48pt)[
    #align(center + horizon)[#it]
  ]
}

#show "->": text(font: "Libertinus Serif")[#sym.arrow.r]

#title()

#align(center)[#grid(
    columns: (40%),
    align(center)[
      #set text(size: 0.8em)
      C. Naaktgeboren \
      #link("https://github.com/cnaak/canyon.typ")
    ],
  )
]
#v(1em)

#import "@preview/untypsignia:0.1.1": *

#let typst() = [#text(font: "Buenard", hyphenate: false)[#typstmark()]]

= Canyon's End User in Full Control Approach

Mainstream #typst() templates are written so as to bring functionality and to be used in an
`#import` then `#show` workflow; however, that frequently comes at the cost of introducing (i)
new syntax and (ii) opaque template-side code and settings.

Any template end user that had the need to customize things not anticipated or provided for by
the template's author have experienced this shortcoming.

Canyon (`canyon-0.1.0`) explores a different approach in which a new canyon-based document is a
book _stencil_ that users can freely edit and adapt, with:

- _No_ opaque template-side code or settings;
- _No_ canyon `#import` statements;
- _No_ canyon-specialized `#show` rules;
- _Full access_ to the entire #typst() project;
- The _familiar_ #typst() syntax to work with; and
- Full _separation of concepts_ for (i) metadata, (ii) configuration, (iii) elements, (iv)
  layout, and (v) contents.

Therefore, canyon users have access to _all_ document settings as if they had manually started
writing the document from scratch on their own---except they hadn't!---and thus have _full
access_ to everything #typst() in that project.

= Overview

Out-of-the-box canyon books come with the following:

+ (i) Front-matter; (ii) Body; and (iii) Back-matter book structure;
+ (i) Cover page, and (ii) numbered Chapter page images;
+ All `#set` and `#show` rules are accessible; hence, customizable;
+ The "openright" chapter pagination—through `#pagebreak(to: "odd")`;
+ Front-matter with Title pages; Credits; Contents; List of Figures, Tables, Equations, and Exhibits; and a Preface;
+ Book body with regular Chapters (single Part);
+ Back-matter with Appendix, Bibliography, Glossary, Index, and Discalimers;
+ Figures, Tables, Exhibits, Problems, and Equations are Chapter-numbered: `1.1` instead of `1`, with configurable separators by type _group_, i.e., a separate one for:  (i) Equations, (ii) Figures and Tables, (iii) Exhibits, and (iv) Problems;
+ A simple and configurable 3-color system with: (i) a thematic color (default: _dark indigo_), (ii) a page background color (default: _light sepia_), and (iii) a cover text color (default: _dark indigo_).

A _selection_ of canyon book pages using default settings are grouped in the thumbnail below:

#figure(
  caption: "Ordered subset of canyon pages: sample (i) front-matter: half-title, title, contents, and preface; (ii) book body; and (iii) back-matter pages",
)[
  #image("thumbnail.png", width: 50%)
]

== Stencil Overview

The stencil tree delivered to the end used upon template instantiation---either through creating
a new document from template in `typst.app`, or through the `typst init` command line on a
shell---is shown on @fig:stencil-tree:

#figure(
  caption: "Canyon stencil level-1 tree. Entries followed by a slash are directories.",
  box(
    width: 100%,
    inset: 1em,
    radius: 1em,
    fill: gray.mix(white),
    stroke: 0.6pt + black,
  )[
  #set align(left)
``` 
$ tree -L1F
./
|-- 1-FRONT/
|-- 2-BODY/
|-- 3-BACK/
|-- canyon.typ
|-- RES/
`-- SETUP/
```
  ]
) <fig:stencil-tree>

The numbered `1-FRONT`, `2-BODY`, and `3-BACK` directories are for (i)~front, (ii)~body, and
(iii)~back-matter book sections---the numbering is to maintain sorting order, specifically on
`typst.app` files environvent---the `RES` dir is for document resource files---figures,
bibliography, etc.---, and the `SETUP` dir is for document-wide metadata and settings, as well
as for 3rd-party package settings.

= Suggested Canyon Workflows

End users are free to adopt any book-writing worflow as they see fit (or even adapt the stencil
to something else, as a manual); however, the following ones are suggested as a quick start, for
their simplicity, shallow learning curve, and perceived effectivity:

== The Basic Workflow: Metadata and Contents

- Quickly editing `SETUP/META.typ` for document _metadata_;
- Replacing the image placeholders on `SETUP/ELEMENTS.typ` with your actual cover/chapter art `RES/<images>`;
- Being up and running for _content_ `2-BODY/<chapters>` creation and adaptation;
- Simply adjust book front- (`1-FRONT/<sections>`) and back- (`3-BACK/<sections>`) matter _contents_.

The end-result will look like the thumbnail except with your personalized artwork, metadata,
contents, and general front- and back-matter portions.

== The Configuration Workflow: General Settings

- All the Basic workflow with:
- Quickly setting _general document configurations_ on `SETUP/CONFIG.typ`;
- Editing `__setup.typ` files in the `1-FRONT`, `2-BODY`, and `3-BACK` template stencil directories to more finely control how the corresponding _broad book_ sections are displayed.

The end-result will have custom language/paper/sections/text size/fonts and broad color scheme.


/*
= Package Self Documentation

The sections below are automatically generated by `tidy-0.4.3` based on the source code
documentation annotations on #pkg-ver.

#import "canyon.typ"
#let api = parse-module(
  read("???.typ"),
  name: this-pkg.name,
  scope: (canyon: canyon),
  preamble: "\n"
)

#show-module(
  api,
  style: styles.default,
  first-heading-level: 1,
)
*/

