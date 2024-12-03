\NeedsTeXFormat{LaTeX2e}  % TeX Version to use
\ProvidesClass{classworktemplate}[2024/12/3 Schoolwork LaTeX class] % Provide class info

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % All undefined commands go to artical
\ProcessOptions \relax

\LoadClass[a4paper,twoside]{article} % Load artical class

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry} % Define margians

%---------------------------------%
%-------{Required Packages}-------%
%---------------------------------%

\RequirePackage{titlesec} % For setting margians
\RequirePackage{xcolor} % For colors
\usepackage[T1]{fontenc} % For fonts

\usepackage{lmodern} % Import default font

%---------------------------------%
%---------{Define Colors}---------%
%---------------------------------%

\definecolor{mainTextColor}{HTML}{2E3440}
\definecolor{fistAccentColor}{HTML}{88C0D0}
\definecolor{secondAccentClor}{HTML}{D08770}
\definecolor{lightTextColor}{HTML}{4C566A}

%--------------------------------%
%--------{Section Config}--------%
%--------------------------------%

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading