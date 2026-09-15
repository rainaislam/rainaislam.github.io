
#import "@preview/cv-soft-and-hard:0.1.0": styling, section as base-section, entry as base-entry, subsection, rust, cpp, python, typst-logo, hugo, typescript

#set document(author: "Raina Islam", title: "CV Raina Islam")
#set block(
     above: 8pt,
     below: 8pt,
)

// Space added before each #entry(...) call, independent of the global block spacing above.
// Reimplemented instead of calling the package's entry() because it always emits a hidden
// second grid row (with a 0.6em row-gutter) even when no description is passed.
// The optional description is placed in a second row spanning both columns, so it can use
// the full page width instead of being confined to the left column.
#let entry(left-text, right-text, description: none) = block(above: 8pt, below: 10pt, grid(
  column-gutter: 0pt,
  row-gutter: 10pt,
  columns: (1fr, auto),
  align(left, [#left-text]),
  align(right, [#right-text]),
  ..if description != none { (grid.cell(colspan: 2, description),) } else { () },
))

// Space added before each #section(...) call, independent of the global block spacing above.
#let section(title, note: none) = block(above: 8pt, below: 10pt)[#base-section(title, note: note)]

#set par(
    leading: 8pt,
    justify: true,
)
#set text(
  size: 11pt, 
)

#show: styling
// Section header font size (EDUCATION, SKILLS, etc.)
#show heading.where(level: 2): set text(size: 11pt)
// variable to control the spacing between entries
#set page(
  margin: (left: 1.6cm, right: 1.6cm, top: 1.4cm),
)


#align(center)[
  = Raina Islam\

  #link("https://rainaislam.github.io/", "rainaislam.github.io") |
  #link("https://www.linkedin.com/in/rainaislam577/", "linkedin.com/in/rainaislam577") 
  //| #link("tel:+16674310307", "+16674310307")
]

#v(4pt)
#section("EDUCATION")
#entry(
  [
    *Master of Science (M.Sc.), Biochemistry and Molecular Biology*\ 
    _(University of Dhaka)_\  
    CGPA: 3.70 out of 4.00
  ],
  [_Jan 2025 – Aug 2026_]
)

#entry(
  [
    *Bachelor of Science (B.Sc.), Biochemistry and Molecular Biology*\
    _(University of Dhaka)_ \ 
    CGPA: 3.82 out of 4.00
  ],
  [_2020 – 2024_]
)
//Experience
#section("RESEARCH EXPERIENCE")
#entry(
  [
    *Graduate Student, Nutrition and Health Laboratory*\
    _(Department of Biochemistry and Molecular Biology, University of Dhaka)_\
    _Supervisor: Dr. Md. Zakir Hossain Howlader, Professor_
  ],
  [_Feb 2025 – July 2026_]
)
*Thesis Project:* Exploring genetic association with essential hypertension in Bangladeshi Population through molecular biology techniques.

- Extracted DNA from blood samples of patients and control subjects obtained from a diagnostic center
- Optimized PCR to amplify the target regions and employed the RFLP method for genotyping analysis
- Conducted statistical and computational analyses and prepared data for sequencing

*Related Project:* Investigating the relationship between vitamin D status, genetic variation, and cardiovascular health in the Bangladeshi population through clinical, biochemical, molecular, and computational approaches.

- Measured plasma vitamin D levels using HPLC\
- Extracted DNA from blood samples, performed PCR amplification, primer design and optimization, and PCR-RFLP genotyping
#v(5pt)
#entry(
  [
    *Research Intern*, *Molecular Biology*\
    _(Child Health Research Foundation, Dhaka, Bangladesh)_\
    Short-term internship exploring molecular biology techniques applied to pediatric health research.
    
    - Extracted SARS-CoV-2 RNA using spin column method  
    - Prepared master mix, set up RT-qPCR cycles, and analyzed results  
    - Designed primers for known pathogen targets  
  ],
  [_Aug, 2023_]
)
#section("PUBLICATIONS")

#entry(
  [
    *Peer-Reviewed Article*\
    Prithy NS, Nahar A, Mamun MJI, Rasel MH, Akter F, Tahrim KS, *Islam R*, Emon MEH, Ihsan AB. *Exploring the anti-nociceptive, anti-inflammatory, anti-pyretic, and anti-arthritic activity of methanolic extract of _Desmos chinensis_ and its different solvent fractions: in vivo, in vitro, and in silico intervention.* _Adv Pharmacol Pharm Sci._ 2026;2026:3277644. doi:10.1155/adpp/3277644
  ],
  [_2026_]
)

#section("HONORS AND AWARDS ")
#entry(
  [
    *National Science and Technology Fellowship*  \
    _(Ministry of Science and Technology, Bangladesh)_  \
    Awarded the National Science and Technology Fellowship to support M.S. thesis research through a competitive proposal and interview process.
  ],
  [_2025_]
)
#entry(
  [
    *2nd Runner-Up: The Art of Science Communication*  \
    _(Department of Biochemistry and Molecular Biology, University of Dhaka)_  \
    Team-based competition on science communication; wrote an article and prepared a graphical
abstract to explain a complex molecular biology topic in an accessible storytelling format.
  ],
  [_2024_]
)


#section("TEACHING & MENTORING EXPERIENCE")

#entry(
  [
    *Nutrition and Health Laboratory*\
    _(Department of Biochemistry & Molecular Biology, University of Dhaka)_
  ],
  [_Jan 2026 – July 2026_],
  description: [
    Trained a new cohort of 6 thesis students with no prior wet-lab experience in core molecular biology techniques and biochemical analyses, then assessed their progression to independent bench work.
  ],
)

  #section("SKILLS")
  - *Laboratory Skills:* DNA extraction, RNA extraction, NanoDrop UV spectrophotometry, PCR, Agarose gel electrophoresis, PCR-RFLP, RT-qPCR, SDS-PAGE, HPLC, TLC, Antibiotic Susceptibility test\
  - *Bioinformatics Skills*: Primer design for PCR-RFLP, In silico SNP analysis, SNP functional annotation, RNA-seq data analysis, Molecular docking,Differential gene expression, Sequence alignment, Phylogenetic analysis, Post-translational modification prediction, Proteomic analysis
  - *Computational Tools & Software*: NCBI BLAST, Ensembl Genome Browser, UniProt, dbSNP, RegulomeDB, ExPaSy, MEGA, Primer3Plus, OligoAnalyzer, NEBcutter, UCSC in silico PCR, PyMOL, BIOVIA Discovery Studio, NetworkAnalyst, Chromeleon 6.8, BioRender
  - *Statistical Tools:* GraphPad Prism, SPSS, MS Excel
  - *Programming Language:* Python, R (basic)

#section("UNDERGRADUATE PROJECT")

#entry(
  [
    *Challenges in Prostate Cancer Diagnosis*\
    _(Department of Biochemistry and Molecular Biology, University of Dhaka)_\
    _Supervisors: Dr. Md. Zakir Hossain Howlader, Dr. A.H.M. Nurun Nabi, Dr. Md. Ismail Hosen_

    - Conducted a literature review of current prostate cancer diagnostic approaches, identifying key limitations in sensitivity and specificity
    - Evaluated candidate biomarkers for their potential to enable earlier, non-invasive detection
  ],
  [_Jan 2023_]
)
  
  
  #section("CERTIFICATIONS")
  
  #entry(
  [
    *Bioinformatics for Computer-Aided Drug Designing (CADD)*  \
    _(Panacea Research Center, Dhaka, Bangladesh)_\
  Workshop on structure-based drug discovery, molecular docking, protein–ligand analysis, ADME/T prediction, and molecular dynamics simulations.
  ],
  [_Sep 2024_]
  )
  
  #entry(
  [
    *Cancer Bioinformatics* \ 
    _(BioTed, Dhaka, Bangladesh)_ \
    Training on transcriptomic analysis using RNA-seq data, including workflow construction, read alignment, and differential expression analysis.
  ],
  [_Aug 2024_]
  )
  
  #section("LEADERSHIP AND VOLUNTEERING")
  #entry(
  [
    *Intigra Science Organization*  
  \ Contributed as a content writer, writing short science articles in simple language to make science accessible to school students and broader audiences.
  ],
  [_Nov 2020 – Jan 2022_]
  )
  #section("REFERENCES")
  #grid(
  columns: (1fr, 1fr),
  gutter: 16pt,
  [
    *Dr.Md. Zakir Hossain Howlader, Professor*  #linebreak()
    #text(size: 11pt,)[Department of Biochemistry and Molecular Biology #linebreak() University of Dhaka, Bangladesh ]  #linebreak()
    *Email:  #link("hhzakir@du.ac.bd", "hhzakir@du.ac.bd")*
  ],
  [
    *Dr. Zimam Mahmud, Associate Professor * #linebreak()
     #text(size: 11pt,)[Department of Biochemistry and Molecular Biology #linebreak() University of Dhaka, Bangladesh ]  #linebreak()
    *Email:  #link("zimam@du.ac.bd", "zimam@du.ac.bd")*
  ]
  )