# Example Usage

Here is a minimal example of a LaTeX document using the `cv` class:

```latex
\documentclass{cv}

\name{Your Full Name}
\address{New York, USA}
\email{your@email.com}
\phone{+55 31912345678}

\begin{document}

\makeprofileheader

\begin{Objective}
    Electrical Engineering PhD with expertise in numerical analysis and scientific computing...
\end{Objective}

\begin{Education}[https://lattes.cnpq.br/123456789]
    \educationitem{University}{Location}{Degree}{Years}{Thesis Type}{Title}
\end{Education}

\begin{Experience}
    \experienceitem{Position}{Year(s)}{Institution}{Location}{
        \item Description line 1
        \item Description line 2
    }
\end{Experience}

\begin{Skills}
    \skillcategory{Category}{
        \skillitem{Skill 1, Skill 2}
    }
\end{Skills}

\begin{Projects}[https://github.com/yourusername]
    \projectitem{Project Title}{https://link-to-project}
\end{Projects}

\begin{Publications}
    \publicationitem{Author list. Title}{Conference or Journal Info}
\end{Publications}

\end{document}
```
