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
\RequirePackage{tikz}
\RequirePackage{tikz}
    \usetikzlibrary{matrix}
\RequirePackage{subfiles}

\hypersetup{
    linktoc=all
}

\newcommand{\midspace}{\hspace{.5em}}
\newcommand{\smallspace}{\hspace{.2em}}
\newcommand{\largespace}{\hspace{1em}}
\newcommand{\dsum}{\displaystyle\sum}
\newcommand{\K}{\mathbb{K}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\bbP}{\mathbb{P}}
\newcommand{\calM}{\ensuremath{\mathcal{M}}}
\newcommand{\calMnm}{\ensuremath{\calM_{n\times m}}}
\newcommand{\calMn}{\ensuremath{\calM_{n}}}
\DeclareMathOperator{\linhuelle}{span}
\DeclareMathOperator{\Ker}{ker}
\def\lin#1{\ensuremath{\linhuelle{\left\{ #1 \right\}}}}
\def\Kern#1{\ensuremath{\Ker\left(#1\right)}}
\def\func#1#2{\ensuremath{#1 \left(#2\right)}}
\DeclareMathOperator{\Image}{Bild}
\def\Bild#1{\ensuremath{\Image\left(#1\right)}}
\DeclareMathOperator{\Rang}{Rang}
\def\rang#1{\ensuremath{\Rang\left(#1\right)}}
\newcommand{\toInfty}{\ensuremath{\lim_{n\to\infty}}}
\newcommand{\RN}[1]{\textup{\uppercase\expandafter{\romannumeral#1}}}
\newcommand{\matrx}[1]{\begin{pmatrix}#1\end{pmatrix}}
\newcommand{\set}[1]{\ensuremath{\left\{ #1 \right\}}}
\newcommand{\abs}[1]{\ensuremath{\left\vert #1 \right\vert}}
\newcommand{\dabs}[1]{\ensuremath{\left\vert\left\vert#1\right\vert\right\vert}}
\def\scp#1#2{\ensuremath{\left<#1,\smallspace #2\right>}}
\newcommand{\dbcup}[2][]{\ensuremath{\displaystyle\bigcup_{#1}^{#2}}}
\newcommand{\dbcap}[2][]{\ensuremath{\displaystyle\bigcap_{#2}^{#1}}}
\def\ccon#1{\overline{#1}}
\DeclareMathOperator{\sym}{Sym}
\newcommand{\txt}[1]{\ensuremath{\text{#1}}}
\newcommand{\dprod}{\ensuremath{\displaystyle\prod}}
\newcommand{\eps}{\varepsilon}
\def\igb#1#2#3{\ensuremath{#1 = #2,\dots\if \empty#3\else, #3\fi}}
\newcommand*\diff{\mathop{}\!\mathrm{d}}
\newcommand{\tjadosize}{\tiny}
\newcommand{\Tjadosize}{\Huge}
\def\Cock#1{%
    \def\temp{#1}\ifx\temp\empty{%
        \begin{tikzpicture}
            \draw[ultra thick] (0,0) circle (1);%
            \draw[ultra thick] (0,2) circle(1);%
            \draw[ultra thick] (1,0) -- (7,0);%
            \draw[ultra thick] (1,2) -- (7,2);%
            \draw[ultra thick] (7,-0.2) -- (7,2.2);%
            \draw[ultra thick] (8.2,1) arc (0:-90:1.2);%
            \draw[ultra thick] (8.2,1) arc(0:90:1.2);%
            \draw[ultra thick] (8.2,1) -- (7.7,1); % Pissschlitz
        \end{tikzpicture}%
    }%
    \else{%
    \begin{tikzpicture}
        \draw[ultra thick] (0,0) circle (1);
        \draw[ultra thick] (0,2) circle(1);
        \draw[ultra thick] (1,0) -- (#1,0);
        \draw[ultra thick] (1,2) -- (#1,2);
        \draw[ultra thick] (#1,-0.2) -- (#1,2.2);
        \draw[ultra thick] (#1 +1.2,1) arc (0:-90:1.2);
        \draw[ultra thick] (#1 +1.2,1) arc(0:90:1.2);
        \draw[ultra thick] (#1 +1.2,1) -- (#1 +0.7,1); % Pissschlitz
    \end{tikzpicture}
    }
    \fi
}
\def\Cocks#1{
    \newcount\cockcount
    \loop\ifnum\cockcount < #1 \Cock{}\\\advance\cockcount by 1 \repeat 
    \cockcount = 0
}
\def\Cockcum{
    \rotatebox{0}{
        \begin{tikzpicture}
            \draw[ultra thick] (0,0) circle (1);
            \draw[ultra thick] (0,2) circle(1);
            \draw[ultra thick] (1,0) -- (7,0);
            \draw[ultra thick] (1,2) -- (7,2);
            \draw[ultra thick] (7,-0.2) -- (7,2.2);
            \draw[ultra thick] (8.2,1) arc (0:-90:1.2);
            \draw[ultra thick] (8.2,1) arc(0:90:1.2);
            \draw[ultra thick] (8.2,1) -- (7.7,1); % Pissschlitz
            \draw[very thick] (8.3 , 1) -- (9, 1);
            \draw[very thick] (9.3, 1) to[bend left=10] (10, 0.8);
            \draw[very thick] (10.3, 0.6) to [bend left=20] (10.7, 0.2);
            \draw[very thick] (10.8, -0.2) to [bend left=10] (10.9, -0.7);
            \draw[very thick] (10.9, -1) to (10.9, -1.5);
            \fill[color=black!50, ultra thick] (10.9, -2.5) circle(0.6);
            \draw[ultra thick] (10.9, -2.5) circle(0.62);
        \end{tikzpicture}
    }
}
\def\YoOli{
    Check
    Young Alpha, auf entspannt, ja
    Heut ist ein guter Tag, sie weiß, was ich mag
    Heut ist ein guter Tag
    Dass ihr macht, was ich sag'
    Ist, was ich an euch mag
    Sarah, Lara und Tamara
    Sind immer startklar
    Ich baller' mehr als Osama
    Sie lecken an mir, als wär ich ein Lollipop
    Doch sie sind nicht mehr zwölf
    Sie sind über achtzehn
    Deswegen gibt es meinen Cock
    Frisch, einen frischen Penis
    Es ist der einzig Wahre und der Lange
    Nicht dieser Kleine, nein, der Feine
    Er ist frisch rasiert mit zwei Eiern
    Sie machen, was ich will und sucken an mir
    Weil sie mich feiern
    Wow-wow-wow-wow-wow, neues \Telefon
    IPhone, iPhone, iPhone 11 Pro
    Wow-wow-wow-wow-wow, das sind keine Hoes
    Ich lieb' sie aus ganzem Herzen
    Sie komm'n von allein
    Sie stöhn'n und müssen laut schrei'n
    Sie komm'n von allein
    Sie stöhn'n und müssen laut schrei'n
    Sie mögen es hart also beiß' ich in die Titten rein
    Sie wollen's hart ich beiß' in die Titten rein
    Heut ist ein guter Tag
    Dass ihr macht, was ich sag'
    Ist, was ich an euch mag
    Sarah, Lara und Tamara
    Sind immer startklar
    Ich baller' mehr als Osama
    Die drei lecken an mei'm Lollipop
    Und sie kennen kein Stop, kennen kein Stop
    Den ganzen Tag, ganze Nacht
    Doch ich hab noch, doch ich hab noch anderes im Kopf vor
    An mei'm Lollipop, das ist Hip-Hop
    Und bisschen Pop mit bisschen Pop
    Ja, wenn du mich schon liebst
    Dann kannst du auch mein Rücken kraul'n, Rücken kraul'n
    Ja, wenn mich so liebst
    Kannst du vier Stunden mein'n Rücken kraul'n
    Mein'n Rücken kraul'n
    Und du weißt, ich bin lieb, auch, wenn ich dir dein'n Popo hau'
    Auf den Popo hau'
    Sie komm'n von allein
    Sie stöhn'n und müssen laut schrei'n
    Sie komm'n von allein
    Sie stöhn'n und müssen laut schrei'n
    Sie mögen es hart also beiß' ich in die Titten rein, ah
    Sie wollen's hart ich beiß' in die Titten rein
    Heut ist ein guter Tag
    Dass ihr macht, was ich sag'
    Ist, was ich an euch mag
    Sarah, Lara und Tamara
    Sind immer startklar
    Ich baller' mehr als Osama
    Young Alpha
}

\newcount\loopcounter
\newcommand{\Schwamms}[1]{8\loop\ifnum\loopcounter < #1 =\advance\loopcounter by 1 \repeat D \loopcounter=0}

\renewcommand{\ln}[1]{\ensuremath{\text{ln}\left(#1\right)}}
\DeclareMathOperator{\determinant}{det}
\DeclareMathOperator{\cosinus}{cos}
\DeclareMathOperator{\sinus}{sin}
\def\det#1{\ensuremath{\determinant\if#1\empty\else\left(#1\right)\fi}}
\def\cos#1{\ensuremath{\cosinus\if \empty#1\else\left(#1\right)\fi}}
\def\sin#1{\ensuremath{\sinus\if \empty#1\else\left(#1\right)\fi}}
\def\calO#1{\ensuremath{\mathcal{O}\if \empty#1\else\left(#1\right)\fi}}
\def\Pol#1{\ensuremath{\if \empty#1\bbP \else\bbP_{#1}\fi}}
\def\LOL#1{\includegraphics[width=#1em]{Bilder/LUL.png}}
\def\Rnm#1#2{\ensuremath{\if\empty#1\R^{n\times m}%
                        \else\if\empty#2\R^{#1\times #1}%
                        \else \R^{#1\times#2}\fi\fi}}%
\def\Rn#1{\ensuremath{\if\empty#1\R^{n}\else\R^{#1}\fi}}
\def\inv#1{\ensuremath{#1^{-1}}}
\DeclareMathOperator{\grad}{grad}
\DeclareMathOperator{\tempRe}{Re}
\DeclareMathOperator{\tempIm}{Im}
\def\Re{\tempRe}
\def\Im{\tempIm}
\def\typicherweise{$\underset{\underset{\text{{\textbf{\emph{typicherweise}}}}}{\underbrace{\text{{\textbf{\emph{typicherweise}}}}}}}{\underbrace{\text{\Huge{\textbf{\emph{typicherweise}}}}}}$}
\def\ceqq{\ensuremath{\coloneqq}}
\def\eqqc{\ensuremath{\eqqcolon}}

\def\typicherweise{$\underset{
\underset{\underset{\underset{\underset{.}{\underbrace{\scalebox{0.3}{\textbf{\emph{typicherweise}}}}}}{\underbrace{
\text{{\tiny\textbf{\emph{typicherweise}}}}}}}{\underbrace{\text{{\small\textbf{\emph{typicherweise}}}}}}}{\underbrace{\text{{\Large\textbf{\emph{typicherweise}}}}}}}{\underbrace{\text{\Huge{\textbf{\emph{typicherweise}}}}}}$}

\def\ceqq{\ensuremath{\coloneqq}}
\def\eqqc{\ensuremath{\eqqcolon}}


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
\newtheorem*{remindexample}{Erinnerung/Beispiel}
\newtheorem*{motivation}{Motivation}

\newpagestyle{mystyle}
{\sethead[\thepage][][\chaptertitle]{}{}{\thepage}}
\pagestyle{mystyle}