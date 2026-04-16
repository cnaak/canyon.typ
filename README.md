# Canyon: A user-in-full-control typst book template

Canyon (`canyon-0.1.0`) is a stencil book template that puts users in _full control_.

Typical Typst templates are written so as to bring functionality; however, that frequently comes
at the cost of introducing (i) new syntax and (ii) opaque template-side code and settings.
Canyon explores a different approach in which a new canyon-based document is a book stencil that
users can freely edit and adapt, with _no_ opaque template-side code or settings.

Canyon users have access to _all_ document settings—such as: metadata, configuration,
elements—as if they had manually started writing the document from scratch on their own (except
they hadn't!—and thus have full access to everything in that project.

## Overview

_Everything_ in canyon can be customized as far as allowed in Typst.

Out-of-the-box canyon books come with the following:

1. (i) Front-matter; (ii) single-part Body; and (iii) Back-matter book structure;
1. (i) Cover page, and (ii) numbered Chapter page images;
1. All `#set` and `#show` rules are accessible; hence, customizable;
1. The `openright` chapter pagination;
1. Front-matter with Title pages; Credits; Contents; List of Figures, Tables, Equations, and
   Exhibits; and a Preface;
1. Book body with regular Chapters;
1. Back-matter with Appendix, Bibliography, Glossary, Index, and Discalimers;
1. Separation of concepts for (i) metadata, (ii) configuration, (iii) elements, (iv) layout, and
   (v) contents;
1. Figures, Tables, Exhibits, Problems, and Equations are Chapter-numbered: `1.1` instead of
   `1`, with configurable separators by type _group_, i.e., a separate one for:  (i) Equations,
   (ii) Figures and Tables, (iii) Exhibits, and (iv) Problems;
1. A simple and configurable 3-color system with: (i) a thematic color, (ii) a page background
   color, and (iii) a cover text color.

Thus, selected default canyon book pages look like this:

![thumbnail](https://raw.githubusercontent.com/cnaak/canyon.typ/refs/heads/dev/thumbnail.png)

## Canyon Workflows

Moreover, canyon neatly separates settings from contents, thus enabling book-writing workflow
that can be as basic as:

- Quickly editing `SETUP/META.typ` for document _metadata_: title, author, keywords, and the
  like;

- Being up and running for book (i) front-matter, (ii) body, and (iii) back-matter content
  creation;

Optionally, user can also:

- Edit `SETUP/CONFIG.typ` for quickly setting _general_ document _configurations_ such as:
  language, paper and text sizes, and a _few_ font and color selections;

- Edit `SETUP/ELEMENTS.typ` for _fine-grained_ element _customizations_ such as: (i) typst
  native `page`, `par`, `text`, and `block` ones; and (ii) custom canyon elemens, such as:
  `exhibit` (for code listings, examples, etc.), and `problem` (for textbooks); or even (iii)
  create your own custom element types;

Canyon also offers convenient (i) front-, (ii) body, and (iii) back-matter setups through the
`__setup.typ` files in the `1-FRONT`, `2-BODY`, and `3-BACK` template stencil directories, which
allows for quick and easy (i) _application_ of styles, and (ii) _re-ordering_, _removing_, and
_adding_ of sectionswith complete freedom, thus allowing for far more flexible, high-level
document preparation than show-rule-based templates can achieve, while allowing for the maximum
extent of fine-tuning allowable by typst.

## Release Summary

- `0.1.0` - initial release

## Citing

This package can be cited with the following bibliography database entry:

```yml
canyon-package:
  type: web
  author: Naaktgeboren, C.
  title:
    value: "Canyon: A user-in-full-control typst book template"
    short: "Canyon: A typst book template"
  url: https://github.com/cnaak/canyon.typ
  version: 0.1.0
  date: 2026-04-16
```

