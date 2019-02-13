# Latex Template

Don't write boilerplate. Write articles.

## Quickstart

Install the document class to the tex libs:

```bash
$ mkdir -p ~/texmf/tex/latex/local
$ git clone git@github.com:nickgashkov/latex-template.git
$ mv latex-template ~/texmf/tex/latex/local
```

Make a `main.tex` file:

```tex
\documentclass{n3article}

\begin{document}
  Hello world!
\end{document}
```

You're all set.

## Customization

If you want to customize variables such as author, subject, etc., create a 
`variables.sty` file...

```tex
\chair{Кафедра вычислительной техники}
\doctype{Пояснительная записка к лабораторной работе \textnumero 1}
\title{
  Исследование метода подавления случайного шума путем когерентного накопления
  сигнала
}
\subject{Методы цифровой обработки сигналов}
\variation{14 вариант}
\author{Гашков Н.Е.}
\supervisor{Тропченко А.Ю.}

\endinput
```

...and include it into `main.tex` file:

```tex
\documentclass{n5article}

\input{variables.sty}

\begin{document}
...
\end{document}
```
