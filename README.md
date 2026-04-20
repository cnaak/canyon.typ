# Canyon: A Book Template That Puts You in Full Control

Mainstream typst templates are written so as to bring functionality and to be used in an
`#import` then `#show`  workflow; however, that frequently comes at the cost of introducing (i)
new syntax and (ii) opaque template-side code and settings.

Canyon (`canyon-0.1.1`) explores a different approach in which a new canyon-based document is a
book _stencil_ that users can freely edit and adapt, with:

- _No_ opaque template-side code or settings;
- _No_ canyon `#import` statements;
- _No_ canyon-specialized `#show` rules;
- _Full access_ to the entire typst project;
- The _familiar typst syntax_ to work with; and
- Full _separation of concepts_ for (i) metadata, (ii) configuration, (iii) elements, (iv)
  layout, and (v) contents.

Therefore, canyon users have access to _all_ document settings as if they had manually started
writing the document from scratch on their own—except they hadn't!—and thus have _full access to
everything typst_ in that project.

For additional info, please, check the [Manual](manual.pdf).

## Overview

Out-of-the-box canyon books come with the following:

1. (i) Front-matter; (ii) Body; and (iii) Back-matter book structure;
1. (i) Cover page, and (ii) numbered Chapter page images;
1. All `#set` and `#show` rules are accessible; hence, customizable;
1. The "openright" chapter pagination—through `#pagebreak(to: "odd")`;
1. Front-matter with Title pages; Credits; Contents; List of Figures, Tables, Equations, and
   Exhibits; and a Preface;
1. Book body with regular Chapters (single Part);
1. Back-matter with Appendix, Bibliography, Glossary, Index, and Discalimers;
1. Figures, Tables, Exhibits, Problems, and Equations are Chapter-numbered: `1.1` instead of
   `1`, with configurable separators by type _group_, i.e., a separate one for:  (i) Equations,
   (ii) Figures and Tables, (iii) Exhibits, and (iv) Problems;
1. A simple and configurable 3-color system with: (i) a thematic color (default: _dark indigo_),
   (ii) a page background color (default: _light sepia_), and (iii) a cover text color (default:
   _dark indigo_).

A _selection_ of canyon book pages using default settings are grouped in the thumbnail below:

![Ordered subset of canyon pages: sample (i) front-matter: half-title, title, contents, and preface; (ii) book body; and (iii) back-matter pages](https://raw.githubusercontent.com/cnaak/canyon.typ/refs/heads/dev/thumbnail.png)

## Suggested Canyon Workflows (Quick Start)

End users are free to adopt any book-writing workflow as they see fit (or even adapt the stencil
to something else, as a manual); however, the following ones are suggested as a quick start, for
their simplicity, shallow learning curve, and perceived effectivity:


### The Basic Workflow: Metadata and Contents

- Quickly editing `SETUP/META.typ` for document _metadata_;
- Replacing the image placeholders on `SETUP/ELEMENTS.typ` with your actual cover/chapter art `RES/<images>`;
- Being up and running for _content_ `2-BODY/<chapters>` creation and adaptation;
- Simply adjust book front- (`1-FRONT/<sections>`) and back- (`3-BACK/<sections>`) matter _contents_.

The scope of the `META` dictionary defined in `SETUP/META.typ` is the entire book, and includes,
as of `canyon-0.1.1` the `title`, `subtitle`, `author`, `auth`, `address`, `description`, `date`, and
`keywords` entries.

This workflow end-result will look like the above thumbnail except with your personalized
artwork, metadata, contents, and general front- and back-matter portions.

### The Configuration Workflow: General Settings

- All the Basic workflow with:
- Quickly setting _general document configurations_ on `SETUP/CONFIG.typ`;
- Editing `__setup.typ` files in the `1-FRONT`, `2-BODY`, and `3-BACK` template stencil directories to more finely control how the corresponding _broad book_ sections are displayed.

The scope of the `CONFIG` dictionary defined in `SETUP/CONFIG.typ` is _main book settings_, and
includes, as of `canyon-0.1.1` the main `lang`, `paper`, `size`, `font`s, `color`s, and `num-sep`s,
i.e., reference chapter-to-item number separarators, as the `–` in "Problem 1–1", for instance.

This workflow end-result improves upon the Basic one by setting custom language, paper, book
matter sections, text size, fonts, and broad color scheme.

### The Fine-Grained Workflow: Element and Layout

- All the Configuration workflow with:
- Editing `SETUP/ELEMENTS.typ` for fine-grained element _customizations_ such as: (i) the set of typst native `page`, `par`, `text`, and `block` elements; and (ii) custom `canyon` elemens, such as: `exhibit` (for code listings, examples, etc.), and `problem` (for textbooks); or even (iii) creating your own custom element types;

The scope of the `ELEM` dictionary defined in `SETUP/ELEMENTS.typ` is _various pre-defined book elements_, and includes, as of `canyon-0.1.1`, native Typst _elements_ such as: `page`, `par`,
`text`, and `block`—meaning a _plurality_ of _custom_ {`page`, `par`, `text`, and `block`}-setting definitions.

These were designed to be _fully generic_, thus accepting _all valid_ named parameter definitions as these native Typst elements can accept—not just a subset thereof—owing to the way
this information is used in conjunction with Typst's spreading (`..`) operator on dictionaries as illustrated in the [Manual](manual.pdf).

This workflow end-result improves upon the Configuration by allowing for _a highly customized book_, than can bear little to no resemblance to the default canyon book style, hopefully achieved
without too much pain for the end user.

## Release Summary

- `0.1.0` - initial release
- `0.1.1` - added the Manual

## Citing

This package can be cited with the following bibliography database entry:

```yml
canyon-package:
  type: web
  author: Naaktgeboren, C.
  title: "Canyon: A Book Template That Puts You in Full Control"
  url: https://github.com/cnaak/canyon.typ
  version: 0.1.1
  date: 2026-04-20
```

