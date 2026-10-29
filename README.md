# Canyon: A Book Template That Puts You in Full Control

Mainstream typst templates are written so as to bring functionality and to be used in an
`#import` then `#show`  workflow; however, that frequently comes at the cost of introducing (i)
new syntax and (ii) opaque template-side code and settings.

Canyon (`canyon-0.2.1`) explores a different approach in which a new canyon-based document is a
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

## Thubmnail

A _selection_ of canyon book pages using default settings are grouped in the thumbnail below:

![Ordered subset of canyon pages: sample (i) front-matter: half-title, title, contents, and preface; (ii) book body; and (iii) back-matter pages](https://raw.githubusercontent.com/cnaak/canyon.typ/refs/heads/dev/thumbnail.png)

## Release Summary

- `0.1.0` - initial release
- `0.1.1` - added the [Manual](manual.pdf)
- `0.2.0` - bug fixes and improvements
- `0.2.1` - documentation bug fixes

## Citing

This package can be cited with the following bibliography database entry:

```yml
canyon-package:
  type: web
  author: Naaktgeboren, C.
  title: "Canyon: A Book Template That Puts You in Full Control"
  url: https://github.com/cnaak/canyon.typ
  version: 0.2.1
  date: 2026-10-29
```

