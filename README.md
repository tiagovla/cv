# `cv` LaTeX Class Usage Guide

This is a brief guide on how to use the custom LaTeX class `cv` to generate a
professional curriculum vitae.

## Installation

Clone the repository containing the `cv.cls` file:

```bash
git clone https://github.com/tiagovla/cv.git
cd cv
```

Make sure the `cv.cls` file is in the same directory as your `.tex` file, or
install it in your local texmf tree.

## Example Usage

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

## Sections Available

- `Objective` – Your objective or summary.
- `Education` – Add entries using `\educationitem`.
- `Experience` – Add entries using `\experienceitem`.
- `Skills` – Organize skills using `\skillcategory` and `\skillitem`.
- `Projects` – Use `\projectitem` to list project work.
- `Publications` – List publications using `\publicationitem`.

## Customization

The class is minimal and easy to extend. You can modify the `.cls` file for more layout options.

______________________________________________________________________

For a complete example, see `resume.tex` in the repository. The rendered output is available [here](https://tiagovla.github.io/cv/resume.pdf).
