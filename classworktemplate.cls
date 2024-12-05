\NeedsTeXFormat{LaTeX2e}  % TeX Version to use
\ProvidesClass{classworktemplate}% Provide class info

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % All undefined commands go to article
\ProcessOptions \relax

\LoadClass[letter,twoside]{article} % Load artical class

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry} % Define margians

%---------------------------------%
%-------{Required Packages}-------%
%---------------------------------%

\RequirePackage{titlesec} % For setting margians
\RequirePackage{xcolor} % For colors
\RequirePackage{titling} % For moddifying the base title
\RequirePackage{tikz} % For graphics

\RequirePackage[scaled]{berasans} % Import Main font (Sans Serif)
\RequirePackage{FiraMono} % Import mono font

\RequirePackage[T1]{fontenc} % For fonts

\RequirePackage{listings} % Required for Code
\RequirePackage{csquotes} % For quotes

%---------------------------------%
%---------{Define Colors}---------%
%---------------------------------%

\definecolor{mainTextColor}{HTML}{424242}

\definecolor{lightTextColor}{HTML}{DECDC3}

\definecolor{darkAccentColor}{HTML}{2D4059}
\definecolor{redAccentColor}{HTML}{EA5455}
\definecolor{tealAccentColr}{HTML}{21A0A0}


%---------------------------------%
%----------{Font Config}----------%
%---------------------------------%

\renewcommand*\familydefault{\sfdefault}

%--------------------------------%
%-----------{Commands}-----------%
%--------------------------------%


%--------------------------------%
%---------{Title Config}---------%
%--------------------------------%

\renewcommand\maketitle{
  {\raggedright % Note the extra {
  {\huge \bfseries \@title }
  \hfill \@date\\[1ex] 
  {\large \@author}\\[2ex] 
    }} % note the extra }

%--------------------------------%
%--------{Section Config}--------%
%--------------------------------%

\titleformat{\section}
  {\large\raggedright\bfseries} 
  {}{0em}  
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\normalsize\raggedright\bfseries} 
    {}{0em}  
  {}                           % Can be used to insert code before the heading

\titleformat{\subsubsection}
  {\raggedright\bfseries} 
    {}{0em}  
  {}                           % Can be used to insert code before the heading

%---------------------------------%
%-------{Code Block Config}-------%
%---------------------------------%

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{nord6},   
    commentstyle=\color{nord3},
    keywordstyle=\color{nord9},
    numberstyle=\footnotesize\color{nord1},
    stringstyle=\color{nord14},
    basicstyle=\ttfamily\small,
    breakatwhitespace=false,         
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    %arc=5mm
}


\lstset{style=mystyle}