#set page(paper: "us-trade", margin: 1.000in)
#set par(justify: true)
#set text(font: "Crimson Pro", size: 10pt)

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
  title: [#pkg-ver Manual],
  author: this-pkg.authors,
  description: [#pkg-ver Manual],
  keywords: this-pkg.keywords,
  date: datetime.today(),
)

#show title: it => {
  set text(size: 17pt)
  set align(center)
  block(width: 66%, height: 48pt)[
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
      #link("https://github.com/cnaak/canyon.typ") \
      #datetime.today().display()
    ],
  )
]
#v(1em)

#import "@preview/untypsignia:0.1.1": *

#let typst() = [#text(font: "Buenard", hyphenate: false)[#typstmark()]]

= Canyon's End User in Full Control Approach

Mainstream #typst() templates are written so as to bring functionality and to be used in an `#import` then `#show` workflow; however, that frequently comes at the cost of introducing (i) new
syntax and (ii) opaque template-side code and settings.

Any template end user that had the need to customize things not anticipated or provided for by the template's author have experienced this shortcoming.

Canyon (`canyon-0.1.0`) explores a different approach in which a new canyon-based document is a book _stencil_ that users can freely edit and adapt, with:

- _No_ opaque template-side code or settings;
- _No_ canyon `#import` statements;
- _No_ canyon-specialized `#show` rules;
- _Full access_ to the entire #typst() project;
- The _familiar_ #typst() syntax to work with; and
- Full _separation of concepts_ for (i) metadata, (ii) configuration, (iii) elements, (iv)
  layout, and (v) contents.

Therefore, canyon users have access to _all_ document settings as if they had manually started writing the document from scratch on their own---except they hadn't!---and thus have _full
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
] <fig:thumbnail>

== Stencil Overview

The stencil tree delivered to the end user upon template instantiation---either through creating a new document from template in `typst.app`, or through the `typst init` command line on a
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
  #set text(size: 1em / 1.1892)
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

The numbered `1-FRONT`, `2-BODY`, and `3-BACK` directories are for (i)~front, (ii)~body, and (iii)~back-matter book sections---the numbering is to maintain sorting order, specifically on
`typst.app` files environvent---the `RES` dir is for document resource files---figures, bibliography, etc.---, and the `SETUP` dir is for document-wide metadata and settings, as well as for
3rd-party package settings.

= Suggested Canyon Workflows (Quick Start)

End users are free to adopt any book-writing workflow as they see fit (or even adapt the stencil to something else, as a manual); however, the following ones are suggested as a quick start, for
their simplicity, shallow learning curve, and perceived effectivity:

== The Basic Workflow: Metadata and Contents

- Quickly editing `SETUP/META.typ` for document _metadata_;
- Replacing the image placeholders on `SETUP/ELEMENTS.typ` with your actual cover/chapter art `RES/<images>`;
- Being up and running for _content_ `2-BODY/<chapters>` creation and adaptation;
- Simply adjust book front- (`1-FRONT/<sections>`) and back- (`3-BACK/<sections>`) matter _contents_.

The scope of the `META` dictionary defined in `SETUP/META.typ` is the entire book, and includes, as of #pkg-ver the `title`, `subtitle`, `author`, `auth`, `address`, `description`, `date`, and
`keywords` entries.

This workflow end-result will look like @fig:thumbnail except with your personalized artwork, metadata, contents, and general front- and back-matter portions.

== The Configuration Workflow: General Settings

- All the Basic workflow with:
- Quickly setting _general document configurations_ on `SETUP/CONFIG.typ`;
- Editing `__setup.typ` files in the `1-FRONT`, `2-BODY`, and `3-BACK` template stencil directories to more finely control how the corresponding _broad book_ sections are displayed.

The scope of the `CONFIG` dictionary defined in `SETUP/CONFIG.typ` is _main book settings_, and includes, as of #pkg-ver the main `lang`, `paper`, `size`, `font`s, `color`s, and `num-sep`s,
i.e., reference chapter-to-item number separarators, as the `\u{2013}` in "Problem 1--1", for instance.

This workflow end-result improves upon the Basic one by setting custom language, paper, book matter sections, text size, fonts, and broad color scheme.

== The Fine-Grained Workflow: Element and Layout

- General configuration workflow with:
- Editing `SETUP/ELEMENTS.typ` for fine-grained element _customizations_ such as: (i) the set of typst native `page`, `par`, `text`, and `block` elements; and (ii) custom `canyon` elemens, such as: `exhibit` (for code listings, examples, etc.), and `problem` (for textbooks); or even (iii) creating your own custom element types;

The scope of the `ELEM` dictionary defined in `SETUP/ELEMENTS.typ` is _various pre-defined book elements_, and includes, as of #pkg-ver, native #typst() _elements_ such as: `page`, `par`,
`text`, and `block`---meaning a _plurality_ of _custom_ {`page`, `par`, `text`, and `block`} setting definitions.

These were designed to be _fully generic_, thus accepting _all valid_ named parameter definitions as these native #typst() elements can accept---not just a subset thereof---owing to the way
this information is used in conjunction with #typst()'s spreading (`..`) operator on dictionaries as illustrated on @fig:ELEM.page.half-title.

This workflow end-result improves upon the Configuration by allowing for _a highly customized book_, than can bear little to no resemblance to the default canyon book style, hopefully achieved
without too much pain for the end user.

#figure(
  caption: "Sample canyon element definition and usage design, highlighting its expressiveness and full versatility",
  box(
    width: 100%,
    inset: 1em,
    radius: 1em,
    fill: gray.mix(white),
    stroke: 0.6pt + black,
  )[
  #set text(size: 1em / 1.1892)
  #set align(left)
  In `SETUP/ELEMENTS.typ` #pkg-ver defines, among other variants, the following `ELEM.page` entries as a dictionaries of valid #typst() `page` function named arguments:
  ```typst // blank page
#ELEM.page.insert("blank", (
  paper: CONFIG.paper,
  margin: margins.graphic,
  header: none,
  background: none,
  fill: none,
  numbering: none,
))

  // half-title (book cover) page
#ELEM.page.insert("half-title", ELEM.page.blank + (
  background: image(cover, width: 100%),
))```

  This means that `ELEM.page.half-title` "inherits" (builds upon) `ELEM.page.blank` with a overridden (custom) `background` setting.

  This definition allows it to be used as:

  ```typst
  #page(..ELEM.page.half-title)[
    ...
  ]```
  in `1-FRONT/half-title.typ` for actually producing the half-title page.

  Canyon element definitions are programatically _expressive_---as `half-title` page is just the `blank` page with a custom `background`---while maintaining full flexibility---as nothing
  prevents an end user to add any or all of the valid #typst() `page` named arguments to it, such as `binding` or `columns`, etc., according to #typst()'s documentation.
  ]
) <fig:ELEM.page.half-title>

= Release Summary

- `0.1.0` - initial release

= Citing

This package can be cited with the following bibliography database entry:

#box(
  width: 100%,
  inset: 1em,
  radius: 1em,
  fill: gray.mix(white),
  stroke: 0.6pt + black,
)[
  #set text(size: 1em / 1.1892)
```yml
canyon-package:
  type: web
  author: Naaktgeboren, C.
  title: "Canyon: A Book Template That Puts You in Full Control"
  url: https://github.com/cnaak/canyon.typ
  version: 0.1.0
  date: 2026-04-17
```
]

