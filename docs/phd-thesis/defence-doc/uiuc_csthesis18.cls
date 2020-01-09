%%
%% This was adapted from the ECE09 class file
%%
\def\fileversion{ECE3.11} \def\filedate{2018/02/22}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uiuc_csthesis18}
         [\filedate\ \fileversion\ UIUC Thesis (PJC)]

\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{calc} %% 3.07
\expandafter\ifx\csname @ifundefined\endcsname\relax
  \def\@ifundefined#1{%
    \expandafter\ifx\csname#1\endcsname\relax
      \expandafter\@firstoftwo
    \else
      \expandafter\@secondoftwo
    \fi}
\fi
\@ifundefined{MakeUppercase}{\let\MakeUppercase=\uppercase}{}
\newif\if@thesisdraft \@thesisdraftfalse
\newif\if@thesisfancy \@thesisfancyfalse
\newif\if@fullpagesingle \@fullpagesinglefalse	%% 3.09
\newif\if@fullpage \@fullpagefalse
\newif\if@on@inchm@rgin \@on@inchm@rginfalse %% 3.09
\newif\if@largecaps \@largecapsfalse
\newif\if@proquest \@proquestfalse
\newif\if@edeposit \@edepositfalse
\newif\if@thesisoffcenter \@thesisoffcenterfalse
\newif\if@centerchapter \@centerchapterfalse
\newif\if@doctoral\@doctoralfalse
\newif\if@c@mmitt@@\@c@mmitt@@false
\newif\if@t@cn@sub\@t@cn@subfalse
\newif\if@r@gright\@r@grighttrue
\newif\if@mixc@sech@p \@mixc@sech@pfalse
\newif\if@littlecaptions\@littlecaptionsfalse  %% 3.10
\newdimen\thesis@parindent
\DeclareOption{draftthesis}{\@thesisdrafttrue}
\DeclareOption{fancy}{\@thesisfancytrue}
%%%%\DeclareOption{fullpage}{\@fullpagetrue}
\DeclareOption{fullpage}{\@fullpagetrue\@fullpagesinglefalse} %% 3.09
\DeclareOption{fullpagesingle}{\@fullpagesingletrue\@fullpagefalse} %% 3.09
\DeclareOption{littlecaptions}{\@littlecaptionstrue} %% 3.10
\DeclareOption{proquest}{\@proquesttrue}
\DeclareOption{toclabels}{\AtBeginDocument{\toclabels}}
\DeclareOption{tocnosub}{\@t@cn@subtrue}
\DeclareOption{edeposit}{\@edeposittrue}
\DeclareOption{offcenter}{\@thesisoffcentertrue}
\DeclareOption{centerchapter}{\@centerchaptertrue}
\DeclareOption{mixcasechap}{\@mixc@sech@ptrue}
\DeclareOption{noragright}{\@r@grightfalse}
\DeclareOption{largecaps}{\@largecapstrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\PassOptionsToClass{letterpaper,oneside}{book}
\ProcessOptions
\LoadClass{book}
\if@proquest
    \nofiles    % don't overwrite the .aux files
    \def\makeindex{}
    \@thesisfancyfalse
    \@fullpagetrue
    \@fullpagesinglefalse %% 3.09
\fi
\if@thesisdraft
  \newcount\timehh\newcount\timemm
  \timehh=\time \divide\timehh by 60
  \timemm=\time \count255=\timehh \multiply\count255 by -60
    \advance\timemm by \count255
  \def\draftheader{\slshape Draft of \today\ at
  \ifnum\timehh<10 0\fi\number\timehh\,:\,\ifnum\timemm<10 0\fi\number\timemm}%
\fi
\newcommand{\toclabels}{%
    \addtocontents{toc}{\vspace*{-\baselineskip}\hfill Page\endgraf}%
    \addtocontents{lof}{\vspace*{-\baselineskip}~Figure\hfill Page\endgraf}%
    \addtocontents{lot}{\vspace*{-\baselineskip}~Table\hfill Page\endgraf}}
\def\@mkuptitle#1{\gdef\@Utitle{#1}}
\def\title#1{\gdef\@title{#1}\MakeUppercase{\protect\@mkuptitle{#1}}}
\def\@mkupauthor#1{\gdef\@Uauthor{#1}}
\def\author#1{\gdef\@author{#1}\MakeUppercase{\protect\@mkupauthor{#1}}}
\newcommand{\otherdoctorate}[2]{\def\@degree{#1}
    \def\degree{#2}
    \def\@thesisname{DISSERTATION}
    \@doctoraltrue
    }
\newcommand{\othermasters}[2]{\def\@degree{#1}
    \def\degree{#2}
    \def\@thesisname{THESIS}
    \@doctoralfalse
    }
\newcommand\phdthesis{\otherdoctorate{Doctor of Philosophy}{Ph.D.}
    }
\newcommand\msthesis{\othermasters{Master of Science}{M.S.}
    }
\def\degreeyear#1{\def\@degreeyear{#1}}
\def\department#1{\def\@dept{#1}}
\def\college#1{\def\@college{#1}}
\def\schools#1{\def\@schools{#1}}
\newcommand{\committee}[1]{\gdef\@committee{#1}\@c@mmitt@@true}
\gdef\@committee{%
  \if@doctoral
    \ClassError{uiucecethesis09}{Committee needed for doctorates}%
    {Use \protect\committee\space with members separated by \protect\\'s.}
  \fi}
\newcommand*{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand*{\adviser}[1]{\gdef\@advisor{#1}}
\gdef\@advisor{%
  \if@doctoral{
    \ClassError{uiuc_csthesis18}{Adviser needed for ProQuest abstract}%
  }\else{
    \if@c@mmitt@@\else
    \ClassError{uiuc_csthesis18}{Adviser must be specified}%
  \fi}
\fi}
\newcommand*{\volume}[1]{\gdef\thesis@volume{VOLUME~#1}}
\newcommand*{\thesis@volume}{}
%%% \def\copyrightnotice{\copyright~\@degreeyear~by \@author. All rights reserved.} % 3.05
\def\copyrightnotice{\copyright~\@degreeyear~\@author}
\newif\if@thesiscrpage \@thesiscrpagetrue
\let\nocopyrightpage\@thesiscrpagefalse
\if@thesisdraft\nocopyrightpage\fi
\msthesis
\department{Electrical and Computer Engineering}
\college{Graduate College}
\def\@schools{}
\def\@degreeyear{\number\year}
\newlength{\degree@dept@max}   %% v 3.07
\newlength{\degree@dept@wid}
\newsavebox{\degree@dept@test} %% ^ 3.07
\renewcommand\maketitle{
    \if@thesiscrpage
        \newpage
        \thispagestyle{empty}
        \null\vfill
        \centerline{\copyrightnotice}%
        \vskip 3ex % skip to visually center copyright notice
        \vfill
    \fi
    \newpage
    \thispagestyle{empty}%
    \enlargethispage{1in}%
    \begingroup
    \def\baselinestretch{1}
    \ifnum \@ptsize>1 %% 3.07
        \@normalsize
        \newcommand{\thesis@small}{\small}
    \else
        \large
        \newcommand{\thesis@small}{\@normalsize}
    \fi
    \sbox{\degree@dept@test}{Doctor of PhilosophElectrical and Computer Engineerin}
    \setlength{\degree@dept@max}{\wd\degree@dept@test}
    \sbox{\degree@dept@test}{\@degree\@dept}
    \setlength{\degree@dept@wid}{\wd\degree@dept@test}
    \ifdim\degree@dept@wid>\degree@dept@max
      \thesis@small
    \fi
    \headheight=0pt \headsep=0pt
    \topmargin=1in %% had been 1in if edeposit, 0in otherwise
    \@tempdima=\paperwidth
    \advance\@tempdima by -\textwidth
    \divide\@tempdima by 2
    \advance\@tempdima by -1in
    \oddsidemargin=\@tempdima
    \let\evensidemargin=\oddsidemargin
    \newdimen\thesis@dim
    \thesis@dim=1.5in %% ECE: edit to adjust margin (SR)
    \if@largecaps
       \def\lc@selectfont{\large\selectfont}%
%%%        \def\lc@selectfont{\fontshape{lc}\selectfont}%
    \else
        \def\lc@selectfont{}%
    \fi
    \begin{center}
      \vbox to \thesis@dim{%
          {\lc@selectfont\@Utitle}
         \if@thesisdraft
         \\[12pt]
         \draftheader
         \fi
          \vfil}%
     \vbox to 2.5in{%
%%%     \vbox to 2in{% wrong, corrected rev. 3.04
%%%          {\lc@selectfont BY}\\[12pt]
          BY\linebreak\linebreak %% 3.06
         {\lc@selectfont\@Uauthor}\\[12pt]
          \begin{tabular}{c}\@schools\end{tabular}}%\vfil}%
     \vbox to -1.0in{\thesis@volume\vfil} %% ECE: edit to adjust title page spacing (SR)
      \vskip-0.72in %% ECE: edit to adjust title page spacing {SR)
      \vbox to 2.5in{%
%%%        {\lc@selectfont \@thesisname}\\[12pt]
        \@thesisname\\[12pt] % [12pt] added back 3.08
        Submitted in partial fulfillment of the requirements\\
        for the degree of \@degree\ in \@dept\\
        in the \@college\ of the\\
        University of Illinois at Urbana-Champaign, \@degreeyear}%\vfil}%
     \vskip-0.60in %% ECE: edit to adjust title page spacing (SR)
       Urbana, Illinois
    \end{center} %% ECE: edit (SR)
     \vskip 0.17in %% ECE: edit to adjust title page spacing (SR)
        \vbox to 2.1in{
      \if@doctoral
        Doctoral Committee:\\[12pt] 
        \hspace*{0.5in}\begin{tabular}{l}\@committee\end{tabular}%\vfil} 
      \else
        \if@c@mmitt@@
          \hspace*{-0.5in}Master's Committee:\\[12pt] 
         \begin{tabular}{l}\@committee\end{tabular}%\vfil} 
        \else
        \hspace*{-0.5in}Adviser:\\[12pt] 
         \@advisor%\vfil} 
        \fi
      \fi}
    \newpage
    \endgroup
}
\let\thesis@frontmatter=\frontmatter
\def\frontmatter{%
    \thesis@frontmatter
    \setcounter{page}{2}
    \if@r@gright
      \thesis@parindent\parindent
      \raggedright
      \parindent\thesis@parindent
    \fi
    }
\renewcommand\contentsname{\bf\if@mixc@sech@p Table of Contents\else TABLE OF CONTENTS\fi} %% SR, JSC
\addtocontents{toc}{\vspace{1cm}}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus 0.2em \@minus 0.2em
    \setlength\@tempdima{1.5em}
    \begingroup
      \leftskip \z@ \rightskip \@tocrmarg \parfillskip -\rightskip
      \parindent \z@
      \leavevmode %%\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern\@dotsep mu\hbox{.}\mkern\@dotsep mu$}
      \hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\if@t@cn@sub
\renewcommand\l@subsection{\@gobbletwo}
\renewcommand\l@subsubsection{\@gobbletwo}
\fi
\def\listtablename{List of Tables}
\def\listfigurename{List of Figures}
\let\thesis@tableofcontents=\tableofcontents
\def\tableofcontents{{\singlespacing\thesis@tableofcontents}}
\let\thesis@listoftables=\listoftables
\let\thesis@listtablename=\listtablename % JSC
\def\listoftables{\newpage%
\def\listtablename{\if@mixc@sech@p\thesis@listtablename
\else\MakeUppercase{\thesis@listtablename}\fi} %% JSC
    \addcontentsline{toc}{chapter}{\listtablename}%
    {\singlespacing\thesis@listoftables}}
\let\thesis@listoffigures=\listoffigures
\let\thesis@listfigurename=\listfigurename % JSC
\def\listoffigures{\newpage%
\def\listfigurename{\if@mixc@sech@p\thesis@listfigurename
\else\MakeUppercase{\thesis@listfigurename}\fi} %% JSC
    \addcontentsline{toc}{chapter}{\listfigurename}%
    {\singlespacing\thesis@listoffigures}}
\def\abstractname{Abstract} %% all caps (SR)
\if@proquest
 \def\maketitle{}
 \newenvironment{abstract}{%
    \newpage
    \pagestyle{empty}
    \setcounter{page}{1}
    \begin{singlespace}\begin{center}
    \@Utitle\\[\baselineskip]
    \@author, \degree\\
    Department of \@dept\\
    University of Illinois at Urbana-Champaign, \@degreeyear\\
    \@advisor, Adviser\\[\baselineskip]
    \end{center}\end{singlespace}\par\noindent\ignorespaces
    }{
    \newpage
    \aftergroup\enddocument
    \aftergroup\endinput
    }
\else
 \newenvironment{abstract}{\chapter*{\bf\abstractname}\vspace{22pt}}{}
\fi
\newenvironment{dedication}{
    \newpage
    \leavevmode\vfill
    \begin{center}
    \itshape
    }{
    \end{center}
    \vskip 3ex
    \vfill
    \newpage
    }
%added acknowledgments environment 11/23/2009 by Brian Johnson
\def\acknowledgmentsname{Acknowledgments} %%all caps (SR)
\newenvironment{acknowledgments}{\chapter*{\bf\acknowledgmentsname}\vspace{22pt}}{}
\newpage
\newenvironment*{symbollist}[1][1in]{
    \begin{list}{}{\singlespacing
     \setlength{\leftmargin}{#1}
     \setlength{\labelwidth}{#1}
     \addtolength{\labelwidth}{-\labelsep}
     \setlength{\topsep}{0in}}%
     \def\makelabel##1{\hfil##1\hfil}%
    }{
    \end{list}}
\newenvironment*{symbollist*}[1][1in]{
    \begin{symbollist}[#1]
    \def\makelabel##1{##1\hfil}}
    {\end{symbollist}}
\if@thesisfancy
  \font\cminch=cminch at 60pt
  \newcommand\chapternumberfont{\cminch}
\else
  \newcommand\chapternumberfont{\normalsize} %% (SR)
\fi
\newcommand\chaptertitlefont{\normalsize} %% (SR)
\def\@chapter[#1]#2{%
\def\c@pch@ptitl@{\if@mixc@sech@p#1\else\MakeUppercase{#1}\fi} %% (JSC)
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \typeout{\@chapapp\space\thechapter.}%
      \if@thesisfancy
        \addcontentsline{toc}{chapter}%
          {\protect\numberline{\thechapter}\c@pch@ptitl@}%
      \else
        \addcontentsline{toc}{chapter}%
          {\@chapapp\ \thechapter\quad \c@pch@ptitl@}%
      \fi
    \else
      \addcontentsline{toc}{chapter}{\c@pch@ptitl@}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{\c@pch@ptitl@}%
  \fi
  \chaptermark{\c@pch@ptitl@}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi}
\newskip\thesis@chapskip
\AtBeginDocument{%
  \newdimen\chapternumberheight
  \begingroup
    \chapternumberfont
    \setbox255=\hbox{A}
    \if@thesisfancy
      \global\thesis@chapskip=\ht255
    \else
      \global\thesis@chapskip=\baselineskip
    \fi
    \dimen255=\ht255
    \chaptertitlefont
    \setbox255=\hbox{A}
    \advance\dimen255 by \ht255
    \if@thesisfancy
      \global\advance\thesis@chapskip by -\ht255
      \global\divide\thesis@chapskip by 2
      \global\advance\thesis@chapskip by 10\p@
    \else
      \global\advance\thesis@chapskip by 20\p@
    \fi
    \divide\dimen255 by 2
    \global\chapternumberheight=\dimen255
  \endgroup}
\newlength{\chaptertitleheight}
\if@thesisfancy
  \setlength{\chaptertitleheight}{0.5in}
\else
  \setlength{\chaptertitleheight}{0.5in}
\fi
\def\@makechapterhead#1{%
  \def\capchaptitle{\if@mixc@sech@p#1\else\MakeUppercase{#1}\fi} %% (JSC)
  \vbox{
    \def\baselinestretch{1}\@normalsize
    \parindent \z@ \raggedright \normalfont
    \if@centerchapter
      \centering
    \fi
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \thesis@chapskip=\z@
        \if@thesisfancy
          \vspace*{10\p@}%
          \leavevmode\llap{\vbox to \chapternumberheight{\hbox{%
            \chapternumberfont\thechapter\,}\vss}}%
        \else
          {\chapternumberfont \bf\@chapapp\space \thechapter: \capchaptitle}
        \fi
      \else
        {\chapternumberfont \bf\capchaptitle}
      \fi
    \fi
  }%
  \vspace{22pt}
  \par\nobreak%
  }
\def\@makeschapterhead#1{%
  \def\capchaptitle{\if@mixc@sech@p#1\else\MakeUppercase{#1}\fi} %% (JSC)
  \vbox to \chaptertitleheight{
    \def\baselinestretch{1}\@normalsize
    \parindent \z@ \raggedright \normalfont
    \if@centerchapter
      \centering
    \fi
    \interlinepenalty\@M
    \vspace*{\thesis@chapskip}
    \chaptertitlefont \capchaptitle %% JSC
    \vfil
  }%
  \par\nobreak%
  }
\newcommand{\sectiontitlefont}{\normalsize} %% (SR)
\newcommand{\subsectiontitlefont}{\normalsize} %% (SR)
\newcommand{\subsubsectiontitlefont}{\normalsize} %% (SR)
\renewcommand\section{\@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {1.8ex \@plus.2ex}%
  {\singlespacing\raggedright\normalfont\sectiontitlefont\MakeUppercase}} %% (SR)
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.3ex \@plus .2ex}%
  {\singlespacing\raggedright\normalfont\subsectiontitlefont}} %% (SR)
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.3ex \@plus .2ex}%
  {\singlespacing\raggedright\normalfont\subsubsectiontitlefont}} %% (SR)
\let\thesis@appendix\appendix
\renewcommand\appendix{\thesis@appendix\@ifstar{\gdef\thechapter{}}{}}
\renewcommand\bibname{\if@mixc@sech@p References\else REFERENCES\fi} %% JSC
\AtBeginDocument{\let\thesis@thebib\thebibliography
    \let\thesis@endbib\endthebibliography
    \def\thebibliography{\begingroup\singlespacing%
        \chapter{\bibname}%
        \let\chapter\@gobbletwo%
        \thesis@thebib}
    \def\endthebibliography{\thesis@endbib\endgroup}}
\let\thesis@theindex=\theindex
\def\theindex{\addcontentsline{toc}{chapter}{\indexname}%
    \begingroup\singlespacing\thesis@theindex}
\let\thesis@endtheindex=\endtheindex
\def\endtheindex{\thesis@endtheindex\endgroup}
\topmargin=0pt
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep
\textheight 8.9in
\if@fullpage
  \@on@inchm@rgintrue %% v 3.09
\else\if@fullpagesingle
    \@on@inchm@rgintrue
  \else
    \@on@inchm@rginfalse
  \fi
\fi
\if@on@inchm@rgin     %% ^ 3.09 
  \setlength{\textwidth}{\paperwidth}
  \if@thesisoffcenter
    \addtolength{\textwidth}{-2.75in}
  \else
    \addtolength{\textwidth}{-2in}
  \fi
  \@settopoint\textwidth
\fi
\setlength{\@tempdima}{\paperwidth}
\addtolength{\@tempdima}{-\textwidth}
\setlength{\oddsidemargin}{.5\@tempdima}
\addtolength{\oddsidemargin}{-1in}
\if@thesisoffcenter
  \addtolength{\oddsidemargin}{0.25in}
  \reversemarginpar
\fi
\setlength{\marginparwidth}{\oddsidemargin}
\addtolength{\marginparwidth}{1in}
\addtolength{\marginparwidth}{-\marginparsep}
\addtolength{\marginparwidth}{-24pt}
\@settopoint\oddsidemargin
\@settopoint\marginparwidth
\setlength{\evensidemargin}{\oddsidemargin}
\if@thesisdraft
    \newcommand{\note}[1]{\marginpar{\def\baselinestretch{1}\small\raggedright #1}}
\else
    \newcommand{\note}[1]{}
    \let\thesis@marginpar\marginpar
    \def\marginpar{%
        \ClassWarning{uiuc_csthesis18}{Margin paragraphs fall outside the allowed margins\MessageBreak
            for UIUC Theses, use \protect\note\space instead of \protect\marginpar.}%
        \thesis@marginpar}
\fi
\def\ps@plain{%
  \let\@mkboth\@gobbletwo
  \if@thesisdraft
    \def\@oddhead{\draftheader\hfil}
  \else
    \let\@oddhead\@empty
  \fi
  \let\@evenhead\@oddhead
  \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
  \let\@evenfoot\@oddfoot
}
\if@twoside
  \def\ps@headings{%
    \if@thesisdraft
      \def\@oddhead{\draftheader\hfil\slshape\rightmark}
      \def\@evenhead{\slshape\leftmark\hfil\draftheader}
    \else
      \def\@oddhead{\hfil\slshape\rightmark}
      \def\@evenhead{\slshape\leftmark\hfil}
    \fi
    \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
    \let\@evenfoot\@oddfoot
    \let\@mkboth\markboth
    \if@thesisdraft
      \def\chaptermark##1{%
        \markboth {\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \@chapapp\ \thechapter%
            \fi
          \fi}}{}}
    \else
      \def\chaptermark##1{%
        \def\@chaphead{\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \if@thesisfancy
                \thechapter.~~%
              \else
                \@chapapp\ \thechapter.~~%
              \fi
            \fi
          \fi
          ##1}}%
        \markboth{\@chaphead}{\@chaphead}}
    \fi
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \if@thesisdraft
      \def\@oddhead{\draftheader\hfil\slshape\rightmark}
    \else
      \def\@oddhead{\hfil\slshape\rightmark\hfil}
    \fi
    \let\@evenhead\@oddhead
    \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
    \let\@evenfoot\@oddfoot
    \let\@mkboth\markboth
    \if@thesisdraft
      \def\chaptermark##1{%
        \markright {\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \@chapapp\ \thechapter%
            \fi
          \fi}}}
    \else
      \def\chaptermark##1{%
        \markright {\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \if@thesisfancy
                \thechapter.~~%
              \else
                \@chapapp\ \thechapter.~~%
              \fi
            \fi
          \fi
          ##1}}}
    \fi
     }
\fi
\pagestyle{plain}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \@mkboth{}{}
  \thispagestyle{plain}
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}
\renewcommand\chaptername{\if@mixc@sech@p Chapter\else CHAPTER\fi}
\renewcommand\appendixname{\if@mixc@sech@p Appendix\else APPENDIX\fi}
\newcommand\aubioname{Author's Biography} %% instead of Vita for ECE
\newcommand\aubio{
  \chapter{\aubioname}%
}
\newcommand\vitaname{Vita}
\newcommand\vita{
  \chapter{\vitaname}%
}
\def\thesisspacing{\if@fullpage\setstretch{1.5}\else\onehalfspacing\fi}
\pagenumbering{roman}
\AtBeginDocument{\thesisspacing}
\def\preliminary{\frontmatter}
\let\endpreliminary=\relax
\def\thesis{\mainmatter}
\let\endthesis=\relax
\renewcommand{\@tocrmarg}{4.00em}
\if@r@gright
  \if@littlecaptions     %% v 3.10
    \usepackage[justification=raggedright,font=scriptsize]{caption}
  \else
    \usepackage[justification=raggedright]{caption}
  \fi
\else
  \if@littlecaptions
    \usepackage[font=scriptsize]{caption}
  \fi                    %% ^ 3.10
\fi
\newcommand{\ignore}[1]{{}}
\newcommand{\extraline}{\if@r@gright\linebreak\else\\\fi}
\endinput
%%
%% End of file `uiucecethesis09.cls'.
