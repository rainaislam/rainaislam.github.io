// You can also import those.
#import table: cell, header

#let uservars = (
    headingfont: "Times New Roman",
    bodyfont: "Times New Roman",
    fontsize: 11.3pt, // 10pt, 11pt, 12pt
    linespacing: 8pt,
    blockspacing: 12pt,
)

#let setrules(uservars, headervars, doc) = {
    set text(
        font: uservars.bodyfont,
        size: uservars.fontsize,
        hyphenate: false,
    )

    set list(
        spacing: uservars.linespacing,
        tight: true,
    )

    set par(
        leading: uservars.linespacing,
        justify: true,
        spacing: 18pt,
    )

    show link: set text(rgb("#26428b")) 

    set block(
       above: uservars.blockspacing,
    )

    set table(
        stroke: (x, y) => if y == 0 {
            (bottom: 0.3pt + black)
        },
        align: (x, y) => (
            if x > 0 { center }
            else { left }
        )
    )

    set page(
        paper: "us-letter", // a4, us-letter
        margin: (
            y: 0.75in,
            x: 0.75in, 
        ), // 1.25cm, 1.87cm, 2.5cm
        header-ascent: 5mm, // gap between header and body
        header: [
            #set align(center)
            #set text(size:10pt)
            #table(
                //fill: blue,
                columns: (1fr, 1fr),
                cell(
                    align: left,
                    [*#headervars.name* (#headervars.description)]
                ), 
                // cell(
                //     align: center, 
                //     [#h(0.3cm) #headervars.email]
                // ), 
                cell( align: right, [#link(headervars.website)])
            )
        ],
        footer: context [
          #set text(size:10pt)
          #set align(center)
          #counter(page).display(
            "1 of 1",
            both: true,
          )
        ],
        // minimize the gap between page header and body
    )

    doc
}

// show rules
#let showrules(uservars, doc) = {
    // Name title/heading
    show heading.where(
        level: 1,
    ): it => block(
      width: 100%,
    )[
        #set align(center)
        #set text(
            rgb("#26428b"), 
            font: uservars.headingfont, 
            size: 16pt,
            weight: "bold"
        )
        #smallcaps(it.body)
    ]
    doc
}

#let init(doc, headervars) = {
    doc = setrules(uservars, headervars, doc)
    doc = showrules(uservars, doc)
    doc
}