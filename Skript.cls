\ProvidesClass{Skript}
\LoadClass[11pt,a4paper,oneside]{book}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsfonts}
\RequirePackage{phaistos}
\RequirePackage{enumerate}
\RequirePackage{mathtools}
\RequirePackage[ngerman]{babel}
\RequirePackage{xparse}
\RequirePackage{graphicx}
\RequirePackage{amsthm}
\RequirePackage{wasysym}
\RequirePackage{fontawesome}
\RequirePackage{marvosym}
\RequirePackage{pdfpages}
\RequirePackage{color}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage{gensymb}
\RequirePackage{newunicodechar}
\graphicspath{{./Bilder/}} 
\setlength{\parindent}{0em}
\RequirePackage[center]{caption}
\RequirePackage[normalem]{ulem}
\RequirePackage{booktabs} 
\RequirePackage{subfig} 
\RequirePackage{float}
\RequirePackage{xpatch}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[textwidth=13cm]{geometry}
\RequirePackage[notref,notcite]{showkeys}
\RequirePackage{soul}
\RequirePackage{mathrsfs}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{hyperref}

\hypersetup{
    linktoc=all
}


\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\K}{\mathbb{K}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\M}{M\text{°}}
\newcommand{\calM}{\ensuremath{\mathcal{M}}}
\newcommand{\calMnm}{\ensuremath{\calM_{n\times m}}}
\newcommand{\calMn}{\ensuremath{\calM_{n}}}
\newcommand{\lin}[1]{\ensuremath{\text{span\ensuremath{\left\{ #1 \right\}}}}}
\newcommand{\Kern}[1]{\ensuremath{\text{Ker}\left(#1\right)}}
\newcommand{\func}[2]{\ensuremath{#1 \left(#2\right)}}
\newcommand{\Bild}[1]{\ensuremath{\text{Bild}\left(#1\right)}}
\newcommand{\rang}[1]{\ensuremath{\text{Rang}\left(#1\right)}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\Pol}{\mathbb{P}}
\newcommand{\toInfty}{\ensuremath{\lim_{n\to\infty}}}
\newcommand{\RN}[1]{\textup{\uppercase\expandafter{\romannumeral#1}}}
\newcommand{\matrx}[1]{\begin{pmatrix}#1\end{pmatrix}}
\newcommand{\set}[1]{\ensuremath{\left\{ #1 \right\}}}
\newcommand{\abs}[1]{\ensuremath{\left\vert #1 \right\vert}}
\newcommand{\dabs}[1]{\ensuremath{\left\vert\left\vert#1\right\vert\right\vert}}
\newcommand{\scp}[1]{\ensuremath{\left<#1\right>}}
\newcommand{\dbcup}[2][]{\ensuremath{\displaystyle\bigcup_{#1}^{#2}}}
\newcommand{\dbcap}[2][]{\ensuremath{\displaystyle\bigcap_{#2}^{#1}}}
\newcommand{\cconj}[1]{\overline{#1}}
\newcommand{\sym}{\ensuremath{\text{Sym }}}
\newcommand{\midspace}{\hspace{.5em}}
\newcommand{\smallspace}{\hspace{.2em}}
\newcommand{\largespace}{\hspace{1em}}
\newcommand{\txt}[1]{\ensuremath{\text{#1}}}
\newcommand{\dprod}{\ensuremath{\displaystyle\prod}}
\newcommand{\eps}{\varepsilon}
\def\igb#1#2#3{\ensuremath{#1 = #2,\dots, #3}}
\newcommand*\diff{\mathop{}\!\mathrm{d}}


\newcount\loopcounter
\newcommand{\Schwamms}[1]{8\loop\ifnum\loopcounter < #1 =\advance\loopcounter by 1 \repeat D \loopcounter=0}

\renewcommand{\ln}[1]{\ensuremath{\text{ln}\left(#1\right)}}
\renewcommand{\det}[1]{\ensuremath{\text{det}\left(#1\right)}}
\def\cos#1{\ensuremath{\text{cos}\if \empty#1\else\left(#1\right)\fi}}
\def\sin#1{\ensuremath{\text{sin}\if \empty#1\else\left(#1\right)\fi}}
\def\calO#1{\ensuremath{\mathcal{O}\if \empty#1\else\left(#1\right)\fi}}

\renewenvironment{proof}{{\bfseries Beweis}}{\qed\newline}

\theoremstyle{definition}
\newtheorem{theorem}{Satz}[section]
\newtheorem{corollary}[theorem]{Korollar}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Beispiel}
\newtheorem{remark}[theorem]{Bemerkung}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem*{question}{Frage}
\newtheorem*{reminder}{Erinerung}
\newtheorem{remindexample}[theorem]{Erinnerung/Beispiel}

\newpagestyle{mystyle}
{\sethead[\thepage][][\chaptertitle]{}{}{\thepage}}
\pagestyle{mystyle}