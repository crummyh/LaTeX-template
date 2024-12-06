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

% https://coolors.co/5b7f8b-8bacb6-93bb77-3d3d3d-ffffff

\definecolor{mainTextColor}{HTML}{3D3D3D}
\definecolor{lightTextColor}{HTML}{E5E1DA}

\definecolor{mainPageColor}{HTML}{FFFFFF}

\definecolor{darkAccentColor}{HTML}{5B7F8B}
\definecolor{lightAccentColor}{HTML}{8BACB6}
\definecolor{greenAccentColor}{HTML}{93BB77}

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
  {\huge \bfseries \color{darkAccentColor} \@title }
  \hfill \@date\\[1ex] 
  {\Large \hspace{0.6em} \color{lightAccentColor} \@author}\\[2ex] 
    }} % note the extra }

%--------------------------------%
%--------{Section Config}--------%
%--------------------------------%

\titleformat{\section}
  {\Large\raggedright\bfseries\color{darkAccentColor}} 
  {}{0em}  
  {}                           % Can be used to insert code before the heading
  [\color{lightAccentColor}\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\large\raggedright\bfseries\color{darkAccentColor}} 
    {}{0em}  
  {}                           % Can be used to insert code before the heading

\titleformat{\subsubsection}
  {\raggedright\bfseries\color{darkAccentColor}} 
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
}

\lstset{style=mystyle}