
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fiche}


\DeclareOption{10pt}{\def\pt@size{10pt}}
\DeclareOption{11pt}{\def\pt@size{11pt}}
\DeclareOption{12pt}{\def\pt@size{12pt}}

\ProcessOptions\relax

\LoadClass[\pt@size,landscape,a4paper]{letter}

\pagenumbering{roman}

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
\RequirePackage[landscape]{geometry}
\RequirePackage{multicol}


% redefine the page size
\setlength{\textwidth}{28.0cm}
\setlength{\textheight}{18.4cm}
\setlength{\headheight}{0.0cm}
\setlength{\topmargin}{-3.2cm}
\setlength{\oddsidemargin}{-1.8cm}
\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\parindent}{0pt}


% define the two columns format
\setlength{\columnsep}{1cm}
\setlength{\columnseprule}{0.4mm}

\renewcommand{\baselinestretch}{1.6}

% define the top block for the name and grade
\newcommand{\nom}[2]{
  \begin{center}
  \begin{tabular}{|lr|}
    \hline
      \textsf{Nom : } \hspace{8cm} & \textsf{Note : \qquad / {#1}} \\
      \textsf{Prénom : } & \textsf{Note : \qquad / {#2}} \\
      \textsf{Numéro étudiant : } &  \\
    \hline
  \end{tabular}
  \end{center}
  }


% define the blocks for exercize # excercize name and grader
\newcommand{\exo}[3]{
  \textsf{\textbf{\large{#1. #2}}} \quad \hrulefill \quad \fbox{\qquad / #3}
  }


% define the blocks for exercize #, question #, solution and grade
\newcommand{\sol}[4]{
  #1.#2 \quad {#3} \dotfill \qquad / #4
  }


%\newcommand{\sol}[4]{
%  \begin{tabular}{p{0.2cm} p{0.2cm} p{10.6cm} p{0.8cm}}
%     #1 & #2 & #3 & #4\\
%     \hline
%  \end{tabular}\\
%  }

\newcommand{\D}{\, \mathrm{d}}
\newcommand{\e}{\mathrm{e}}