% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "ISIMA-report.cls",
%     version         = "0.1",
%     date            = "January 2019",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, ISIMA",
%     supported       = "send email to yannfeunteun@gmail.com",
%     docstring       = "A report class for ISIMA"
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ISIMA-report}
\LoadClass[12pt, oneside, a4paper]{report}


% Required packages
\RequirePackage{lipsum}
\RequirePackage[export]{adjustbox}
\RequirePackage[francais]{babel}    % Pour la langue française
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=ISIMA-Gold,
    filecolor=black,
    linkcolor=black,
    urlcolor=ISIMA-Gold,
}

\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage[numbers, comma, sort&compress]{natbib}
\RequirePackage[small, md, sc]{titlesec}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}

% colors
\RequirePackage{color}
\RequirePackage{xcolor}
\definecolor{ISIMA-Gold}{HTML}{F4BA1B}
\definecolor{ISIMA-Blue}{HTML}{005DA3} 
\RequirePackage{url}
\RequirePackage[titles]{tocloft}
\setcounter{tocdepth}{1}
\renewcommand{\cftchapfont}{\normalsize \scshape}

\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of figures}
\raggedright

\RequirePackage{pdfsync} %do pdf synchronization [andy]

\usepackage[closeFloats, noSeparatorLine]{fltpage} %use the custom modified fltpage package
\RequirePackage{afterpage}  


\synctex=1 % turn synctex on automatically to sync between pdf viewer [andy]

%   list an entire bibliography entry inline. Useful for acknowledging when my paper was previously published
\RequirePackage{bibentry} 
\nobibliography*        

\RequirePackage{lettrine} % big letter at start of chapter
\RequirePackage[width=17cm, a4paper]{geometry}

\RequirePackage{fancyhdr} 
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage[palatino]{quotchap}
\definecolor{chaptergrey}{HTML}{F4BA1B}
\RequirePackage{titling}
\RequirePackage{setspace} 
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[labelfont={sf,bf,small},textfont={sf,small},justification=RaggedRight,margin=0pt, figurewithin=section, tablewithin=section]{caption}
\onehalfspacing
%\raggedright

\parindent 12pt
\RequirePackage{mathspec}
% use Arno Pro instead of standard LaTeX fonts
\setmathsfont(Digits,Latin,Greek)[
Path = fonts/,Extension = .ttf,
UprightFont=Arial-Regular,
BoldFont=Arial-Bold,
ItalicFont=Arial-Italic,
BoldItalicFont=Arial-BoldItalic,
Numbers={OldStyle,Proportional}]{Arial}
\setmathrm
[Path = fonts/,Extension = .ttf,
UprightFont=Arial-Regular,
BoldFont=Arial-Bold,
ItalicFont=Arial-Italic,
BoldItalicFont=Arial-BoldItalic
]{Arial}

\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text, Numbers=OldStyle}
\aliasfontfeatureoption{Ligatures}{Historic}{Historical}
\setromanfont
[Path = fonts/,
Extension = .ttf,
Mapping=tex-text, 
Numbers=OldStyle, 
Ligatures={Common}, 
UprightFont=Arial-Regular,
BoldFont=Arial-Bold,
ItalicFont=Arial-Italic,
BoldItalicFont=Arial-BoldItalic
]{Arial} %
			
%Set fonts for Mac Specific (Comment out on Windows XP)
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue} 
%\setmonofont[Scale=MatchLowercase]{Consolas}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\enterprise#1{\gdef\@enterprise{#1}}
\def\enterprisedepartment#1{\gdef\@enterprisedepartment{#1}}
\def\enterprisecity#1{\gdef\@enterprisecity{#1}}
\def\enterprisestate#1{\gdef\@enterprisestate{#1}}
\def\schoollogo#1{\gdef\@schoollogo{#1}}
\def\enterpriselogo#1{\gdef\@enterpriselogo{#1}}
\def\decologo#1{\gdef\@decologo{#1}}
\def\documenttype#1{\gdef\@documenttype{#1}}

\fancypagestyle{firstpage}
{
    
    \renewcommand{\headrulewidth}{0pt}%
    \fancyhf{}
    \fancyhead[R]{\@decologo}% Your logo/image
    \fancyhead[L]{
        \@degreemonth\ \@degreeyear \\
        \vspace{15pt}
        \theauthor
	}
    \fancyfoot[L]{\@schoollogo}% Your logo/image
    \fancyfoot[R]{\@enterpriselogo}% Your logo/image
    
}
\renewcommand{\maketitle}{
	\singlespacing
	\thispagestyle{firstpage}
	\renewcommand{\headrulewidth}{0pt}
	\begin{flushleft}
	\vspace*{320pt}
	\Huge \textcolor{ISIMA-Blue}{\textbf{\thetitle}} \normalsize \\
	\vspace{15pt}
	\textcolor{gray}{
	\Large
	\@documenttype \\
	\vspace{10pt}
    \@department\\
	}
	\end{flushleft} 
	\vspace*{\fill}
}


\newcommand{\copyrightpage}{
	\newpage \thispagestyle{empty} \vspace*{\fill}
	\sc \noindent \copyright~\textit{\@degreeyear \hspace{3pt}~- \theauthor} \\
	\noindent All rights reserved. \\
	\vspace{10pt}
	\@university\\ \@universitycity, \@universitystate \\
	\vspace{5pt}
	\@enterprise\\ \@enterprisecity, \@enterprisestate\\
	\vspace*{\fill} \newpage \rm
}

\newcommand{\abstractpage}{
	\newpage
	\pagenumbering{roman}
	\setlength{\headheight}{0pt} 
	\setcounter{page}{3}
	\thispagestyle{fancy}
	\rhead{\@author}
	\begin{center}
	\vspace*{1pt}
	\Large \textcolor{ISIMA-Blue}{\textbf{\@title}} \normalsize\\
	\vspace*{15pt}
	\sc Abstract \\ \rm
	\end{center}
	\doublespace 
	\input{frontmatter/abstract}
	\doublespace 
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
	\onehalfspacing
}

% the list of authors
\newcommand{\authorlist}{
	\pagestyle{fancy}
	\newpage
	\thispagestyle{fancy} 
	\chapter*{Author List}
	\noindent \input{frontmatter/authorlist}
	\newpage \rm
	}

% the acknowledgments page
\newcommand{\acknowledgments}{
	\chapter*{Remerciements}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	\newpage
	\setcounter{page}{1}
	\pagenumbering{arabic}}
	
% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}