\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercise}[2017/10/07]

\LoadClass[a4paper,12pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{microtype}
\RequirePackage{listingsutf8}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage[scaled=0.80]{beramono}

\setlist{itemsep=-3pt,topsep=-5pt,partopsep=0pt}
\newcommand{\ditto}{%
    \tikz{
        \draw [line width=0.12ex] (-0.2ex,0) -- +(0,0.8ex)
            (0.2ex,0) -- +(0,0.8ex);
        \draw [line width=0.08ex] (-0.6ex,0.4ex) -- +(-1.5em,0)
            (0.6ex,0.4ex) -- +(1.5em,0);
    }%
}

\fancyhf{}
\chead{\today}
\cfoot{}
\pagestyle{fancy}
\newcommand{\course}[1]{\lhead{#1}}
\newcommand{\name}[1]{\rhead{#1}}
\renewcommand\footrulewidth{0.6pt}
\renewcommand\headrulewidth{0.6pt}
\thispagestyle{fancy}

\renewcommand{\title}[1]{
    {
        \bfseries
        \Large
        \textsc{#1}

        \vspace{0.1pt}
    }
}

\newcounter{exercise}
\stepcounter{exercise}
\newcommand{\ex}[1][
    {

        \vspace{5pt}
        \bfseries
        \iflanguage{finnish}{Tehtävä \theexercise}{}
        \iflanguage{english}{Exercise \theexercise}{}
        \stepcounter{exercise}

        \vspace{-5pt}
    }
]{
    {
        \vspace{5pt}
        \bfseries
        #1

        \vspace{-5pt}
    }
}

\newenvironment{parts}[1][(\alph*)]
    {\begin{enumerate}[label=#1,leftmargin=*,topsep=0pt]}
    {\end{enumerate}}

\definecolor{background}{RGB}{230,230,230}
\lstnewenvironment{code}[2]
    {\lstset{inputencoding=latin1,
             extendedchars=true,
             xleftmargin=5pt,
             xrightmargin=5pt,
             framexleftmargin=5pt,
             framexrightmargin=5pt,
             frame=tb,
             framesep=5pt,
             rulecolor=\color{background},
             basicstyle=\linespread{0.85}\small\ttfamily,
             commentstyle=\linespread{0.85}\small\ttfamily\color{gray},
             keywordstyle=\linespread{0.85}\small\ttfamily\bfseries,
             numbers=#2,
             numberstyle=\small\ttfamily,
             backgroundcolor=\color{background},
             firstnumber=auto,
             language= #1,
    }}
    {}

\setlength\parindent{0pt}
\setlength\parskip{1em}
