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
\RequirePackage{tcolorbox} % For boxes. 

\RequirePackage[scaled]{berasans} % Import Main font (Sans Serif)
\RequirePackage{FiraMono} % Import mono font

\RequirePackage[T1]{fontenc} % For fonts

\RequirePackage{listings} % Required for Code
\RequirePackage{csquotes} % For quotes

%---------------------------------%
%---------{Define Colors}---------%
%---------------------------------%

\definecolor{mainTextColor}{HTML}{2E3440}
\definecolor{fistAccentColor}{HTML}{88C0D0}
\definecolor{secondAccentClor}{HTML}{D08770}
\definecolor{lightTextColor}{HTML}{4C566A}

\definecolor{nord0}{HTML}{2E3440}
\definecolor{nord1}{HTML}{3B4252}
\definecolor{nord2}{HTML}{434C5E}
\definecolor{nord3}{HTML}{4C566A}
\definecolor{nord4}{HTML}{D8DEE9}
\definecolor{nord5}{HTML}{E5E9F0}
\definecolor{nord6}{HTML}{ECEFF4}
\definecolor{nord7}{HTML}{8FBCBB}
\definecolor{nord8}{HTML}{88C0D0}
\definecolor{nord9}{HTML}{81A1C1}
\definecolor{nord10}{HTML}{5E81AC}
\definecolor{nord11}{HTML}{BF616A}
\definecolor{nord12}{HTML}{D08770}
\definecolor{nord13}{HTML}{EBCB8B}
\definecolor{nord14}{HTML}{A3BE8C}
\definecolor{nord15}{HTML}{B48EAD}

%---------------------------------%
%----------{Font Config}----------%
%---------------------------------%

\renewcommand*\familydefault{\sfdefault}

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
    numberstyle=\tiny\color{nord1},
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