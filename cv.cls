\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2023/01/20 Custom CV class]

% Base class
\LoadClass{article}

% --- Packages ---
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{enumitem}
\RequirePackage{ifthen}
\RequirePackage{xparse}
\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{hyperref}
\RequirePackage{graphicx}

% --- Page layout ---
\geometry{
    paperwidth=210mm,
    paperheight=297mm,
    textwidth=7in,
    textheight=9.5in,
    top=1in,
    left=1in,
    right=1in,
    bottom=1in
}
\setlength{\evensidemargin}{-0.25in}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\topmargin}{-0.3in}
\setlength{\topskip}{0in}
\setlength{\headheight}{0.4in}
\setlength{\headsep}{0in}
\setlength{\voffset}{0in}
\setlength{\tabcolsep}{0in}

% --- Section formatting ---
\titleformat{\section}
{\Large\scshape\raggedright}
{}{0em}{}
[\titlerule]
\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}{}

% --- Hyperref setup ---
\hypersetup{
    colorlinks=false,
    linkcolor=black,
    filecolor=white,
    urlcolor=white
}

% --- Page style ---
\pagestyle{empty}

% --- Identity and header ---
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\phone}[1]{\def\@phone{#1}}
\newcommand{\address}[1]{\def\@address{#1}}

\def\@name{}
\def\@email{}
\def\@phone{}
\def\@address{}

\newcommand{\makeprofileheader}{%
    \centerline{\Huge{\@name}}\vspace{0.2cm}
    \centerline{%
        \makebox[0pt][c]{%
            \@address
            \quad {\large\textperiodcentered} \quad
            \href{mailto:\@email}{\@email}
            \quad {\large\textperiodcentered} \quad
            \href{tel:\@phone}{\@phone}
        }%
    }%
}

% --- Section: Objective ---
\NewDocumentEnvironment{Objective}{}{
\section*{Objective}}{}

% --- Section: Education ---
\NewDocumentEnvironment{Education}{o}{
    \section*{Education%
        \IfNoValueTF{#1}{}{%
            \hfill
            {\small\href{#1}{\includegraphics[scale=0.07]{images/lattes_logo.png}}}%
        }%
    }
}{}

\newcommand{\educationitem}[6]{%
    \begin{tabular*}{\textwidth}{l}
        \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} r}
            {\scshape{\bfseries #1}} & #2 \\
        \end{tabular*}\\
        \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} r}
            {#3} & {\small#4}
        \end{tabular*}
        \ifthenelse{\equal{#5}{}}{}{%
            \\
            \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} r}
                \hspace{10pt}\small{\textit{\textbf{--} #5: #6}} &
            \end{tabular*}
        }%
        \vspace{0.5em}
    \end{tabular*}
}

% --- Section: Experience ---
\newenvironment{Experience}{
    \section{Experience}
}{
}

\newcommand{\experienceitem}[5]{%
    \begin{tabular*}{\textwidth}{l}
        \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} r}
            {\scshape{\bfseries #1}} & #2 \\
        \end{tabular*}\\
        \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} r}
            {#3} & {\small#4}
        \end{tabular*} \\
        \begin{tabular*}{\textwidth}{l @{\extracolsep{\fill}} r}

            \parbox{0.75\textwidth}{
                \small
                \begin{itemize}
                        \vspace{-2pt}
                        #5
                \end{itemize}
            }
        \end{tabular*}
    \end{tabular*}
}

% --- Section: Projects ---
\NewDocumentEnvironment{Projects}{o}{
    \section*{Projects%
        \IfNoValueTF{#1}{}{%
            \texorpdfstring{%
                \hfill
                {\small\href{#1}{\includegraphics[scale=0.03]{images/github_logo.png}}}%
            }{}%
        }%
    }
    \begin{itemize}[leftmargin=10pt, itemsep=0pt]
        }{
    \end{itemize}
}

\newcommand{\projectitem}[2]{%
\item[--] #1 \hspace{0.5em} $|$ \hspace{0.5em}
    \emph{\href{#2}{\textcolor{blue}{GitHub}}}%
}

% --- Section: Skills ---
\newenvironment{Skills}{
    \section{Skills}
    \vspace{-0.5em}
}{}

\newcommand{\skillcategory}[2]{%
    \textbf{#1} \vspace{-6pt}
    \begin{itemize}
            #2
    \end{itemize}
}

\newcommand{\skillitem}[1]{%
\item #1
}

% --- Section: Publications ---
\NewDocumentEnvironment{Publications}{}{
    \section*{Publications}
    \begin{itemize}[leftmargin=10pt]
        }{
    \end{itemize}
}

\newcommand{\publicationitem}[2]{%
\item[\textbf{--}] #1. \textit{#2}.
}
