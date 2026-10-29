#import "../SETUP/META.typ": META
#import "../SETUP/ELEMENTS.typ": ELEM
#import "../SETUP/USER.typ": *

= Preface

Here goes the Preface.

#v(2fr)

#{
  set par(..ELEM.par.bare)
  align(left)[
    #META.address.short \
    #META.date.display("[day]/[month]/[year]") \
  ]
  v(12mm)
  align(right)[
    #META.author
  ]
}

#v(1fr)
