\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classworktemplate}[2024/11/19 Schoolwork LaTeX class]

\RequirePackage{xcolor}
\RequirePackage{hyperref}
%\RequirePackage{xunicode}
\RequirePackage{fontspec}
\RequirePackage{xltxtra}
\RequirePackage{minted}

\RequirePackage[letterpaper,top=2cm,bottom=2cm,left=3cm,right=3cm,marginparwidth=1.75cm]{geometry}

\definecolor{accentColor}{HTML}{88C0D0}
\definecolor{textColor}{HTML}{2E3440}
\definecolor{subTitleColor}{HTML}{4C566A}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\LoadClass{article}

\newfontfamily\bodytextfont[]{Open Sans}
\newfontfamily\headertextfont[]{JetBrains Mono}[
  FontFace={t}{n}{Font=* Thin},
  FontFace={el}{n}{Font=* ExtraLight},
  FontFace={l}{n}{Font=* Light},
  FontFace={sb}{n}{Font=* SemiBold},
  FontFace={eb}{n}{Font=* ExtraBold},
]

\setmainfont[Color=textColor]{Noto Sans}
\setmonofont[Color=textColor]{JetBrains Mono}
\setsansfont[Color=textColor]{Noto Sans}
