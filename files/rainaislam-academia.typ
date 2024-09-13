#import "@preview/basic-resume:0.1.0": *

// Put your personal information here, replacing mine
#let name = "Raina Islam"
#let location = "Dhaka, Bangladesh"
#let email = "islamraina577@gmail.com"
#let github = "github.com/rainaislam"
#let linkedin = "linkedin.com/in/rainaislam577"
#let phone = "+880 17779213604"
#let personal-site = "https://rainaislam.github.io"

#set page(
  margin: (top: 32pt, bottom: 20pt),
  header: [
    #set text(8pt)
    #h(1fr) Last updated on #datetime.today().display()
  ],
)


#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  // Accent color is optional. Feel free to remove the next line if you want your resume to be in black and white
  accent-color: "#26428b",
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Reaserch Interest

Biochemistry, Cancer Biology, Cancer Bioinformatics, Molecular Biology


== Education

#edu(
  institution: "University of Dhaka",
  location: "Dhaka, Bangladesh",
  dates: dates-helper(start-date: "Jan 2020", end-date: "Nov 2024(Expected)"),
  degree: "Bachelor's of Science, Biochemistry and Molecular Biology",
)
- #underline[CGPA]: 3.83\/4.0 [As of 3rd year]
- #underline[Relevant Coursework]: *Molecular Biology*, *Biochemistry of Cancer*, Molecular genetics, *Basic Bioinformatics*, *Cell Biology*, *Immunology*, *Biostatistics*, Computer Basics and Data Analysis, Bioorganic Chemistry, Biochemistry of Drugs, Neurobiochemistry, Enzymology.


== Work Experience


#work(
  title: "Internship on Molecular Biology",
  location: "Dhaka, Bangladesh",
  company: "Child Health Research Foundation (CHRF) " + link("https://chrfbd.org/", "[chrfbd.org]"),
  dates: dates-helper(start-date: "Aug 2023", end-date: "Aug 2024"),
)
- Vistied hospital "*In Patient Department(IPD) and Out Patient Department(OPD)*"; collected and documented patient information, "*learned various specimen collection techniques*", and practiced aseptic sample collection and transportation.
- Extracted DNA and RNA from biological sample by "*spin column and magnetic beads based methods*"
- Prepared master mix and added templates for qPCR,learned RT-qPCR cycle set up and "*analyesd qPCR result*"
- Designed primers for specified known pathogen targets
- Performed "*conventional PCR*", prepared the gel for "*gel electrophoresis*", ran the gel, captured the gel image, and processed and interpreted the gel image.
#work(
  title: "Content Writer(Intern)" ,
  location: "Dhaka, Bangladesh" ,
  company: "Intigra Science Organization" + link("https://www.linkedin.com/company/intigraorg/" , "[intigra.org]"), 
  dates: dates-helper(start-date: "Nov 2020", end-date: "Jan 2022"), 
)
- Wrote scientific articles aimed at high school students, making complex topics like *skin cancer, artificial meat, human memory, and spice tolerance* easily understandable.
- Researched and synthesized information from *scientific papers, journals, and articles to produce clear, engaging content that increased awareness of scientific developments.*
- Developed strong skills in *reading, analyzing, and summarizing scientific papers* and writing articles that simplified research findings for the general public.
- *Earned the Member of the Year Award in 2020 for excellence in scientific content writing.*
- Worked collaboratively in a team to introduce the beauty of science beyond textbooks, fostering interest in science among younger audiences.




== Dry and Wet lab experiences
- RT-PCR, Conventional PCR, PCR primer designing
- Agarose Gel Electrophoresis 
- ELISA
- *Chromatography*: High performance liquid chromatography (HPLC), Thin layer chromatography(TLC)
- Familiarization with database: NCBI, PubMed, Nucleotide and protein database, OMIM, etc.
- Analysis with BLAST, multiple sequence alignment, primer design.
- *Phylogenetic analysis*: Introduction to MEGA software.
- SNPs, proteomics – protein analysis by EXPASY tools,transmembrane helix determination, secondary and 3D structure prediction.
- RNA-seq analysis(DESeq,Bowtie2,samtools,HTseq)
- Express analyst(Volcano plot,GSEA plot analysis)

== Certifications

#let certificates = (
    (name: "Introduction to the Biology of Cancer",
    about: "Grade : 90.36%, 8 hours",
    date: "24 May 2020",
    issuer: "Coursera [Johns Hopkins University]",
    url: "https://coursera.org/share/43f225816d1c23bc84eacff77e50ac5d",
    id: "SPEQ98DD8JCN"
    ),
   ( name: "Understanding Cancer Metastasis",
   about: "Grade: 88.66%, 5 hours",
    date: "24 Sep 2020",
    issuer: "Coursera [Johns Hopkins University]",
    url: "https://coursera.org/share/2b0a08fdcc9a166b6e43bbd77bdd5ab2",
    id: "1MPR3CVR3SUM3"
  ),
  (
   name: "[Specialization] Fundamentals of Immunology",
   about: "105 hours",
    date: "26 Sep 2020",
    issuer: "Coursera [Rice University]",
    url: "https://coursera.org/share/e075470f1e338789f2764bfd3b162357",
    id: "TKCTHUQVM4D7"
    )
)

#for certificate in certificates [
  *#certificate.name* #emoji.chain  #h(1fr) *#certificate.about*\
  #text(style: "italic")[Issued by] #certificate.issuer #h(1fr) #certificate.date\
]

//#pagebreak()

== Projects

// #project(
//   role: "Maintainer",
//   name: "Challenges in Prostate Cancer Diagnosis",
//   dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
//   url: "hyperschedule.io",
// )
*[Undergraduate Project] Challenges in Prostate Cancer Diagnosis* #h(1fr) Nov 2023 - Dec 2023\
_Supervised by_ Professor X
- Conducted extensive research using academic papers, articles, and books. 
- Evaluated current diagnostic methods such as PSA testing, DRE, and advanced imaging techniques, highlighting their limitations. 
- Analyzed the role of biomarkers and emerging diagnostic tools to improve prostate cancer detection. 
- Compiled findings into a report addressing overdiagnosis and overtreatment concerns.

*[Cancer Bioinformatics] Transcriptional Differences Between Prostate Zones* #h(1fr) Sep 2024 \
_Supervised by_ BioTed, Bangladesh
- Analyzed transcriptional differences in prostate zones using NGS data.
- Developed a bioinformatics pipeline with Bowtie2, SAMtools, and HTSeq on the Galaxy server. 
- Conducted differential expression analysis with DESeq2 and visualized key molecular differences using ExpressAnalyst

== Laboratory and Industrial Visit

*Laboratory Visit at ICDDR,B*
- Visited ICDDR,B, a renowned international health research organization based in Dhaka, Bangladesh, focused on solving major public health challenges in low- and middle-income countries. It is well-known for developing the Oral Rehydration Solution (ORS) and conducting groundbreaking research in infectious diseases, maternal and child health, and vaccine development. 
- Explored multiple research laboratories, including Virology, Gut-Brain Signaling, and Mucosal Immunology labs. 
- Gained insights into cutting-edge research on disease diagnosis, vaccine development, and pathogen detection. 
- Explored protocols for PCR, ELISA, sequencing, and biosafety measures. 
- Compiled findings into a detailed report showcasing the lab’s contributions to global health through scientific excellence and public health impact.
 
*Industrial Visit at PRAN Industrial Park*
- Participated in an industrial visit to PRAN Industrial Park, gaining hands-on experience in food processing, packaging, and manufacturing.
- Observed the production processes in various units, including frozen foods, chocolates, bubblegum, biscuits, and juices.
- Learned about quality control, storage practices, and international standards in product manufacturing. This experience enhanced my understanding of large-scale industrial operations and the significance of hygiene and safety protocols. 




// == Extracurricular Activities

// #extracurriculars(
//   activity: "Capture The Flag Competitions",
//   dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
// )
// - Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
// - Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//   - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
// - Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

== Skills and Awards
- *Languages*: English (Basic proficiency), Bangla (Native speaker)
- *Programming Languages*: Python, R
- *Tools*: SPSS, MEGA software, Express analyst software 