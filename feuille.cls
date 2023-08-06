
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{feuille}

% condition for the answers : \documentclass[reponses, utf8]{feuille}
\DeclareOption{reponses}{\def\lesreponses{}}

\DeclareOption{10pt}{\def\pt@size{10pt}}
\DeclareOption{11pt}{\def\pt@size{11pt}}
\DeclareOption{12pt}{\def\pt@size{12pt}}
%\ExecuteOptions{12pt}

\ProcessOptions\relax

\LoadClass[\pt@size]{article}
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
\RequirePackage{soul}
\RequirePackage{wasysym}

% define the 3 anotation icons
\newcommand{\soft}{\faBatteryEmpty}
\newcommand{\medium}{\faBatteryHalf}
\newcommand{\hard}{\faBatteryFull}

% redefine the page size
\setlength{\textwidth}{18.0cm}
\setlength{\textheight}{23.0cm}
\setlength{\headheight}{1.2cm}
\setlength{\topmargin}{-1.8cm}
\setlength{\oddsidemargin}{-1.0cm}
\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\parindent}{0pt}

% for a fancy header
\pagestyle{fancy}
\lhead{\textsc{MU4PY105}}
%\lhead{\textsc{lu2py403}}
\chead{\titredutd} 
\rhead{\includegraphics[scale=0.25]{logo_su}}

\renewcommand{\baselinestretch}{1.2}

\definecolor{darkGray}{gray}{0.3}
\definecolor{gooseShit}{rgb}{.5, .5, .3}

% redefine the sectioning commands
\renewcommand\section{\setcounter{quest}{0}%
\@startsection {section}{1}{\z@}%
{3.5ex \@plus 1ex \@minus .2ex}%
{2.3ex \@plus.2ex}%
{\sffamily\Large\bfseries}}

% redefine the subsectioning commands
\renewcommand\subsection{\setcounter{quest}{0}%
\@startsection {subsection}{1}{\z@}%
{3.5ex \@plus 1ex \@minus .2ex}%
{2.3ex \@plus.2ex}%
{\sffamily\large\bfseries}}

% get numbers for the questions
\newcounter{quest}
\long\def\question{\stepcounter{quest}\par\noindent\llap{\thequest~--~}}

% provide the data
\long\def\donnees#1{\par\noindent{\textsf{\textbf{Données~:~}}#1}}

% hints for the solutions
\long\def\elements#1{\par\noindent{\textsf{\textbf{Eléments de réponses~:~}}#1}}

% conditional for getting the answers : \documentclass[reponses, utf8]{feuille}
\ifdefined\lesreponses
\long\def\reponse#1{\par\noindent{\color{gooseShit}#1}}
\else
\long\def\reponse#1{}
\fi

\newcommand{\D}{\, \mathrm{d}}
\newcommand{\e}{\mathrm{e}}
