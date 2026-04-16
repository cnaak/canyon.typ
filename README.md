# Canyon: A user-in-full-control typst book template

Canyon (`canyon-0.1.0`) is a stencil book template that puts users in _full control_.

Typical Typst templates are written so as to bring functionality; however, that frequently comes
at the cost of introducing (i) new syntax and (ii) opaque template-side code and settings.
Canyon explores a different approach in which a new canyon-based document is a book stencil that
users can freely edit and adapt, with _no_ opaque template-side code or settings.

Canyon users have access to _all_ document settings—such as: metadata, configuration,
elements—as if they had manually started writing the document from scratch on their own (except
they hadn't!—and thus have full access to everything in that project.

## Example

Out-of-the box, a selection of canyon book pages looks like this:

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

