# cv — Custom LaTeX Class for Curriculum Vitae

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Documentation](https://img.shields.io/badge/docs-online-brightgreen.svg)](https://tiagovla.github.io/cv/)
[![CI](https://github.com/tiagovla/cv/actions/workflows/deploy.yml/badge.svg)](https://github.com/tiagovla/cv/actions/workflows/deploy.yml)
[![Website](https://img.shields.io/badge/website-tiagovla.github.io%2Fcv-purple)](https://tiagovla.github.io/cv/)

A minimal and elegant LaTeX class to create professional curriculum vitae
easily. Designed for clean formatting and straightforward customization.

______________________________________________________________________

## Preview

A live preview of the CV layout can be found [here](https://tiagovla.github.io/cv/examples/).

______________________________________________________________________

## Features

- Simple commands and environments for CV sections: Objective, Education, Experience, Skills, Projects, Publications.
- Minimal and easy to extend `.cls` file.
- Clean, professional layout focused on readability.
- Compatible with pdflatex, xelatex, and lualatex.
- Complete documentation available at [https://tiagovla.github.io/cv](https://tiagovla.github.io/cv).

______________________________________________________________________

## Template

Write your CV with clean and minimal LaTeX code — just like this:

```latex
\documentclass{cv}

\name{Your Full Name}
\address{City, Country}
\email{you@example.com}
\phone{+55 31 91234-5678}

\begin{document}

\makeprofileheader

\begin{Objective}
    A short paragraph summarizing your goals or qualifications.
\end{Objective}

\begin{Education}
    \educationitem{University Name}{City, Country}{Degree}{Years}{Thesis Type}{Thesis Title}
\end{Education}

\begin{Experience}
    \experienceitem{Job Title}{Years}{Company/Institution}{City, Country}{
        \item Describe key responsibilities or achievements.
        \item Use multiple lines if necessary.
    }
\end{Experience}

\begin{Skills}
    \skillcategory{Category Name}{
        \skillitem{Skill 1, Skill 2, Skill 3}
    }
\end{Skills}

\begin{Projects}
    \projectitem{Project Title}{https://link-to-project}
\end{Projects}

\begin{Publications}
    \publicationitem{Author(s). Title}{Journal or Conference, Year}
\end{Publications}

\end{document}
```

______________________________________________________________________

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

______________________________________________________________________

## Contributing

This project is primarily developed for personal use. While you're welcome to
explore the code, contributions and feature requests are not actively sought or
maintained.
