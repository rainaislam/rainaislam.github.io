
#import "@preview/cv-soft-and-hard:0.1.0": styling, section, entry, subsection, rust, cpp, python, typst-logo, hugo, typescript

#set document(author: "Raina Islam", title: "CV Raina Islam")
#set block(
     above: 8pt,
)
#set par(
    leading: 8pt,
    justify: true,
)
#set text(
  size: 11pt, 
)

#show: styling
#set page(
  margin: (left: 1.2cm, right: 1.2cm, top: 1.2cm),
)


#align(center)[
  = Raina Islam\
  Department of Biochemistry and Molecular Biology\
  University of Dhaka, Dhaka-1000, Bangladesh\
  #link("https://rainaislam.github.io/", "rainaislam.github.io") |
  #link("https://www.linkedin.com/in/rainaislam577/", "linkedin.com/in/rainaislam577") |
  #link("tel:+8801779213604", "+8801779213604")
]

#section("EDUCATION")
#entry(
  [
    *Master of Science (M.Sc.), Biochemistry and Molecular Biology*\ 
    _(University of Dhaka)_\  
    *In progress* _(Expected Completion: April 2026)_
  ],
  [_Jan 2025 – Present_]
)

#entry(
  [
    *Bachelor of Science (B.Sc.), Biochemistry and Molecular Biology*\
    _(University of Dhaka)_ \ 
    *Graduated*
  ],
  [_2020 – 2024_]
)
//Experience
#section("RESEARCH EXPERIENCE")
#entry(
  [
    *Master’s Thesis Student\
    Nutrition and Health Laboratory*\
    _(Department of Biochemistry and Molecular Biology, University of Dhaka)_\
    _Supervisor: Dr. Md. Zakir Hossain Howlader, Professor_
  ],
  [_Feb 2025 – Present_]
)
Investigating the association of vitamin D deficiency and gene polymorphisms in vitamin D metabolism with acute myocardial infarction, conducted on the Bangladeshi population through clinical, biochemical, molecular, and computational approaches.

- Collected and processed patient and control blood samples
- Measured plasma vitamin D levels using HPLC\
- Extracted DNA from blood samples and assessed quality by NanoDrop
- Performed PCR amplification, primer design and optimization, and PCR-RFLP genotyping
- Conducted statistical and computational analyses and prepared data for sequencing
#v(5pt)
#entry(
  [
    *Research Intern*\
    *Molecular Biology*\
    _(Child Health Research Foundation, Dhaka, Bangladesh)_\
    
    Short-term internship exploring molecular biology techniques applied to pediatric health research.
    
    - Extracted SARS-CoV-2 RNA using spin column method  
    - Prepared master mix, set up RT-qPCR cycles, and analyzed results  
    - Designed primers for known pathogen targets  
  ],
  [_Aug 20–24, 2023_]
)

#section("UNDERGRADUATE PROJECT")

#entry(
  [
    *Challenges in Prostate Cancer Diagnosis* \ 
    _(Department of Biochemistry and Molecular Biology, University of Dhaka)_  \
    _Supervisors: Dr.Md. Zakir Hossain Howlader, Dr. A.H.M.Nurun Nabi, Dr. Md. Ismail Hosen\ _
    Based on literature review, the project assessed diagnostic limitations and explored biomarkers to improve prostate cancer detection.
  ],
  [_Jan 2023_]
)

#section("SKILLS")
- *Laboratory Skills:*  DNA extraction, RNA extraction, NanoDrop UV spectrophotometry, PCR, Agarose gel electrophoresis, PCR-RFLP, RT-qPCR, SDS-PAGE, HPLC, TLC, Antibiotic Susceptibility test\
- *Bioinformatics Skills*: Primer design for PCR-RFLP, In silico SNP analysis, SNP functional annotation, RNA-seq data analysis, Molecular docking,  Differential gene expression, Sequence alignment, Phylogenetic analysis, Post-translational modification prediction, Proteomic analysis
- *Computational Tools & Software*: NCBI BLAST, Ensembl Genome Browser, UniProt, dbSNP, RegulomeDB, ExPaSy, MEGA, Primer3Plus, OligoAnalyzer, NEBcutter, UCSC in silico PCR, PyMOL, BIOVIA Discovery Studio, NetworkAnalyst, Chromeleon 6.8, BioRender
- *Statistical Tools:* GraphPad Prism, SPSS, MS Excel
- *Programming Language:* Python, R (basic)

#section("HONORS AND AWARDS ")
#entry(
  [
    *National Science and Technology Fellowship*  \
    _(Ministry of Science and Technology, Bangladesh)_  

    Prestigious national fellowship for my MS thesis, following a competitive process involving research proposal submission and interview.
  ],
  [_2025_]
)
#entry(
  [
    *2nd Runner-Up — The Art of Science Communication* \ 
    _(Department of Biochemistry and Molecular Biology, University of Dhaka)_  

    Team-based competition on science communication; wrote an article and prepared a graphical abstract to explain a complex  molecular biology topic in an accessible storytelling format.
  ],
  [_2024_]
)
#section("PROFESSIONAL CERTIFICATIONS")

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
    *General Member, Intigra Science Organization*  
\ Contributed as a content writer, writing short science articles in simple language to make science accessible to school students and broader audiences.
  ],
  [_Nov 2020 – Jan 2022_]
)
#section("REFERENCES")
#grid(
  columns: (1fr, 1fr),
  rows: (auto, 60pt),
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