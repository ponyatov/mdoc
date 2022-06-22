# ebook header

https://github.com/ponyatov/texheader/blob/master/ebook.tex

```latex
% Universal LaTeX headers for e-book publications
\documentclass[oneside,10pt]{book}
%% mobile phone optimized paper size
%%%\usepackage[paperwidth=210mm,paperheight=145mm,margin=2mm]{geometry}
%%% honor 3C 108 mm x 62 mm scaled 1.1 = 118.8 x 68.2
\usepackage[paperwidth=118.8mm,paperheight=68.2mm,margin=2mm]{geometry}
%% hyperlinks pdf style
\usepackage[unicode,colorlinks=true]{hyperref}
%% fix first blank page
%% https://tex.stackexchange.com/questions/140168/how-to-remove-a-blank-page-before-the-title-page
\usepackage{atbegshi}
\AtBeginDocument{\AtBeginShipoutNext{\AtBeginShipoutDiscard}}
%% font setup for screen reading
\renewcommand{\familydefault}{\sfdefault}\normalfont
%% fix heading styles for tiny paper
\usepackage{titlesec}
\titleformat{\chapter}{\Large\bfseries}{\thechapter.}{1em}{}
\titleformat{\section}{\large\bfseries}{\thesection.}{1em}{}
```
## Cyrillization
```latex
% Cyrillization
\usepackage[T1,T2A]{fontenc}
\usepackage[utf8]{inputenc}
%% \usepackage[cp1251]{inputenc}
\usepackage[english,russian]{babel}
% \usepackage{indentfirst}
```
## `xcolor` fixes
```latex
% xcolor fixes
\usepackage{xcolor}
\definecolor{red}{rgb}{.4,0,0}		% R
\definecolor{RED}{rgb}{.4,0,0}
\definecolor{green}{rgb}{0,0.4,0}	% G
\definecolor{GREEN}{rgb}{0,0.4,0}
\definecolor{blue}{rgb}{0,0,0.7}	% B
\definecolor{BLUE}{rgb}{0,0,0.7}
\definecolor{cyan}{rgb}{0,0.6,0.6}	% cyan
\definecolor{CYAN}{rgb}{0,0.6,0.6}
\definecolor{magenta}{rgb}{.4,0,.4}	% magenta
\definecolor{MAGENTA}{rgb}{.4,0,.4}
```
## relative sectioning
```latex
% relative sectioning
\usepackage{ifthen}
\newcounter{secdepth}\setcounter{secdepth}{0}
\newcommand{\secup}{\addtocounter{secdepth}{1}}
\newcommand{\secdown}{\addtocounter{secdepth}{-1}}
\newcommand{\secrel}[1]{
\ifthenelse{\equal{\value{secdepth}}{0}}{\part{#1}}{}
\ifthenelse{\equal{\value{secdepth}}{-1}}{\chapter{#1}}{}
\ifthenelse{\equal{\value{secdepth}}{-2}}{\section{#1}}{}
\ifthenelse{\equal{\value{secdepth}}{-3}}{\subsection{#1}}{}
\ifthenelse{\equal{\value{secdepth}}{-4}}{\subsubsection{#1}}{}
}
\newcommand{\secly}[1]{
\section*{#1}
\addcontentsline{toc}{section}{#1}
}
\newcommand{\subsecly}[1]{
\subsection*{#1}
\addcontentsline{toc}{subsection}{#1}
}
```
```latex
% misc
\newcommand{\email}[1]{$<$\href{mailto:#1}{#1}$>$}
\renewcommand{\emph}[1]{\textcolor{red}{#1}}
\newcommand{\term}[1]{\textcolor{green}{#1}}
\newcommand{\termdef}[2]{\textcolor{green}{#1}\index{#2}}
\newcommand{\note}[1]{\,\footnote{\ #1}}
```
```latex
% [nosep] option in lists/enums
\usepackage{enumitem}
% frame box
\usepackage{framed}
```
```latex
% computer-related markup: manuals, listings, CS

%% software menu & keys
\usepackage[os=win]{menukeys}

%% listings
\usepackage{verbatim}
\usepackage{listings}
\lstset{
basicstyle=\small,
frame=single,
numbers=left,numberstyle=\small,numbersep=2mm,
xleftmargin=3mm,xrightmargin=2mm,
tabsize=4,
keywordstyle=\color{red},
commentstyle=\color{blue},
extendedchars=\true
}
\newcounter{lstcounter}

%% OSes
\newcommand{\win}{$Windows$}
\newcommand{\linux}{$Linux$}
```
