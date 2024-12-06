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
\RequirePackage{FiraMono} % Import mono font

\RequirePackage[T1]{fontenc} % For fonts

\RequirePackage{listings} % Required for Code
\RequirePackage{csquotes} % For quotes

%---------------------------------%
%---------{Define Colors}---------%
%---------------------------------%

% https://coolors.co/89a8b2-b3c8cf-9abf80-484848-ffffff

\definecolor{mainTextColor}{HTML}{484848}
\definecolor{lightTextColor}{HTML}{E5E1DA}

\definecolor{mainPageColor}{HTML}{FFFFFF}

\definecolor{darkAccentColor}{HTML}{89A8B2}
\definecolor{lightAccentColor}{HTML}{B3C8CF}
\definecolor{greenAccentColor}{HTML}{9ABF80}


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
  {
  \hspace{-2em}
  \AddToShipoutPictureBG*{\AtTextUpperLeft{%
  \color{greenAccentColor}\rule[-4em]{0.05in}{4em}}}
  \AddToShipoutPictureBG*{\AtTextUpperLeft{%
  \color{lightAccentColor}\rule[-2.66em]{0.05in}{2.66em}}}
  \AddToShipoutPictureBG*{\AtTextUpperLeft{%
  \color{darkAccentColor}\rule[-1.33em]{0.05in}{1.33em}}}
  }
  {\raggedright % Note the extra {
  {\huge \bfseries \@title }
  \hfill \@date\\[1ex] 
  {\large \hspace{1em} \@author}\\[2ex] 
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
    backgroundcolor=\color{mainTextColor},   
    commentstyle=\color{lightTextColor},
    keywordstyle=\color{darkAccentColor},
    numberstyle=\footnotesize\color{mainTextColor},
    stringstyle=\color{lightAccentColor},
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
    %arc=5mm
}


\lstset{style=mystyle}