\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2023/01/20 Custom CV class]

\LoadClass{article}

\RequirePackage[usenames,dvipsnames]{color}

\RequirePackage{enumitem}
\RequirePackage{ifthen}
\RequirePackage{xparse}

\RequirePackage{titlesec}
\titleformat{\section}
{\Large\scshape\raggedright}
{}{0em}
{}
[\titlerule]
\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}

\RequirePackage{geometry}
\setlength{\evensidemargin}{-0.25in}
\setlength{\headheight}{0.5in}
\setlength{\headsep}{0in}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}
\setlength{\tabcolsep}{0in}
\setlength{\textheight}{9.5in}
\setlength{\textwidth}{7in}
\setlength{\topmargin}{-0.3in}
\setlength{\topskip}{0in}
\setlength{\voffset}{0.0in}

\RequirePackage{enumitem}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    linkcolor=black,
    filecolor=white,
    urlcolor=white,
}

\RequirePackage{graphicx}

\newcommand{\datedsection}[2]{%
    \section[#1]{#1 \hfill #2}%
}

% info section
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\phone}[1]{\def\@phone{#1}}
\newcommand{\address}[1]{\def\@address{#1}}

% Initialize empty by default (optional)
\def\@name{}
\def\@email{}
\def\@phone{}
\def\@address{}

\newcommand{\makeprofileheader}{%
    \centerline{\Huge{\@name}}\vspace{0.2cm}
    \centerline{%
        \makebox[0pt][c]{%
            \@address
            \quad
            {\large\textperiodcentered}
            \quad
            \href{mailto:\@email}{\@email}
            \quad
            {\large\textperiodcentered}
            \quad
            \href{tel:\@phone}{\@phone}
        }%
    }%
}

% education section

\NewDocumentEnvironment{Education}{o}{
    \section*{Education%
        \IfNoValueTF{#1}{}{%
            \hfill
            {\small\href{#1}{\includegraphics[scale=0.07]{images/lattes_logo.png}}}%
        }%
    }%
    \addcontentsline{toc}{section}{Education}
}{
}
\newcommand{\educationitem}[6]{%
    \begin{tabular*}{\textwidth}{l@{{}\extracolsep{\fill}}r}
        \vspace{-0.5pt}
        {\scshape{\bfseries #1}} & #2 \\
        {#3} & {\small#4}
        \ifthenelse{\equal{#5}{}}{}{%
            \\
            {\hspace{10pt}\small{\textit{\textbf{--} #5: #6}}} & \\
        }%
    \end{tabular*}
    \vspace{0.1cm}
}

% experience section
\newenvironment{Experience}{
    \section{Experience}
    \begin{itemize}[leftmargin=10pt, noitemsep]
        }{
    \end{itemize}
}

\newcommand{\academicitem}[4]{%
\item[\textbf{--}] #1 (#2--#3), #4.
}

\newcommand{\worksubsection}[5]{%
    \begin{tabular*}{\textwidth}{l@{\cftdotfill{\cftsecdotsep}\extracolsep{\fill}}r}
        \textbf{\textsc{#1}} & #2 \\
        {#3} & {\small#4} \\
    \end{tabular*}\\
    \parbox{0.75\textwidth}{
        \small
        \begin{itemize}
                \vspace{-2pt}
                #5
        \end{itemize}
    }
}
\pagestyle{empty}

\NewDocumentEnvironment{Objective}{}{
    \section*{Objective}
}{
}

\newcommand{\projectssection}[1]{
    \section{Projects \texorpdfstring{\hfill {\small
    \href{#1}{\includegraphics[scale=0.03]{images/github_logo.png}}}}{}}
}

\newcommand{\contact}[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ {\large\textperiodcentered} #4 \ {\large\textperiodcentered} \ #5%
        }%
    }%
}

\newcommand{\resitem}[1]{\small
\item[\textbf{--}] #1 \vspace{-4pt}}

\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}

% publication section
\NewDocumentEnvironment{Publications}{}
{
    \section*{Publications}
    \addcontentsline{toc}{section}{Publications}
    \begin{itemize}[leftmargin=10pt]
        }
        {
    \end{itemize}
}

% Publication item command
\newcommand{\publicationitem}[2]{%
\item[\textbf{--}] #1. \textit{#2}.
}
