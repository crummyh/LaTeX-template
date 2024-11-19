\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classworktemplate}[2024/11/19 Schoolwork LaTeX class]

\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{fontspec}
\RequirePackage{xltxtra}
\RequirePackage{lmodern}
\RequirePackage{listings}

\definecolor{accentColor}{HTML}{88C0D0}
\definecolor{textColor}{HTML}{2E3440}
\definecolor{subTitleColor}{HTML}{4C566A}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\DeclareOption{\commandName}{\commandsToRun}

\DeclareOption{OptionToDiable}{\OptionNotUsed}
\ProcessOptions\relax

\LoadClass[twoside]{article}
