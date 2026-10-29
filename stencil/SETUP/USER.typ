#import "ELEMENTS.typ": ELEM

// User-defined commands
// ---------------------

#let noind() = context {
  h(-par.first-line-indent.amount)
}
