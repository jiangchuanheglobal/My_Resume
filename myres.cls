% my resume class
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{myres}[2014/06/05 v1.0]
\LoadClass{article}
\usepackage[left=0.5in, right=2in, top=0.8in, bottom=0.1in,textwidth=6in]{geometry}
\usepackage{enumitem}
\usepackage{hyperref}

\pagestyle{empty}  % don't want page numbers

\newlength\sectionvskip
\newlength\titlewidth
\newlength\sectionhskip
\newlength\parawidth
\newlength\hlinewidth

\sectionhskip=0.15in
\sectionvskip=0.1in
\titlewidth=1in
\parawidth=6in
\advance\hlinewidth by \titlewidth 
\advance\hlinewidth by \sectionhskip 
\advance\hlinewidth by \parawidth
\advance\hlinewidth + 0.1in % a .1in offset to extend the header, this should not go here. Further study needed.


\newcommand{\mysection}[2]{
	\par
	\addvspace{\sectionvskip}
	\parbox[t]{\titlewidth}{#1}
	\makebox[\sectionhskip][l]{}
	\parbox[t]{\parawidth}{\raggedright#2}
}

\newcommand{\myline}{
	\par
	\makebox[\hlinewidth]{\rule{\hlinewidth}{0.5pt}}
	\par
}

\newcommand{\mycontact}[2]{
	\makebox[2in][l]{#1}
	\makebox[1in][l]{#2}
	\par
}

\newcommand{\myemail}[1]{
	\href{mailto:#1}{#1}
}
\newcommand{\mywebsite}[1]{\url{#1}}
