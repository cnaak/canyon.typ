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

1. (i) Front-matter; (ii) Body; and (iii) Back-matter book structure;
1. (i) Cover page, and (ii) numbered Chapter page images;
1. All `#set` and `#show` rules are accessible; hence, customizable;
1. The "openright" chapter pagination—through `#pagebreak(to: "odd")`;
1. Front-matter with Title pages; Credits; Contents; List of Figures, Tables, Equations, and
   Exhibits; and a Preface;
1. Book body with regular Chapters (single Part);
1. Back-matter with Appendix, Bibliography, Glossary, Index, and Discalimers;
1. Separation of concepts for (i) metadata, (ii) configuration, (iii) elements, (iv) layout, and
   (v) contents;
1. Figures, Tables, Exhibits, Problems, and Equations are Chapter-numbered: `1.1` instead of
   `1`, with configurable separators by type _group_, i.e., a separate one for:  (i) Equations,
   (ii) Figures and Tables, (iii) Exhibits, and (iv) Problems;
1. A simple and configurable 3-color system with: (i) a thematic color (default: _dark indigo_),
   (ii) a page background color (default: _light sepia_), and (iii) a cover text color (default:
   _light canary_).

A _selection_ of canyon book pages using default settings are grouped in the thumbnail below:

<p align="center">
  <img
    src="https://raw.githubusercontent.com/cnaak/canyon.typ/refs/heads/dev/thumbnail.png"
    alt="thumbnail">
</p>

## Canyon Workflows

Owing to its full customization and separation of concepts approach, canyon enables simple
book-writing workflows, which can be as basic as:

### The Basic (i) Metadata and (v) Contents

*Workflow:*

- Quickly editing `SETUP/META.typ` for document _metadata_;
- Replacing the image placeholders with your actual cover/chapter art;
- Being up and running for book content creation and adaptation (add/delete sections).

The end-result will look like the thumbnail with your artwork, metadata, and contents.

### Including General (ii) Configuration:

*Workflow:*

- Basic workflow with:
- Quickly setting general document _configurations_ on `SETUP/CONFIG.typ`;
- Editing `__setup.typ` files in the `1-FRONT`, `2-BODY`, and `3-BACK` template stencil
  directories to finely control how these book matters components are displayed.

The end-result will have custom language/paper/sections/text size/fonts and broad color scheme.

### Including Fine-Grained (iii) Element and (iv) Layout Customizations:

*Workflow:*

- General configuration workflow with:
- Editing `SETUP/ELEMENTS.typ` for fine-grained element _customizations_ such as: (i) typst
  native `page`, `par`, `text`, and `block` ones; and (ii) custom canyon elemens, such as:
  `exhibit` (for code listings, examples, etc.), and `problem` (for textbooks); or even (iii)
  create your own custom element types;

The end-result can be a highly customized book, than can bear little resemblance to the default
canyon book style, hopefully achieved without too much pain.

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

