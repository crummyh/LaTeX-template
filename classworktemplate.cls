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
\RequirePackage{eso-pic} % For Colored boxes

\RequirePackage[scaled]{berasans} % Import Main font (Sans Serif)
\RequirePackage{OldStandard} % Import Serif font for titles
\RequirePackage{FiraMono} % Import mono font

\RequirePackage[T1]{fontenc} % For fonts

\RequirePackage{listings} % Required for Code
\RequirePackage{csquotes} % For quotes

%---------------------------------%
%---------{Define Colors}---------%
%---------------------------------%

% https://coolors.co/5b7f8b-8bacb6-93bb77-3d3d3d-ffffff

\definecolor{mainTextColor}{HTML}{414651}
\definecolor{lightTextColor}{HTML}{FCFCFC}

\definecolor{mainPageColor}{HTML}{FFFFFF}

\definecolor{accentColor}{HTML}{A5B68D}

\AtBeginDocument{\globalcolor{mainTextColor}}

%---------------------------------%
%----------{Font Config}----------%
%---------------------------------%

\renewcommand*\familydefault{\sfdefault}

%--------------------------------%
%-----------{Commands}-----------%
%--------------------------------%

\newcommand{\globalcolor}[1]{%
  \color{#1}\global\let\default@color\current@color
}

%--------------------------------%
%---------{Title Config}---------%
%--------------------------------%

\renewcommand\maketitle{
  {\raggedright % Note the extra {
  {\hspace{-1 em} \Huge \bfseries \rmfamily \color{accentColor} \@title }
  \hfill \@date\\[1ex] 
  { \Large \rmfamily \itshape \color{mainTextColor} \@author}\\[2ex] 
    }} % note the extra }

%--------------------------------%
%--------{Section Config}--------%
%--------------------------------%

\titleformat{\section}
  {\LARGE \raggedright \bfseries \rmfamily \color{accentColor}} 
  {}{0em}  
  {}                           % Can be used to insert code before the heading
  [\color{accentColor}\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\Large \raggedright \bfseries \rmfamily \color{accentColor}} 
    {}{0em}  
  {}                           % Can be used to insert code before the heading

\titleformat{\subsubsection}
  {\large \raggedright \bfseries \rmfamily \color{accentColor}} 
    {}{0em}  
  {}                           % Can be used to insert code before the heading

  

%---------------------------------%
%-------{Code Block Config}-------%
%---------------------------------%

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{mainTextColor},   
    commentstyle=\color{lightTextColor},
    keywordstyle=\color{accentColor},
    numberstyle=\footnotesize\color{mainTextColor},
    stringstyle=\color{accentColor},
    basicstyle=\color{mainPageColor}\ttfamily\small,
    breakatwhitespace=false,         
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
}

\lstset{style=mystyle}
