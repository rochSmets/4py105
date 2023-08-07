
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{feuille}

% condition for the answers : \documentclass[reponses, utf8]{feuille}
\DeclareOption{reponses}{\def\lesreponses{}}

\DeclareOption{10pt}{\def\pt@size{10pt}}
\DeclareOption{11pt}{\def\pt@size{11pt}}
\DeclareOption{12pt}{\def\pt@size{12pt}}
%\ExecuteOptions{12pt}

\ProcessOptions\relax

\LoadClass[\pt@size, a4]{article}
%\LoadClass{article}

% load the right packages
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{fancyhdr}
\RequirePackage{fontawesome}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{graphicx}
\RequirePackage{graphics}
\RequirePackage{totcount}
\RequirePackage{color}

% define the 3 anotation icons
\newcommand{\soft}{\faBatteryEmpty}
\newcommand{\medium}{\faBatteryHalf}
\newcommand{\hard}{\faBatteryFull}

% redefine the page size
\setlength{\textwidth}{18.0cm}
\setlength{\textheight}{23.5cm}
\setlength{\headheight}{0.5cm}
\setlength{\topmargin}{-1.8cm}
\setlength{\oddsidemargin}{-1.0cm}
\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\parindent}{0pt}

% for a fancy header
\pagestyle{fancy}

\ifdefined\sprint
\lhead{\textsc{lu2py403}}
\else
\lhead{\textsc{lu2py103}}
\fi
\chead{\titredutd}
\rhead{\includegraphics[scale=0.04]{../logo_su.jpg}}

\renewcommand{\baselinestretch}{1.2}


% personal definition of \mybox env creating a gray box
\usepackage{tcolorbox}
\DeclareRobustCommand{\mybox}[2][gray!20]{%
\\[-36pt]
\begin{tcolorbox}[
        colback=#1,
        colframe=#1,
        width=\dimexpr\textwidth\relax, 
        arc=0pt,outer arc=0pt,
        ]
        #2
\end{tcolorbox}
}


\definecolor{darkGray}{gray}{0.3}
\definecolor{gooseShit}{rgb}{.5, .5, .3}

% redefine the sectioning commands
\renewcommand\section{\setcounter{quest}{0}%
\@startsection {section}{1}{\z@}%
{3.5ex \@plus 1ex \@minus .2ex}%
{2.3ex \@plus.2ex}%
{\sffamily\Large\bfseries}}

% get numbers for the questions
\newcounter{quest}
\long\def\question{\stepcounter{quest}\par\noindent\llap{\thequest~--~}}

% provide the data
\long\def\donnees#1{\par\noindent{\textsf{\textbf{Données~:~}}#1}}

% hints for the solutions
\long\def\elements#1{\par\noindent{\textsf{\textbf{Eléments de réponses~:~}}#1}}

% add the section name with soft, medium or hard
\long\def\addSoft#1{\section{\soft~#1}}
\long\def\addMedium#1{\section{\medium~#1}}
\long\def\addHard#1{\section{\hard~#1}}

% conditional for getting the answers : \documentclass[reponses, utf8]{feuille}
\ifdefined\lesreponses
%\long\def\reponse#1{\par\noindent{\color{gooseShit}#1}}
\long\def\reponse#1{\par\noindent{\mybox{#1}}}
\else
\long\def\reponse#1{}
\fi

\newcommand{\D}{\, \mathrm{d}}
\newcommand{\e}{\mathrm{e}}

\long\def\tiret#1{\par\noindent{\sffamily\bfseries{#1}}}


\def\input@path{{../Exercices}{../Elements}}


\long\def\softEx#1{\addMedium{#1}\input{#1}}
\long\def\mediumEx#1{\addMedium{#1}\input{#1}}
\long\def\hardEx#1{\addMedium{#1}\input{#1}}
