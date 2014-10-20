\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ICS-2015}
  [2010/07/23 v0.90
   Standard LaTeX document class for INFORMS ICS-2015]

\RequirePackage{amsmath,amssymb,ifthen,url,hyperref}
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Variation of `ot1cmr.fd',
\DeclareFontFamily{OT1}{cmr}{\hyphenchar\font45 }
\DeclareFontShape{OT1}{cmr}{m}{n}{<-10>gen*cmr<10->cmr10}{}
\DeclareFontShape{OT1}{cmr}{m}{sl}{<->cmsl10}{}
\DeclareFontShape{OT1}{cmr}{m}{it}{<5><6><7>cmti7<8>cmti8<9>cmti9<10->cmti10}{}
\DeclareFontShape{OT1}{cmr}{m}{sc}{<5->cmcsc10}{}
\DeclareFontShape{OT1}{cmr}{m}{ui}{<->cmu10}{}
%%%%%%%% bold extended series
\DeclareFontShape{OT1}{cmr}{bx}{n}{<5><6><7><8><9>gen*cmbx<10->cmbx10}{}
\DeclareFontShape{OT1}{cmr}{bx}{sl}{<->cmbxsl10}{}
\DeclareFontShape{OT1}{cmr}{bx}{it}{<->cmbxti10}{}
\DeclareFontShape{OT1}{cmr}{bx}{ui}{<->ssub*cmr/m/ui}{}
\DeclareFontShape{OT1}{cmtt}{m}{n}{<5><6><7><8>cmtt8<9>cmtt9<10->cmtt10}{}
%%%%%% make sure subst shapes are available
\DeclareFontShape{OT1}{cmtt}{m}{it}{<5><6><7><8><9><10->cmitt10}{}
\DeclareFontShape{OT1}{cmtt}{m}{sl}{<5><6><7><8><9><10->cmsltt10}{}
\DeclareFontShape{OT1}{cmtt}{m}{sc}{<->cmtcsc10}{}
\DeclareFontShape{OT1}{cmtt}{m}{ui}{<->ssub*cmtt/m/it}{}
\DeclareFontShape{OT1}{cmtt}{bx}{n}{<->ssub*cmtt/m/n}{}
\DeclareFontShape{OT1}{cmtt}{bx}{it}{<->ssub*cmtt/m/it}{}
\DeclareFontShape{OT1}{cmtt}{bx}{ui}{<->ssub*cmtt/m/it}{}
\DeclareFontShape{OT1}{cmss}{m}{n}{<->cmss10}{}
% Font undefined, therefore substituted
\DeclareFontShape{OT1}{cmss}{m}{it}{<->sub*cmss/m/sl}{}
\DeclareFontShape{OT1}{cmss}{m}{sl}{<->cmssi10}{}
%%%%%%% Font/shape undefined, therefore substituted
\DeclareFontShape{OT1}{cmss}{m}{sc}{<->sub*cmr/m/sc}{}
%%%%%%% Font/shape undefined, therefore substituted
\DeclareFontShape{OT1}{cmss}{m}{ui}{<->sub*cmr/m/ui}{}
%%%%%%%% semibold condensed series
\DeclareFontShape{OT1}{cmss}{sbc}{n}{<5><6><7><8><9>cmssdc10<10->cmssdc10}{}
%%%%%%%%% bold extended series
\DeclareFontShape{OT1}{cmss}{bx}{n}{<5><6><7><8><9>cmssbx10<10->cmssbx10}{}
%%%%%%% Font/shape undefined, therefore substituted
\DeclareFontShape{OT1}{cmss}{bx}{ui}{<->sub*cmr/bx/ui}{}
\DeclareFontShape{OML}{cmm}{m}{it}{<5><6><7><8><9>gen*cmmi<10->cmmi10}{}
\DeclareFontShape{OML}{cmm}{b}{it}{<5><6><7><8><9>gen*cmmib<10->cmmib10}{}
\DeclareFontShape{OML}{cmm}{bx}{it}{<->ssub*cmm/b/it}{}
%%%%%%%%%%%%%%%%%%-AMS-msam+msbm fonts
\DeclareFontFamily{U}{msa}{}
\DeclareFontShape{U}{msa}{m}{n}{<-6> msam5 <6-8> msam7 <8-> msam10}{}
\DeclareFontFamily{U}{msb}{}
\DeclareFontShape{U}{msb}{m}{n}{<-6> msbm5 <6-8> msbm7 <8-> msbm10}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-from-ffi-ti01(modified)
\DeclareOldFontCommand{\RMrm}{\rmfamily\mdseries\upshape}{\mathrm}
\DeclareOldFontCommand{\RMit}{\rmfamily\mdseries\itshape}{\mathit}
\DeclareOldFontCommand{\RMbf}{\rmfamily\bfseries\upshape}{\mathbf}
\DeclareOldFontCommand{\RMbi}{\rmfamily\bfseries\itshape}{\mathbi}
%
\def\thit{\it}%
%
\DeclareOldFontCommand{\RMsf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\RMsfi}{\normalfont\sffamily\itshape}{\mathsfi}
\DeclareOldFontCommand{\RMtt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\RMsc}{\normalfont\scshape}{\@nomath\sc}
%
\def\ROMAN{%
\let\rm=\RMrm
\let\it=\RMit
\let\bf=\RMbf
\let\bi=\RMbi
\let\sf=\RMsf
\let\sfi=\RMsfi
\let\tt=\RMtt
\let\sc=\RMsc
}
\ROMAN
\DeclareOldFontCommand{\SFrm}{\sffamily\mdseries\upshape}{\mathrm}
\DeclareOldFontCommand{\SFit}{\sffamily\mdseries\itshape}{\mathit}
\DeclareOldFontCommand{\SFbf}{\sffamily\bfseries\upshape}{\mathbf}
\DeclareOldFontCommand{\SFbi}{\sffamily\bfseries\itshape}{\mathbi}
%
\def\SANS{%
  \let\rm=\SFrm
  \let\it=\SFit
  \let\bf=\SFbf
  \let\bi=\SFbi
  \sffamily\mdseries\upshape\selectfont
}
\def\cal#1{\mathcal{#1}}% CMM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-from-ffi-ti01(modified)

%%%\input{icrops1.sty}% version icrop1e.sty pulls a background eps
%%%=============================================================================
\newdimen\markwidth
\newdimen\blth
\newdimen\marklength
\newdimen\markdistance
\newdimen\trimwidth
\newdimen\trimheight
\newdimen\auxaaa
\newdimen\auxbbb
\newdimen\auxccc
\newdimen\auxddd
\markwidth=.5pt %0.4 truept % Thickness of the mark line
\blth=0.2pt
\marklength=20 truept % Length of the mark line
\markdistance=3 truept % Distance of the real corner to the beg. of the mark
\auxaaa\marklength\advance\auxaaa\markdistance
\def\oddevenswitch{\ifodd\c@page \auxbbb=\oddsidemargin
 \else\auxbbb=\evensidemargin\fi}%
\def\PagePositionCropYes#1#2#3#4#5#6#7#8{%
  \oddsidemargin=#1%  % [3] inner margin / gutter
  \evensidemargin=#2% % [4] outside margin
  \topmargin=#3%      % [5] \rhsink = \topmargin + \headheight (=12pt here)
  \headheight=#4%     % [6] VERY IMPORTANT! (see above)
  \trimwidth=#5%      % [7]
  \trimheight=#6%     % [8]
  \hoffset=#7%        % = -1in to move the area in the upper left corner
  \voffset=#8%        % = -1in to move the area in the upper left corner
%%%
 \def\CROPMARKS{\oddevenswitch
 \hbox to0pt{\kern-\auxbbb
   \vbox to0bp{\kern-\topmargin\kern-\headheight
   \hbox to\trimwidth{%
     \koo{-\auxaaa}{-\markwidth}{\VRHDW{\markwidth}{0pt}{\marklength}}%
     \koo{-\markwidth}{-\auxaaa}{\VRHDW{0pt}{\marklength}{\markwidth}}%
     \hfill
     \koo{\markdistance}{-\markwidth}{\VRHDW{\markwidth}{0pt}{\marklength}}%
     \koo{0pt}{-\auxaaa}{\VRHDW{0pt}{\marklength}{\markwidth}}}%
   \nointerlineskip\vskip\trimheight
   \nointerlineskip
   \hbox to\trimwidth{%
     \koo{-\auxaaa}{0pt}{\VRHDW{0pt}{\markwidth}{\marklength}}%
     \koo{-\markwidth}{\markdistance}{\VRHDW{0pt}{\marklength}{\markwidth}}%
     \hfill
     \koo{\markdistance}{0pt}{\VRHDW{0pt}{\markwidth}{\marklength}}%
     \koo{0pt}{\markdistance}{\VRHDW{0pt}{\marklength}{\markwidth}}}%
   \vss}\hss}}%
}%

\def\PagePositionCropNo#1#2#3#4#5#6#7#8{%
  \oddsidemargin=#1%  % [3] inner margin / gutter
  \evensidemargin=#2% % [4] outside margin
  \topmargin=#3%      % [5] \rhsink = \topmargin + \headheight (=12pt here)
  \headheight=#4%     % [6] VERY IMPORTANT! (see above)
  \trimwidth=#5%      % [7]
  \trimheight=#6%     % [8]
  \hoffset=#7%        % = -1in to move the area in the upper left corner
  \voffset=#8%        % = -1in to move the area in the upper left corner
%%%
\def\CROPMARKS{}%
}%

\def\PagePositionBoxYes#1#2#3#4#5#6#7#8{%
  \oddsidemargin=#1%  % [3] inner margin / gutter
  \evensidemargin=#2% % [4] outside margin
  \topmargin=#3%      % [5] \rhsink = \topmargin + \headheight (=12pt here)
  \headheight=#4%     % [6] VERY IMPORTANT! (see above)
  \trimwidth=#5%      % [7]
  \trimheight=#6%     % [8]
  \hoffset=#7%        % = -1in to move the area in the upper left corner
  \voffset=#8%        % = -1in to move the area in the upper left corner
%%%
 \def\CROPMARKS{\oddevenswitch
 \hbox to0pt{\kern-\auxbbb
   \vbox to0bp{\kern-\topmargin\kern-\headheight
   \hbox to\trimwidth{%
     \auxccc=\trimwidth \advance\auxccc by 2\blth
     \auxddd=\trimheight \advance\auxddd by 2\blth
     \koo{-\blth}{0pt}{\zeroLL{\VRHDW{\blth}{0pt}{\auxccc}}}%
     \koo{-\blth}{-\blth}{\zeroUL{\VRHDW{\auxddd}{0pt}{\blth}}}%
     \koo{\trimwidth}{-\blth}{\zeroUL{\VRHDW{\auxddd}{0pt}{\blth}}}%
     \koo{-\blth}{\trimheight}{\zeroUL{\VRHDW{\blth}{0pt}{\auxccc}}}\hss}%
   \vss}\hss}}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%end_CROPMARKS
%%%\endinput
%%%=============================================================================

\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage\@titlepagefalse
\newif\if@nameyear\@nameyearfalse
%%% PAPER SIZE 
\DeclareOption{letterpaper}
   {\setlength\paperheight{11in}\setlength\paperwidth{8.5in}}
\DeclareOption{nameyear}{\@nameyeartrue}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
%% TRIM
\DeclareOption{draft}{\setlength\overfullrule{5pt}%
  \AtBeginDocument{\PagePositionCropYes
    {45bp}{45bp}{24bp}{22.88bp}
    {6.75in}{10in}{-1in}{-1in}}}
\DeclareOption{final}{\setlength\overfullrule{0pt}%
  \AtBeginDocument{\PagePositionCropNo
    {45bp}{45bp}{24bp}{22.88bp}
    {6.75in}{10in}{-1in}{-1in}}}
\DeclareOption{finalbox}{\setlength\overfullrule{0pt}%
  \AtBeginDocument{\PagePositionBoxYes
    {45bp}{45bp}{24bp}{22.88bp}
    {6.75in}{10in}{-0.125in}{-0.5in}}}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{letterpaper,twoside,onecolumn,finalbox}
\ProcessOptions

%%%%%%%%%%%%%%%%%FFF

%%%\input{04set01.sty} % general settings of most parameters
%%%=============================================================================
%%%%%%%%%%%%%%%%%%-b-04set01.sty (standard settings and abbreviations)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%-b-Standard sizes and their versions

\def\fs.#1.#2.{\fontsize{#1}{#2}\selectfont}%

\def\TENdsk{\abovedisplayskip 10\p@ \@plus3\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip}%
\def\NINdsk{\abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayskip \abovedisplayskip
   \belowdisplayshortskip 5\p@ \@plus2\p@ \@minus2\p@}%
\def\EGTdsk{\abovedisplayskip 6\p@ \@plus3\p@ \@minus2\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \belowdisplayskip \abovedisplayskip}%

\def\Dskips#1#2#3#4{\abovedisplayskip #1\p@ \@plus#2\p@ \@minus#3\p@
   \abovedisplayshortskip \z@ \@plus#2\p@
   \belowdisplayshortskip #4\p@ \@plus#2\p@ \@minus#2\p@
   \belowdisplayskip \abovedisplayskip}%
% standard 10pt is \Dskips{10}{3}{5}{6}%

\def\Dskipssame#1#2#3{\abovedisplayskip #1\p@ \@plus#2\p@ \@minus#3\p@
   \abovedisplayshortskip\abovedisplayskip
   \belowdisplayshortskip\abovedisplayskip
   \belowdisplayskip\abovedisplayskip}%

\newcommand\normalsizeXII{%
   \@setfontsize\normalsizeXII{10}{12}%
   \TENdsk
   \let\@listi\@listI
   \baselineskip12pt plus 0.35pt minus 0.3pt\relax}

\newcommand\normalsizeXIII{%
   \@setfontsize\normalsizeXIII{10}{13}%
   \TENdsk
   \let\@listi\@listI
   \baselineskip13pt plus 0.35pt minus 0.3pt\relax}

\newcommand\smallXI{%
   \@setfontsize\smallXI\@ixpt{11}%
   \NINdsk
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \baselineskip11pt plus 0.35pt minus 0.3pt\relax}

\newcommand\smallXII{%
   \@setfontsize\smallXII\@ixpt{12}%
   \NINdsk
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \baselineskip11pt plus 0.35pt minus 0.3pt\relax}

\newcommand\footnotesizeX{%
   \@setfontsize\footnotesizeX\@viiipt{9.5}%{10}%
   \EGTdsk
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \baselineskip9.5pt plus 0.3pt minus 0.25pt\relax}

\newcommand\footnotesizeXI{%
   \@setfontsize\footnotesizeXI\@viiipt{11}%
   \EGTdsk
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \baselineskip11pt plus 0.3pt minus 0.25pt\relax}

\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{16}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\def\seven{\fontsize{7}{9}\selectfont}

\def\TENxii{\normalsizeXII}%
\def\TENxiii{\normalsizeXIII}%
\def\NINxi{\smallXI}%
\def\NINxii{\smallXII}%
\def\EGTx{\footnotesizeX}%
\def\EGTxi{\footnotesizeXI}%

%%%%%%%%%%%%%%%%%%%%%%-e-Standard sizes and their versions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%-b-KOO
\long\def\koo#1#2#3{\vbox to0pt{\hsize0pt\kern #2\hbox to0pt{\kern
#1{#3}\hss}\vss}}
\long\def\zeroCC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}}}
\long\def\zeroUC#1{\vbox to0pt{\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}}}
\long\def\zeroCR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}\vss}}
\long\def\zeroUR#1{\vbox to0pt{\hbox to0pt{\hss #1}\vss}}
\long\def\zeroLL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}}}
\long\def\zeroCL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}\vss}}
\long\def\zeroUL#1{\vbox to0pt{\hbox to0pt{#1\hss}\vss}}
\def\VRHDW#1#2#3{\vrule height #1 depth #2 width #3}
\def\HRHDW#1#2#3{\hrule height #1 depth #2 width #3}
\def\HD#1#2{\vrule height #1pt depth #2pt width 0pt\relax}
%%%%%%%%%%%%%%%%%%%%%%-e-KOO

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%-b-Center etc redefined
% No extra space above and below
\newenvironment{Center}{\parskip0pt\topsep0pt
  \partopsep0pt\parsep0pt\begin{center}}{\end{center}}
\newenvironment{Flushleft}{\parskip0pt\topsep0pt
  \partopsep0pt\parsep0pt\begin{flushleft}}{\end{flushleft}}
\newenvironment{Flushright}{\parskip0pt\topsep0pt
  \partopsep0pt\parsep0pt\begin{flushright}}{\end{flushright}}
%%%%%%%%%%%%%%%%%%%%%%-e-Center etc redefined

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%-b-Standard sizes and penalties
\newdimen\@bls
\@bls=\baselineskip
\bigskipamount=\@bls \@plus 0.333\@bls \@minus 0.333\@bls
\medskipamount=0.5\bigskipamount
\smallskipamount=0.25\bigskipamount
\setlength\maxdepth{4pt} %{.5\topskip}
\setlength\marginparwidth{\z@}
\setlength\marginparsep{1pc}
\columnseprule \z@
%
\newbox\tempbox % for figs and tables
\newdimen\tempdim
%
\def\FNRULE{\koo{0pt}{-9pt}{\zeroLL{\VRHDW{0.5pt}{0pt}{20pc}}}}%
\setlength\footnotesep{9.7\p@}
\setlength{\skip\footins}{15\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\floatsep    {18\p@ \@plus 6\p@ \@minus 6\p@}
\setlength\textfloatsep{18\p@ \@plus 6\p@ \@minus 6\p@}
\setlength\intextsep   {18\p@ \@plus 6\p@ \@minus 6\p@}
\setlength\dblfloatsep    {18\p@ \@plus 6\p@ \@minus 6\p@}
\setlength\dbltextfloatsep{18\p@ \@plus 6\p@ \@minus 6\p@}
\setlength\@fptop{0\p@}%%{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@}%%%{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\lineskip{0\p@}
\setlength\normallineskip{0\p@}
\lineskiplimit0pt
\renewcommand\baselinestretch{}
\setlength\parskip{\z@}
%
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty    % Before a list or paragraph environment.
\@endparpenalty   -\@lowpenalty    % After a list or paragraph environment.
\@itempenalty     -\@lowpenalty    % Between list items.
%%% FLOATS %%
\setcounter{topnumber}{5}
\def\topfraction{1.0}%%{0.99}
\def\textfraction{0}%%{0.05}
\def\floatpagefraction{0.9}
\setcounter{bottomnumber}{5}
\def\bottomfraction{1.0}%%{0.99}
\setcounter{totalnumber}{10}
\def\dbltopfraction{1.0}%%{0.99}
\def\dblfloatpagefraction{0.8}
\setcounter{dbltopnumber}{5}
%
%%%-b-PENALTIES
\clubpenalty 10000
\widowpenalty 10000
\predisplaypenalty=10000
\interdisplaylinepenalty=100
\displaywidowpenalty 1500
\postdisplaypenalty 0 %%%500
\interlinepenalty 0
\brokenpenalty 500 % Plain default = 100
\adjdemerits=100 % Plain default = 10000
\linepenalty=10
\doublehyphendemerits=10000
\finalhyphendemerits=5000
\hyphenpenalty=50
\exhyphenpenalty=50
\binoppenalty=150 % 700
\relpenalty=100 % 500
\interfootnotelinepenalty=100
%\nulldelimiterspace=1.2pt
\lefthyphenmin=3
\righthyphenmin=3
\emergencystretch=1.6pc
%
\newdimen\adim
%
%\setlength\arraycolsep{5\p@}
%\setlength\tabcolsep{6\p@}
\arraycolsep 1.5pt 
\tabcolsep 4pt 
\arrayrulewidth .4pt 
\doublerulesep 2pt
\tabbingsep\labelsep
%
%
\def\thefootnote{\arabic{footnote}}
%
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\jot=0.3em %(LaTeX standard)% 0.6em
\topsep10\p@ \@plus2\p@ \@minus5\p@
%%%%%%%%%%%%%%%%%%%%%%-e-Standard sizes and penalties

\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{{Figure~\thefigure}}%% may be redefined by the particular style
\newenvironment{figure}
  {\let\@makecaption\@makefigurecaption\@float{figure}}
  {\end@float}
\newenvironment{figure*}
  {\let\@makecaption\@makefigurecaption\@dblfloat{figure}}
  {\end@dblfloat}
%
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table~\thetable}%% may be redefined by the particular style
\newenvironment{table}
  {\let\@makecaption\@maketablecaption\@float{table}}
  {\end@float}
\newenvironment{table*}
  {\let\@makecaption\@maketablecaption\@dblfloat{table}}
  {\end@dblfloat}

\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents{%
    \section*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
%
% This is to hide footnote rule
\renewcommand\footnoterule{}
%  \kern-3\p@\hrule\@width.4\columnwidth\hrule\@width.175\columnwidth\kern2.6\p@}% was
%
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\partname{Part}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}%     <-- to be adjusted per journal
\newcommand\tablename{Table}%       <-- to be adjusted per journal
\newcommand\refname{References}%    <-- to be adjusted per journal
\newcommand\appendixname{Appendix}% <-- to be adjusted per journal
%\newcommand\abstractname{Abstract:}
%
\newcommand\today{}
\edef\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%
\def\copyright{\mbox{\textcopyright}}
%
\newenvironment{Matrix}{\arraycolsep0.5em\begin{matrix}}{\end{matrix}}
\newenvironment{bMatrix}{\arraycolsep0.5em\begin{bmatrix}}{\end{bmatrix}}
\newenvironment{vMatrix}{\arraycolsep0.5em\begin{vmatrix}}{\end{vmatrix}}
%
\newcommand{\up}{\VRHDW{1.5em}{0em}{0em}}% for tables (8/10 makes 1em = 8pt)
\newcommand{\down}{\VRHDW{0em}{0.625em}{0em}}%
\def\updown{\up\down}
%
\def\bysame{\vrule height 1.5pt depth -1pt width 2em \hskip0.12em\relax}% no longer in use
%
% tightness of math; \mathNN is the LaTeX default (too loose); \mathN is new INFORMS default
\def\mathT{\thickmuskip2mu \thinmuskip1mu \medmuskip=1.5mu\relax}
\let\mathtight=\mathT % pure synonym to \mathT
\let\tightmath=\mathT % pure synonym to \mathT
\def\mathN{\thickmuskip3.5mu plus 2mu\thinmuskip2.5mu\medmuskip=3mu plus 2mu minus 1.5mu\relax}
\def\mathNN{\thickmuskip=5mu plus 5mu\thinmuskip=3mu\medmuskip=4mu plus 2mu minus 4mu\relax}
\mathN %% <-- INFORMS default (tighter than the regular \mathNN)
%
%%% some production abbreviations:
\def\0{\phantom{0}}%
\def\Bull{\unskip\hskip0.5em{\textbullet}\hskip0.5em\relax}
\def\COLON{{:}\ }
\def\DS{\displaystyle}
\def\EQNpagebreak{\removelastskip\hrule height0pt\eject}
\def\halmos{\quad$\square$}
\def\Halmos{\quad$\square$}% \square <--> \blackbox (?)
\def\qed{\quad Q.E.D.}
\def\LM{\leavevmode}%
\def\NNN{\nonumber}%
\def\PD{\partial}%
\def\argmax{\mathop{\rm arg\,max}}%
\def\argmin{\mathop{\rm arg\,min}}%
\def\RB#1#2{\raisebox{#1pt}[0pt][0pt]{\tabcolsep0pt\begin{tabular}[b]{c}#2\end{tabular}}}
\def\RBL#1#2{\raisebox{#1pt}[0pt][0pt]{\tabcolsep0pt\begin{tabular}[b]{l}#2\end{tabular}}}
\def\RBX#1#2{\raisebox{#1}[0pt][0pt]{#2}}
\def\SPN{\spaceskip 0.33em plus 0.167em minus 0.09em\relax}% normal values
\def\SPTT{\spaceskip 0.25em plus 0.14em minus 0.06em\relax}
\def\SPT{\spaceskip 0.3em plus 0.16em minus 0.09em\relax}
\def\STS{\vspace*{6pt}}% section followed by subsection!
\def\TS{\textstyle}
\def\bee{\begin{eqnarray}}%
\def\bees{\begin{eqnarray*}}%
\def\be{\begin{equation}}%
%%%\def\colon{{:}\ }% amsmath has a better definition!
%%%\def\dg{\ifmmode\mbox{\textdegree}\else\textdegree\fi}%
\def\eee{\end{eqnarray}}%
\def\eees{\end{eqnarray*}}%
\def\ee{\end{equation}}%
\def\epb{\EQNpagebreak}
\def\hph#1{\hphantom{#1}}
\def\PHE{\hphantom{{}={}}}% useful in alignments
\def\hy{\hyphenation{Figure Figures Table Tables}}
\def\h{\hbox}
\def\mc#1{\multicolumn{1}{c}{#1}}%
\def\mcc#1#2{\multicolumn{#1}{c}{#2}}%
\def\mcr{\\[-0.3em]\\}%%{\\[-0.6em]\\}
\def\mccz#1#2{\multicolumn{#1}{c}{\hbox to 0pt{\hss #2\hss}}}%
\def\mcz#1{\multicolumn{1}{c}{\hbox to 0pt{\hss #1\hss}}}
\def\n{\nobreak}
\def\tra#1{\spaceskip 0.#1em plus 0.15em minus 0.09em\relax}%
\def\vs#1{\vadjust{\vspace{#1pt}}}
\def\vvSP#1{\HD{0}{#1}\pagebreak}
\def\vvp{\vadjust{\vfill\pagebreak}}
\def\vvsp#1{\vadjust{\vspace{#1pt}\pagebreak}}
\def\xxx{\end{document}}
\def\x{\end{document}}
\long\def\IGNORE#1{}
\long\def\IGNORETHIS#1{}%
\def\RAGG{\rightskip0pt plus 1fil}%
\def\HET{\hsize=\textwidth}% for tables and figures 2-col in [b]
\def\BBB{\break}%
\def\PPPP{\pagebreak}%

%%%%%%%% common but adjustable per journal style:
%% Initial height \textheightt (opening page), then \realtextheight (if they differ!)
\newdimen\realtextheight
\newdimen\auxrealtextheight
\newdimen\auxtextheight
\newdimen\auxheadsep
\parindent 10pt
%%%\setlength\headheight{60pt} %<-- set by icrops1.sty
\topskip 8pt %% 
\footskip 0pt % 36pt
\textwidth 41.5pc \columnsep 1.5pc % Need adj.
\columnseprule 0pt

\newenvironment{extract}{\begin{list}{}{\NIN
  \topsep 6pt plus 3pt minus 2pt
  \leftmargin 10pt \rightmargin 10pt \parsep 0pt \itemsep 0pt
  \itemindent 0pt \listparindent 1em}\item[]}%
  {\end{list}}

\newcommand\@makefntext[1]{\parindent 1em\noindent\ignorespaces{\@makefnmark}\,#1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-article-opening-etc

\newif\iftitle
\global\titlefalse
\newif\ifauxtitle
\global\auxtitlefalse
\newif\ifauxntitle
\global\auxntitlefalse

\def\JOURNAL#1{\gdef\theJOURNAL{#1}}\def\theJOURNAL{Journal Name}%
\def\EVENTFULL#1{\gdef\theEVENTFULL{#1}}%
  \def\theEVENTFULL{14th INFORMS Computing Society Conference}%{Which Book}%
\def\EVENTFULLX#1{\gdef\theEVENTFULLX{#1}}%
  \def\theEVENTFULLX{Richmond, Virginia, January 11--13, 2015}%{Which Book}%
\def\EVENT#1{\gdef\theEVENT{#1}}\def\theEVENT{ICS-2015---Richmond}%{Which Book}%
\def\VOL#1{\gdef\theVOL{#1}}\def\theVOL{}%
\def\NO#1{\gdef\theNO{#1}}\def\theNO{}%
\def\ISSUE#1{\gdef\theISSUE{#1}}\def\theISSUE{0000}% default
\def\MONTH#1{\gdef\theMONTH{#1}}\def\theMONTH{}%
\def\YEAR#1{\gdef\theYEAR{#1}}\def\theYEAR{0000}% default
\def\ISSN#1{\gdef\theISSN{#1}}\def\theISSN{0000-0000}% default
\def\ISBN#1{\gdef\theISSN{#1}}\def\theISBN{000-00000-00000}% default
\def\EISSN#1{\gdef\theEISSN{#1}}\def\theEISSN{0000-0000}% default
\def\DOI#1{\gdef\theDOI{#1}}\def\theDOI{http://dx.doi.org/10.1287/ics.2015.XXXX}% default
\def\FIRSTPAGE#1{\gdef\theFIRSTPAGE{#1}}\def\theFIRSTPAGE{}%
\def\LONGFIRSTPAGE#1{\gdef\theLONGFIRSTPAGE{#1}}\def\theLONGFIRSTPAGE{0001}% default
\def\LASTPAGE#1{\gdef\theLASTPAGE{#1}}\def\theLASTPAGE{}%
\def\SHORTYEAR#1{\gdef\theSHORTYEAR{#1}}\def\theSHORTYEAR{00}% default
\def\PAGERANGE#1{\gdef\thePAGERANGE{#1}}\def\thePAGERANGE{}%
\def\CHAPTERNO#1{\long\gdef\theCHAPTERNO{\begin{Flushleft}
  \fs.13.14.\CHAPTERNOfont #1\end{Flushleft}}}\def\theCHAPTERNO{}%{Chapter 2}%
\def\RHCHAPTERNO#1{\gdef\theRHCHAPTERNO{#1}}\def\theRHCHAPTERNO{}%{Chapter 2}%
\def\TITLE#1{\gdef\theTITLE{#1}}\def\theTITLE{}%{Article Title}%
\def\SUBTITLE#1{\gdef\theSUBTITLE{\begin{Flushleft}\vspace*{-5pt}%
  \fs.13.14.\SUBTITLEfont #1\HD{0}{28}\end{Flushleft}}}\def\theSUBTITLE{}%{Article Subtitle}%
\def\RHPAGERANGE#1{\gdef\theRHPAGERANGE{#1}}\def\theRHPAGERANGE{}%
\def\RHAU#1{\gdef\theRHAU{#1}}\def\theRHAU{Author}% default
\def\RHATL#1{\gdef\theRHATL{#1}}\def\theRHATL{Article Short Title}% default
\def\RUNNINGHEAD#1{\gdef\theRUNNINGHEAD{#1}}%
  \def\theRUNNINGHEAD{Authors: Article Short Title}% default
\def\FMRUNNINGHEAD#1{\gdef\theFMRUNNINGHEAD{#1}}%
  \def\theFMRUNNINGHEAD{Preface}% default

\def\RHAuthorSepTitle{{\bf:}\relax}%  

\def\LRHFirstLine#1{\gdef\theLRHFirstLine{#1}}\def\theLRHFirstLine{}%
\def\LRHSecondLine#1{\gdef\theLRHSecondLine{#1}}\def\theLRHSecondLine{}%
\def\RRHFirstLine#1{\gdef\theRRHFirstLine{#1}}\def\theRRHFirstLine{}%
\def\RRHSecondLine#1{\gdef\theRRHSecondLine{#1}}\def\theRRHSecondLine{}%

\def\LRFFirstLine#1{\gdef\theLRFFirstLine{#1}}\def\theLRFFirstLine{}%
\def\LRFSecondLine#1{\gdef\theLRFSecondLine{#1}}\def\theLRFSecondLine{}%
\def\RRFFirstLine#1{\gdef\theRRFFirstLine{#1}}\def\theRRFFirstLine{}%
\def\RRFSecondLine#1{\gdef\theRRFSecondLine{#1}}\def\theRRFSecondLine{}%

\long\def\AUBLOCK#1{\gdef\theARTICLEAUTHORS{%
  \begin{Flushleft}\HOOKa\vspace*{0pt}#1\vspace*{0pt}\end{Flushleft}}}%
  \def\theARTICLEAUTHORS{}%
\long\def\ABS#1{\long\gdef\theABS{#1}}\def\theABS{}%
\long\def\ABSTRACT#1{\long\gdef\theABSTRACT{#1}}\def\theABSTRACT{}%

\def\SEPBAR{$\mskip2.5mu|\mskip2.5mu$}

\def\SUBJECTCLASSname{{\it Subject classifications\/}{\kern0.7pt}:\enskip}
\def\AREAOFREVIEWname{{\it Area of review\/}{\kern0.7pt}:\enskip}
\def\HISTORYname{{\it History\/}{\kern0.7pt}:\enskip}
\def\MSCCLASSname{{\it MSC2000 subject classification\/}{\kern0.7pt}:\enskip}
\def\ORMSCLASSname{{\it OR/MS subject classification\/}{\kern0.7pt}:\enskip}
%-%\def\KEYWORDSname{{\it Key words\/}{\kern0.7pt}:\enskip}
\def\KEYWORDSname{Keywords}

\def\HISTORY#1{\gdef\theHISTORY{\endgraf\rightskip0pt plus 20pc
  \noindent\hangindent1em\HISTORYname #1\endgraf}}\def\theHISTORY{}%
\def\AREAOFREVIEW#1{\gdef\theAREAOFREVIEW{\endgraf\rightskip0pt plus 20pc
  \noindent\hangindent1em\AREAOFREVIEWname #1\endgraf}}\def\theAREAOFREVIEW{}%
\def\SUBJECTCLASS#1{\gdef\theSUBJECTCLASS{\endgraf\rightskip0pt plus 20pc
  \noindent\hangindent1em\SUBJECTCLASSname #1\endgraf}}\def\theSUBJECTCLASS{}%
\def\MSCCLASS#1{\gdef\theMSCCLASS{\endgraf\rightskip0pt plus 20pc
  \noindent\hangindent1em\MSCCLASSname #1\endgraf}}\def\theMSCCLASS{}%
\def\ORMSCLASS#1{\gdef\theORMSCLASS{\endgraf\rightskip0pt plus 20pc
  \noindent\hangindent1em\ORMSCLASSname #1\endgraf}}\def\theORMSCLASS{}%
%-%\def\KEYWORDS#1{\gdef\theKEYWORDS{\endgraf\rightskip0pt plus 20pc
%-%  \noindent\hangindent1em\KEYWORDSname #1\endgraf}}\def\theKEYWORDS{}%
\def\KEYWORDS#1{\long\gdef\theARTICLEKEYWORDS{\endgraf\vskip5pt\rightskip0pt plus 20pc
  \noindent\makebox[54bp][l]{\ABSfont\bf\KEYWORDSname}\begin{minipage}[t]{342bp}\parindent10pt
  \ABSfont\noindent #1\endgraf\end{minipage}}}\def\theARTICLEKEYWORDS{}%
%
\def\thePAGERANGE{pp.~\theFIRSTPAGE--\theLASTPAGE}% default
\def\theRHPAGERANGE{pp.~\theFIRSTPAGE--\theLASTPAGE}% default

%\RRHFirstLine{\it\theRHCHAPTERNO:\enskip \it\theRHATL}% for the editor
%\LRHFirstLine{\it\theRHCHAPTERNO:\enskip \theRHATL}% for the editor
\RRHSecondLine{\fs.7.8.{\theEVENT}, \theRHPAGERANGE, \copyright\,{\theYEAR}\ INFORMS}% default
\LRHSecondLine{\fs.7.8.{\theEVENT}, \theRHPAGERANGE, \copyright\,{\theYEAR}\ INFORMS}% default
%\RRHSecondLine{\fs.7.8.{\theEVENT}, \copyright\,{\theYEAR}\ INFORMS}% default
%\LRHSecondLine{\fs.7.8.{\theEVENT}, \copyright\,{\theYEAR}\ INFORMS}% default
%\RRHFirstLine{\it\theRHATL}% default
%\LRHFirstLine{\it\theRHATL}% default
\RRHFirstLine{\it\theRUNNINGHEAD}% default
\LRHFirstLine{\it\theRUNNINGHEAD}% default

%%% pagestyles revised:

\def\setoddRF{\hfil}

\def\setevenRF{\hfil}

\def\setoddRH{\hbox to \textwidth{\fs.7.8.\tabcolsep0pt
  \begin{tabular*}{\textwidth}[b]{l@{\extracolsep\fill}r}
  {\theRRHFirstLine}&\\ {\theRRHSecondLine}&  \raisebox{0pt}[0pt][0pt]{\fs.10.10.\ThePage}\\[-4pt]
  \rlap{\VRHDW{0.5pt}{0pt}{\textwidth}}&\\
  \end{tabular*}}}

\def\setevenRH{\hbox to \textwidth{\fs.7.8.\tabcolsep0pt
  \begin{tabular*}{\textwidth}[b]{l@{\extracolsep\fill}r}
  &{\theLRHFirstLine}\\ \raisebox{0pt}[0pt][0pt]{\fs.10.10.\ThePage}&{\theLRHSecondLine}\\[-4pt]
  \rlap{\VRHDW{0.5pt}{0pt}{\textwidth}}&\\
  \end{tabular*}}}

\let\savesetoddRF=\setoddRF
\let\savesetevenRF=\setevenRF
\let\savesetoddRH=\setoddRH
\let\savesetevenRH=\setevenRH

\def\ThePage{\thepage}%

\def\ps@headings{%
    \def\@oddfoot{\setoddRF}%
    \def\@evenfoot{\setevenRF}%
    \def\@oddhead{\CROPMARKS\setoddRH}%
    \def\@evenhead{\CROPMARKS\setevenRH}%
    \let\@mkboth\markboth}

\def\ps@FMheadings{%
    \def\@oddfoot{\setoddFMRF}%
    \def\@evenfoot{\setevenFMRF}%
    \def\@oddhead{\CROPMARKS\setoddFMRH}%
    \def\@evenhead{\CROPMARKS\setevenFMRH}%
    \let\@mkboth\markboth}

\def\setoddFMRF{\hfil}
\def\setevenFMRF{\hfil}
\def\setoddFMRH{\hbox to \textwidth{\fs.7.8.\tabcolsep0pt
  \begin{tabular*}{\textwidth}[b]{l@{\extracolsep\fill}r}
  {\it\theFMRUNNINGHEAD}&\\ {\fs.7.8.{\theEVENT}}&  
  \raisebox{0pt}[0pt][0pt]{\fs.10.10.\ThePage}\\[-4pt]
  \rlap{\VRHDW{0.5pt}{0pt}{\textwidth}}&\\
  \end{tabular*}}}
\def\setevenFMRH{\hbox to \textwidth{\fs.7.8.\tabcolsep0pt
  \begin{tabular*}{\textwidth}[b]{l@{\extracolsep\fill}r}
  &{\it\theFMRUNNINGHEAD}\\ \raisebox{0pt}[0pt][0pt]{\fs.10.10.\ThePage}&
  {\fs.7.8.{\theEVENT}}\\[-4pt]
  \rlap{\VRHDW{0.5pt}{0pt}{\textwidth}}&\\
  \end{tabular*}}}

% empty, but showing CROPMARKS if necessary
\def\ps@cropempty{%
    \def\@oddfoot{\hfill}%
    \def\@evenfoot{\hfill}%
    \def\@oddhead{\CROPMARKS\hfill}%
    \def\@evenhead{\CROPMARKS\hfill}%
    \let\@mkboth\markboth}

%% for aux pages---title only (no author)
\def\RHTITLEONLY{%
\RRHFirstLine{{\it\theRHATL}}%
\RRHSecondLine{\fs.7.8.{\theJOURNAL} \theVOL(\theNO), \theRHPAGERANGE, 
  \copyright\,{\theYEAR}\ INFORMS}% default
\LRHFirstLine{{\it\theRHATL}}% 
\LRHSecondLine{\fs.7.8.{\theJOURNAL} \theVOL(\theNO), \theRHPAGERANGE, 
  \copyright\,{\theYEAR}\ INFORMS}% default
}

%----- first page

\def\setfirstoddFOOT{%
  \raisebox{-18pt}[0pt][0pt]{\hbox to \textwidth{\hfill\fs.8.8.\thepage\hfill}}%
  \global\titlefalse}%

\def\setfirstevenFOOT{%
  \raisebox{-18pt}[0pt][0pt]{\hbox to \textwidth{\hfill\fs.8.8.\thepage\hfill}}%
  \global\titlefalse}%

\def\ps@firstpage{%
  \iftitle\global\titlefalse\let\@mkboth\markboth
  \def\@oddfoot{\setfirstoddFOOT}%
  \def\@evenfoot{\setfirstevenFOOT}%
  \def\@evenhead{\CROPMARKS\hfil}%
  \def\@oddhead{\CROPMARKS\hfil}%
  \def\sectionmark##1{}%
  \def\subsectionmark##1{}%
  \fi
  \global\textheight=\realtextheight}%

\def\ARTICLEfirstpage{\global\titletrue\thispagestyle{firstpage}}
\def\EMPTYpage{\global\titletrue\thispagestyle{cropempty}}

\newdimen\adim

\long\def\dropcapXonXIII#1{\setbox0=\hbox{\fs.28.30.#1\kern.5pt}%
  \adim\wd0\hangindent\wd0\hangafter-2\noindent 
  \kern-\wd0\smash{\lower13pt\copy0}\relax}
\long\def\dropcapXonXII#1{\setbox0=\hbox{\fs.28.30.#1\kern.5pt}%
  \adim\wd0\hangindent\wd0\hangafter-2\noindent 
  \kern-\wd0\smash{\lower12pt\copy0}\relax}
\long\def\dropcapABS#1{\setbox0=\hbox{\fs.24.24.#1\kern.5pt}%
  \adim\wd0\hangindent\wd0\hangafter-2\noindent 
  \kern-\wd0\smash{\lower10.5pt\copy0}\relax}

%---- \maketitle and \@maketitle
\def\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{{\ifnum\c@footnote=1{*}\else
           \@textsuperscript{{\normalfont\@thefnmark}}\fi}}%
    \long\def\@makefntext##1{\noindent
      \ifnum\c@footnote=1\hbox{*\,}\else
      \hbox{\@textsuperscript{\normalfont\@thefnmark}\,}\fi
      \EGT ##1}%
    \let \footnote \thanks
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitleOneCol
    \fi
  \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \global\let\maketitle\relax\global\let\@maketitle\relax\normalsize}

\def\@maketitle{%
  \newpage
  \theARTICLETOP
  \theARTICLETITLE
  \theARTICLEAUTHORS
  \theARTICLEABSTRACT
  \theARTICLERULE
}

\def\@maketitleOneCol{%
  \newpage
  \vspace*{-\topskip}%
  \theARTICLETOP
  \theCHAPTERNO
  \theARTICLETITLE
  \theSUBTITLE
  \theARTICLEAUTHORS
  \theARTICLEABSTRACT
  \theARTICLEKEYWORDS
  \theARTICLERULE
}

%%%%%%%%%%%% first page details
\def\TITLEfont{\rm}% default
\def\SUBTITLEfont{\bf}% default
\def\CHAPTERNOfont{\bi}% default
\def\AUTHORfont{\bi}% default
\def\AFFfont{\rm}% default

\newdimen\ABSwidth
\ABSwidth=\textwidth \advance\ABSwidth-5pc
\def\ABSfont{\fs.9.{10.5}.\rm}% default

\def\theARTICLETITLE{%
  \HOOKtop
  \begin{Flushleft}
  \vspace*{0pt}%
  \fs.20.24.\TITLEfont\HD{24}{0}\theTITLE\HD{0}{22.5}%
  \end{Flushleft}}

\def\EMAIL#1{#1}%

% first argument is a visible but unused counter!
%%%\def\AUTHOR#1#2{%
\def\AUTHOR#1{%
  \begin{Flushleft}
  \fs.10.11.\AUTHORfont\HD{15}{0}#1\HD{0}{5}\relax 
  \end{Flushleft}}
%%%\def\AFF#1#2{%
\def\AFF#1{%
  \begin{Flushleft}
  \fs.9.10.\AFFfont{#1}\relax 
  \vskip1.3pt
  \end{Flushleft}}


\def\ARTICLERULE#1{\gdef\theARTICLERULE{#1}}%
% default is to have a rule
\def\theARTICLERULE{%
  \begin{Center}
  \vspace*{12pt}
  \VRHDW{1pt}{0pt}{\textwidth}
  \vspace*{4pt}
  \HOOKc
  \end{Center}}

%%%%%%%%%%%%%%%%-b-AUX pages style
\def\setoddauxRH{\hfil}
\def\setevenauxRH{\hfil}

\def\setoddauxRF{\raisebox{-30pt}[0pt][0pt]{\hbox to \textwidth{\fs.8.9.\tabcolsep0pt
  \begin{tabular*}{\textwidth}[b]{l@{\extracolsep\fill}r}
  {\theRRFFirstLine}&\\ {\theRRFSecondLine}& \raisebox{0pt}[0pt][0pt]{\fs.10.10.\thepage}%
  \end{tabular*}}}}
\def\setevenauxRF{\raisebox{-30pt}[0pt][0pt]{\hbox to \textwidth{\fs.8.9.\tabcolsep0pt
  \begin{tabular*}{\textwidth}[b]{l@{\extracolsep\fill}r}
  &{\theLRFFirstLine}\\ \raisebox{0pt}[0pt][0pt]{\fs.10.10.\thepage}&{\theLRFSecondLine}%
  \end{tabular*}}}}

\RRFSecondLine{\fs.7.9.{\theJOURNAL} \theVOL(\theNO), \theRHPAGERANGE, 
  \copyright\,{\theYEAR}\ INFORMS}% default
\LRFSecondLine{\fs.7.9.{\theJOURNAL} \theVOL(\theNO), \theRHPAGERANGE, 
  \copyright\,{\theYEAR}\ INFORMS}% default

\let\savesetoddauxRF=\setoddauxRF
\let\savesetevenauxRF=\setevenauxRF
\let\savesetoddauxRH=\setoddauxRH
\let\savesetevenauxRH=\setevenauxRH

\def\ps@auxheadings{%
    \global\textheight=\auxtextheight
    \global\headsep=\auxheadsep
    \def\@oddfoot{\setoddauxRF}%
    \def\@evenfoot{\setevenauxRF}%
    \def\@oddhead{\CROPMARKS\setoddauxRH}%
    \def\@evenhead{\CROPMARKS\setevenauxRH}%
    \let\@mkboth\markboth}

%----- first aux page

\def\setfirstoddauxFOOT{%
  \raisebox{-30pt}[0pt][0pt]{\hbox to \textwidth{\tabcolsep0pt
  \rlap{\firstauxFOOTleft}%
  \hfill\hbox to 0pt{\hss\firstauxFOOTmid\hss}\hfill
  \llap{\firstauxFOOTright}}}%
  \global\auxtitlefalse}%

\def\DROPaux#1{\gdef\firstauxFOOTmid{#1}}%

% components:
\def\firstauxFOOTleft{\raisebox{0pt}{\fs.8.10.\begin{tabular}[b]{l}
  Vol.~\theVOL, No.~\theNO, \theMONTH~\theYEAR, \thePAGERANGE\\
  {\sc issn}\,\theISBN\SEPBAR{\sc eissn}\,\theEISSN\SEPBAR\theSHORTYEAR\SEPBAR%
  \theISSUE\SEPBAR\theLONGFIRSTPAGE\end{tabular}}}%
\def\firstauxFOOTright{\raisebox{0pt}{\fs.8.10.\begin{tabular}[b]{r}
  {\sc \theJOURNAL}\\ 
  \copyright\,\theYEAR~INFORMS\end{tabular}}}%
\def\firstauxFOOTmid{}%
\def\DROPauxYES{\def\firstauxFOOTmid{\raisebox{10pt}{\fs.8.10.\thepage}}}%

\let\setfirstevenauxFOOT=\setfirstoddauxFOOT

\def\ps@auxfirstpage{%
  \global\textheight=\auxtextheight
  \global\headsep=\auxheadsep
  \ifauxtitle\global\auxtitlefalse\let\@mkboth\markboth
  \def\@oddfoot{\setfirstoddauxFOOT}%
  \def\@evenfoot{\setfirstevenauxFOOT}%
  \def\@evenhead{\CROPMARKS\hfil}%
  \def\@oddhead{\CROPMARKS\hfil}%
  \def\sectionmark##1{}%
  \def\subsectionmark##1{}%
  \fi
  \global\textheight=\auxrealtextheight}%

\def\ARTICLEauxfirstpage{\global\auxtitletrue\thispagestyle{auxfirstpage}}%

%----- first auxn page (switches to "auxupheadings")

\def\setfirstoddauxnFOOT{%
  \raisebox{-30pt}[0pt][0pt]{\hbox to \textwidth{\tabcolsep0pt
  \rlap{\firstauxnFOOTleft}
  \hfill\hbox to 0pt{\hss\firstauxnFOOTmid\hss}\hfill
  \llap{\firstauxnFOOTright}}}%
  \global\auxntitlefalse}%

\def\DROPauxn#1{\gdef\firstauxnFOOTmid{#1}}%

% components:
\def\firstauxnFOOTleft{\raisebox{0pt}{\fs.8.10.\begin{tabular}[b]{l}
  Vol.~\theVOL, No.~\theNO, \theMONTH~\theYEAR, \thePAGERANGE\\
  {\sc issn}\,\theISSN\SEPBAR{\sc eissn}\,\theEISSN\SEPBAR\theSHORTYEAR\SEPBAR%
  \theISSUE\SEPBAR\theLONGFIRSTPAGE\end{tabular}}}%
\def\firstauxnFOOTright{\raisebox{0pt}{\fs.8.10.\begin{tabular}[b]{r}
  {\sc \theJOURNAL}\\ 
  \copyright\,\theYEAR~INFORMS\end{tabular}}}%
\def\firstauxnFOOTmid{}%
\def\DROPauxnYES{\def\firstauxnFOOTmid{\raisebox{10pt}{\fs.8.10.\thepage}}}%

\let\setfirstevenauxnFOOT=\setfirstoddauxnFOOT

\def\ps@auxnfirstpage{%
  \global\textheight=\auxtextheight
  \global\headsep=\auxheadsep
  \ifauxntitle\global\auxntitlefalse\let\@mkboth\markboth
  \def\@oddfoot{\setfirstoddauxnFOOT}%
  \def\@evenfoot{\setfirstevenauxnFOOT}%
  \def\@evenhead{\CROPMARKS\hfil}%
  \def\@oddhead{\CROPMARKS\hfil}%
  \def\sectionmark##1{}%
  \def\subsectionmark##1{}%
  \fi
  \global\textheight=\realtextheight}%

\def\ARTICLEauxnfirstpage{\global\auxntitletrue\thispagestyle{auxnfirstpage}}%


%%%%%%%%%%%%%%%%-e-AUX pages style

\def\ACKname#1{\gdef\theACKname{#1}}\def\theACKname{Acknowledgments}%

\long\def\ACK#1{\vskip12pt plus 3pt minus 2pt
  \noindent{\TEN\bf\theACKname}\endgraf\noindent{\NIN #1\endgraf}\endgraf}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% -b-VARIOUS-TOOLS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-dcolumn
%%%%%%%%%% dcolumn.sty - first original then modified
%% File: dcolumn.dtx Copyright (C) 1992-1996 David Carlisle
%\NeedsTeXFormat{LaTeX2e}
%\ProvidesPackage{dcolumn}
%          [1996/02/28 v1.03 decimal alignment package (DPC)]
\RequirePackage{array}
\def\sfdc{\SFrm}
\def\DC@#1#2#3{%
  \uccode`\~=`#1\relax
  \m@th
  \afterassignment\DC@x\count@#3\relax{#1}{#2}}
\def\DC@x#1\relax#2#3{%
  \ifnum\z@>\count@
    \expandafter\DC@centre
  \else
    \expandafter\DC@right
  \fi
  {#2}{#3}{#1}}
\def\DC@centre#1#2#3{%
  \let\DC@end\DC@endcentre
  \uppercase{\def~}{$\egroup\setbox\tw@=\hbox\bgroup$\sfdc{#2}}%
  \setbox\tw@=\hbox{${\phantom{\sfdc{#2}}}$}%
  \setbox\z@=\hbox\bgroup$\sfdc\mathcode`#1="8000 }
\def\DC@endcentre{$\egroup
    \ifdim \wd\z@>\wd\tw@
      \setbox\tw@=\hbox to\wd\z@{\unhbox\tw@\hfill}%
    \else
      \setbox\z@=\hbox to\wd\tw@{\hfill\unhbox\z@}\fi
    \box\z@\box\tw@}
\def\DC@right#1#2#3{%
  \ifx\relax#3\relax
    \hfill
    \let\DC@rl\bgroup
  \else
    \edef\DC@rl{to\the\count@\dimen@ii\bgroup\hss}%
    \count@\@gobble#3\relax
  \fi
  \let\DC@end\DC@endright
  \uppercase{\def~}{$\egroup\setbox\tw@\hbox to\dimen@\bgroup$\sfdc{#2}}%
   \setbox\z@\hbox{$\sfdc 1$}\dimen@ii\wd\z@
   \dimen@\count@\dimen@ii
   \setbox\z@\hbox{$\sfdc{#2}$}\advance\dimen@\wd\z@
   \setbox\tw@\hbox to\dimen@{}%
   \setbox\z@\hbox\DC@rl$\sfdc\mathcode`#1="8000 }
\def\DC@endright{$\hfil\egroup\box\z@\box\tw@}
\def\DC@endright{$\egroup\box\z@\box\tw@}
\newcolumntype{D}[3]{>{\DC@{#1}{#2}{#3}}c<{\DC@end}}
%
% modified version
%
\def\DCFF@#1#2#3#4{%
  \let\sfdc=#4%
  \uccode`\~=`#1\relax
  \m@th
  \afterassignment\DCFF@x\count@#3\relax{#1}{#2}}
\def\DCFF@x#1\relax#2#3{%
  \ifnum\z@>\count@
    \expandafter\DCFF@centre
  \else
    \expandafter\DCFF@right
  \fi
  {#2}{#3}{#1}}
\def\DCFF@centre#1#2#3{%
  \let\DCFF@end\DCFF@endcentre
  \uppercase{\def~}{$\egroup\setbox\tw@=\hbox\bgroup$\sfdc{#2}}%
  \setbox\tw@=\hbox{${\phantom{\sfdc{#2}}}$}%
  \setbox\z@=\hbox\bgroup$\sfdc\mathcode`#1="8000 }
\def\DCFF@endcentre{$\egroup
    \ifdim \wd\z@>\wd\tw@
      \setbox\tw@=\hbox to\wd\z@{\unhbox\tw@\hfill}%
    \else
      \setbox\z@=\hbox to\wd\tw@{\hfill\unhbox\z@}\fi
    \box\z@\box\tw@}
\def\DCFF@right#1#2#3{%
  \ifx\relax#3\relax
    \hfill
    \let\DCFF@rl\bgroup
  \else
    \edef\DCFF@rl{to\the\count@\dimen@ii\bgroup\hss}%
    \count@\@gobble#3\relax
  \fi
  \let\DCFF@end\DCFF@endright
  \uppercase{\def~}{$\egroup\setbox\tw@\hbox to\dimen@\bgroup$\sfdc{#2}}%
   \setbox\z@\hbox{$\sfdc 1$}\dimen@ii\wd\z@
   \dimen@\count@\dimen@ii
   \setbox\z@\hbox{$\sfdc{#2}$}\advance\dimen@\wd\z@
   \setbox\tw@\hbox to\dimen@{}%
   \setbox\z@\hbox\DCFF@rl$\sfdc\mathcode`#1="8000 }
\def\DCFF@endright{$\hfil\egroup\box\z@\box\tw@}
\def\DCFF@endright{$\egroup\box\z@\box\tw@}
\newcolumntype{F}[4]{>{\DCFF@{#1}{#2}{#3}{#4}}c<{\DCFF@end}}

\newcolumntype{d}[1]{D{.}{.}{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-dcolumn

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-Extended \cline
%% \Cline takes 4 arguments
%% #1 = from col.; #2 = to col.; #3 = kern on the left; #4 = kern on the right
%%%%%%%%%%%%%%%%%%%%% MODIFICATION:
\newdimen \clineHT
\newdimen \clineDP
\def\Cline#1#2#3#4{\omit\@multicnt#1\advance\@multispan\m@ne
  \ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi\@multicnt#2%
  \advance\@multicnt-#1\advance\@multispan\@ne
  \hskip#3{\leaders\hrule\@height\arrayrulewidth\hfill}\hskip#4\cr
  \noalign{\vskip-\arrayrulewidth}}
%% \Clinev has #5 for additional vertical skip after it is done 
\def\Clinev#1#2#3#4#5{\omit\@multicnt#1%
  \advance\@multispan\m@ne\ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi
  \@multicnt#2\advance\@multicnt-#1\advance\@multispan\@ne
  \hskip#3{\leaders\hrule\@height\arrayrulewidth\hfill}\hskip#4\cr
  \noalign{\vskip-\arrayrulewidth\vskip #5}}
%% \ClineVV has #5 for vertical offset of the cline (plus is down)
\def\ClineVV#1#2#3#4#5{%
  \noalign{\vskip #5}%
  \omit\@multicnt#1%
  \advance\@multispan\m@ne\ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi
  \@multicnt#2\advance\@multicnt-#1\advance\@multispan\@ne
  \hskip#3{\leaders \hrule\@height\arrayrulewidth \hfill}\hskip#4\cr
  \noalign{\vskip-#5\vskip-\arrayrulewidth}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-Extended \cline

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% -e-VARIOUS-TOOLS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\TightJournal{%
\let\TEN=\TENxii 
\let\NIN=\NINxi 
\let\EGT=\EGTx % for tighter journals
\let\normalsize=\TENxii 
\let\small=\NINxi 
\let\footnotesize=\EGTx % for tighter journals
\headsep 12pt
\realtextheight 668pt %% 55x12+8=56 lines (10/12)%
\textheight 668pt % to start with
\auxheadsep 12pt
\auxrealtextheight 638pt %% 55x12+8=56 lines (10/12)%
\auxtextheight 638pt % to start with
\def\AUXPAGE{\realtextheight 638pt\textheight 638pt\headsep 12pt}%
\def\AUXNPAGE{\realtextheight 668pt\textheight 638pt\headsep 12pt}%
\let\dropcap=\dropcapXonXII
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\LooseJournal{%
\let\TEN=\TENxiii 
\let\NIN=\NINxii 
\let\EGT=\EGTxi % for looser journals
\let\normalsize=\TENxiii 
\let\small=\NINxii 
\let\footnotesize=\EGTxi % for looser journals
\headsep 24pt
\realtextheight 606pt %% 46 x 13 + 8 = 47 lines (10/13)%
\textheight 606pt % to start with
\auxheadsep 24pt
\auxrealtextheight 576pt %% 46 x 13 + 8 = 47 lines (10/13)%
\auxtextheight 576pt % to start with
\def\AUXPAGE{\realtextheight 576pt\textheight 576pt\headsep 24pt}%
\def\AUXNPAGE{\realtextheight 606pt\textheight 576pt\headsep 24pt}%
\let\dropcap=\dropcapXonXIII
}
%%%%%%%%%%%%%%%%%%-e-04set01.sty
%%%\endinput
%%%=============================================================================

%%%%%%%%%%%%%%%%%%%%%%%%-b-MOOR-specific 

%--------------------------------------------------------
\def\Trivlist{\parskip0pt\topsep=0pt\parsep0pt\partopsep0pt\@nmbrlistfalse
  \@trivlist \labelwidth\z@ \leftmargin\z@
  \itemindent\z@ \def\makelabel##1{##1}}

\def\endTrivlist{\if@newlist\@noitemerr\fi
   \if@inlabel\indent\fi
   \ifhmode\unskip \par\fi
   \if@noparlist \else
      \ifdim\lastskip >\z@ \@tempskipa\lastskip \vskip -\lastskip
         \advance\@tempskipa\parskip \advance\@tempskipa -\@outerparskip
         \vskip\@tempskipa
   \fi\@endparenv\fi}
%--------------------------------------------------------

\def\TightJournalMOOR{%
\let\TEN=\TENxii 
\let\NIN=\NINxi 
\let\EGT=\EGTx % for tighter journals
\let\normalsize=\TENxii 
\let\small=\NINxi 
\let\footnotesize=\EGTx % for tighter journals
\headsep 12pt
\realtextheight 620pt %% 51x12+8=52 lines (10/12)%
\textheight 620pt % to start with
\textwidth 396bp %33.5pc %31pc
\auxheadsep 12pt
\auxrealtextheight 590pt %% 55x12+8=56 lines (10/12)%
\auxtextheight 590pt % to start with
\def\AUXPAGE{\realtextheight 590pt\textheight 590pt\headsep 12pt}%
}

%%% Undoing the general version
\def\thebibliography{}
\def\endthebibliography{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% New numeric bibliography environment (works with \cite) (no NATBIB)
\renewenvironment{thebibliography}[1]
    {\subsection*{\hspace*{0pt}References}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\fs.9.10.\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \itemsep 2pt plus 2pt minus 0.5pt
            %%\@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \def\newblock{\relax}%
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------------------------------------------------------

\def\mcr{\\[-.6em] \\ }
\newenvironment{pMatrix}[1]{\bgroup\arraycolsep.5em
  \left(\kern-.2em\begin{array}{#1}}{\end{array}\kern-.2em\right)\egroup}
\renewenvironment{bMatrix}[1]{\bgroup\arraycolsep.5em
  \left[\kern-.2em\begin{array}{#1}}{\end{array}\kern-.2em\right]\egroup}
\renewenvironment{vMatrix}[1]{\bgroup\arraycolsep.5em
  \left|\kern-.2em\begin{array}{#1}}{\end{array}\kern-.2em\right|\egroup}
\renewenvironment{Matrix}[1]{\bgroup\arraycolsep.5em  
  \begin{array}{#1}}{\end{array}\egroup}
\newenvironment{Array}[1]{\bgroup\arraycolsep0.139em
  \begin{array}{#1}}{\end{array}\egroup}

%--------------------------------------------------------

\def\up{\HD{13}{0}}% for tables
\def\down{\HD{0}{4.5}}%


\skip\footins=12pt plus 8.1pt minus 5pt
%
\def\EquationNumbersByChapter{%
\def\theequation{\arabic{equation}}%
}
%
\def\EquationNumbersBySection{%
\@addtoreset{equation}{section}%
\def\theequation{\thesection.\arabic{equation}}%
}
%
\EquationNumbersByChapter % default: 1, 2, 3, 

\arraycolsep 1.5pt
\tabcolsep 4pt
\arrayrulewidth .4pt
\doublerulesep 2pt
\tabbingsep\labelsep

%--------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%-e-MOOR-specific 

%%%\input{04listcl.sty} % classical list parameters
%%%=============================================================================
%%%%%%%%%%%%%%-b-04listcl.sty (classic list parameters)
%%% LISTS %%
\newdimen\labelwidthi
\newdimen\labelwidthii
\newdimen\labelwidthiii
\newdimen\labelwidthiv
\def\normal@labelsep{0.5em}
\labelsep\normal@labelsep
\settowidth{\labelwidthi}{\rm(iii)}
\settowidth{\labelwidthii}{\rm(d)}
\settowidth{\labelwidthiii}{\rm(iii)}
\settowidth{\labelwidthiv}{\rm(M)}
\leftmargini\labelwidthi    \advance\leftmargini\labelsep
\leftmarginii\labelwidthii  \advance\leftmarginii\labelsep
\leftmarginiii\labelwidthiii \advance\leftmarginiii\labelsep
\leftmarginiv\labelwidthiv  \advance\leftmarginiv\labelsep
\def\setleftmargin#1#2{\settowidth{\@tempdima}{#2}\labelsep\normal@labelsep
  \csname labelwidth#1\endcsname\@tempdima
  \@tempdimb\@tempdima \advance\@tempdimb\labelsep
  \csname leftmargin#1\endcsname\@tempdimb}
\def\@listI{\leftmargin\leftmargini
  \labelwidth\labelwidthi \labelsep\normal@labelsep
  \topsep \z@ \partopsep\z@ \parsep\z@ \itemsep\z@
  \listparindent 1em}
\def\@listii{\leftmargin\leftmarginii
  \labelwidth\labelwidthii \labelsep\normal@labelsep
  \topsep\z@ \partopsep\z@ \parsep\z@ \itemsep\z@
  \listparindent 1em}
\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\labelwidthiii \labelsep\normal@labelsep
  \topsep\z@ \partopsep\z@ \parsep\z@ \itemsep\z@
  \listparindent 1em}
\def\@listiv{\leftmargin\leftmarginiv
  \labelwidth\labelwidthiv \labelsep\normal@labelsep
  \topsep\z@ \partopsep\z@ \parsep\z@ \itemsep\z@
  \listparindent 1em}
\let\@listi\@listI
\@listi
\def\left@label#1{{#1}\hss}
\def\right@label#1{\hss\llap{#1}}
\def\thick@label#1{\hspace\labelsep #1}
\newcount\@maxlistdepth
\@maxlistdepth=4
%
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\labelitemi{$\bullet$}          \def\labelitemii{$\cdot$}
\def\labelenumi{(\theenumi)}        \def\theenumi{\arabic{enumi}}
\def\labelenumii{(\alph{enumii})}   \def\theenumii{\theenumi\alph{enumii}}
\def\labelenumiii{(\roman{enumiii})}\def\theenumiii{\theenumii.\roman{enumiii}}
\def\labelenumiv{(\Alph{enumiv})}   \def\theenumiv{\theenumiii.\Alph{enumiv}}
\def\enumerate{%
  \ifnum \@enumdepth >\@maxlistdepth
    \@toodeep
  \else
    \advance\@enumdepth \@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
    \list{\csname label\@enumctr\endcsname}%
       {\usecounter{\@enumctr}
    \leftmargin16pt
       \let\makelabel=\right@label}
  \fi}
\def\itemize{%
  \ifnum \@itemdepth >\@maxlistdepth
    \@toodeep
  \else
    \advance\@itemdepth \@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
     \setleftmargin{i}{--}%
     \setleftmargin{ii}{$\cdot$}%
    \list{\csname\@itemitem\endcsname}%
       {\let\makelabel\right@label}
  \fi}
\def\verse{\let\\=\@centercr
  \list{}{\itemsep\z@
  \itemindent \z@
  \listparindent\z@
  \rightmargin 1em
  \leftmargin \rightmargin}\item[]}
\let\endverse\endlist
\def\quotation{\list{}{\itemindent\z@
 \leftmargin 1em \rightmargin \z@
  \parsep \z@ \@plus 1pt}\item[]}
\let\endquotation=\endlist
\def\quote{\list{}{\itemindent\z@
   \leftmargin 1em \rightmargin \z@}%
\item[]}
\let\endquote=\endlist
\def\descriptionlabel#1{\hspace\labelsep \itshape #1}
\def\description{\list{}{\labelwidth\z@
  \leftmargin \z@ \itemindent \z@ %-\leftmargin
  \let\makelabel\descriptionlabel}}
\let\enddescription\endlist
%%%%%%%%%%%%%%-e-04listcl.sty
%%%\endinput
%%%=============================================================================


%%%\input{04thmo01.sty}% theorems
%%%=============================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-04thmo01.sty (derived from THEOREM for MOOR)
\RequirePackage{theorem}

\newdimen\p@tt
\p@tt=1pt

\gdef\th@TH{%
  \def\theorem@headerfont{\normalfont\bf}%
%  \theorempreskipamount=6pt plus 3pt minus 2pt
%  \theorempostskipamount=6pt plus 3pt minus 2pt
  \theorempreskipamount=6\p@tt plus 3\p@tt minus 2\p@tt
  \theorempostskipamount=6\p@tt plus 3\p@tt minus 2\p@tt
  \labelsep5pt
  \def\@begintheorem##1##2{\normalfont\thit
        \item[\indent\hskip\labelsep 
          \theorem@headerfont ##1\ ##2.]}%
  \def\@opargbegintheorem##1##2##3{\normalfont\thit
        \item[\indent\hskip\labelsep 
          \theorem@headerfont ##1\ ##2\ {\bf(##3)}.]}}

\gdef\th@THkey{%
  \def\theorem@headerfont{\normalfont\bf}%
  \theorempreskipamount=6pt plus 3pt minus 2pt
  \theorempostskipamount=6pt plus 3pt minus 2pt
  \labelsep5pt
  \def\@begintheorem##1##2{\normalfont\thit
        \item[\indent\hskip\labelsep 
          \theorem@headerfont ##1\ ##2.]}%
  \def\@opargbegintheorem##1##2##3{\normalfont\thit
        \item[\indent\hskip\labelsep 
          \theorem@headerfont {##3}]}}

\gdef\th@EX{%
  \def\theorem@headerfont{\normalfont\bf}%
  \theorempreskipamount=0pt\theorempostskipamount=0pt
  \labelsep5pt
  \def\@begintheorem##1##2{\normalfont\upshape
        \item[\indent\hskip\labelsep \theorem@headerfont ##1\ ##2.]}%
  \def\@opargbegintheorem##1##2##3{\normalfont\upshape
        \item[\indent\hskip\labelsep \theorem@headerfont ##1\ ##2\ {(##3)}.]}}

\gdef\th@EXkey{%
  \def\theorem@headerfont{\normalfont\bf}%
  \theorempreskipamount=0pt\theorempostskipamount=0pt
  \labelsep5pt
  \def\@begintheorem##1##2{\normalfont\upshape
        \item[\indent\hskip\labelsep \theorem@headerfont ##1\ ##2.]}%
  \def\@opargbegintheorem##1##2##3{\normalfont\upshape
        \item[\indent\hskip\labelsep \theorem@headerfont {##3}]}}

%% Use for proper proofs that end with extra space (regardless of the use
%% or non-use of \qed (=the black box)
\def\proof#1{\Trivlist %%\addvspace{0pt} 
  \item[\hspace*{10pt}\hskip
  \labelsep{\it #1\enskip }]\ignorespaces}
\def\endproof{\endTrivlist\addvspace{0pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-04thmo01.sty
%%%\endinput
%%%=============================================================================


\TightJournalMOOR

\JOURNAL{}

%%%%%%%%%%%%%%-b-MOOR-maketitle
% adjustments to \AUBLOCK
\long\def\AUBLOCK#1{\gdef\theARTICLEAUTHORS{%
  \begin{Center}\HOOKa\vspace*{-8pt}#1\vspace*{-4pt}\end{Center}}}%
  \def\theARTICLEAUTHORS{Article Authors}%
%%%%%%%%%%%%%%-e-MOOR-maketitle

%%
\def\theARTICLETOP{%
  \vspace*{-30pt}
  %\noindent\vbox to 150pt{\hsize=\textwidth
  \begin{Center}
  \parbox[t][84pt][t]{\textwidth}{%
  \tabcolsep0pt
  \raisebox{42.5pt}{\fs.7.8.\begin{tabular}[t]{l}
  {\includegraphics[width=100bp]{ics-logo-v.pdf}}\\[0pt] % ICS logo
  \theEVENTFULL\\
  \theEVENTFULLX\\
  \thePAGERANGE
  \end{tabular}}%
    \hfill
  \raisebox{86.5pt}{\fs.7.8.\begin{tabular}[t]{r}
  \theDOI  \\
  {\bf Creative Commons License} \\[4pt]
  {\href{http://creativecommons.org/licenses/by/3.0/}{\includegraphics[width=1.0in]{by.png}}} \\
  \ \\[-5pt]
  This work is licensed under a \\
  \href{http://creativecommons.org/licenses/by/3.0/}{Creative Commons Attribution 3.0 License}
  \end{tabular}}\vfill }%
  \end{Center}}

\def\TITLEfont{\fs.16.18.\bf}%

\ABSwidth=396bp

\def\ABSfont{\fs.9.{10.5}.\relax}

\def\theARTICLEABSTRACT{%
  \begin{Flushleft}
  \HOOKb
  \vspace*{18pt}
  \noindent\makebox[54bp][l]{\ABSfont\bf Abstract}\begin{minipage}[t]{342bp}\parindent10pt
    \ABSfont
    \noindent\theABS\endgraf
  \end{minipage}%
  \vspace*{5pt}
  \end{Flushleft}}

\def\theARTICLERULE{%
  \begin{Center}
  \vspace*{6pt}%{12pt}
  \VRHDW{1pt}{0pt}{\textwidth}
  \vspace*{0pt}%{4pt}
  \HOOKc
  \end{Center}}

% default values
\def\HOOKtop{\vspace*{0pt}}%
\def\HOOKa{\vspace*{0pt}}%
\def\HOOKb{\vspace*{0pt}}%
\def\HOOKc{\vspace*{0pt}}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%\input{04scmo01.sty}
%%%=============================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-04scmo01.sty (sectioning in MOOR)
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart         {\@Roman\c@part}
\renewcommand\thesection      {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
%-------------------------------------------------
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindenttrue
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa \@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
%-------------------------------------------------
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}
%-------------------------------------------------
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\@M
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}
%-------------------------------------------------
\def\@seccntformat#1{{\upshape\csname the#1\endcsname.}\enskip }
%-------------------------------------------------
\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \@xsect{#3}}
%-------------------------------------------------

\def\section{\@startsection{section}{1}{0pt}%
    {-12pt plus -9pt minus -4pt}%
    {4pt}%
    {\fs.12.14.\bf}}

\def\subsection{\@startsection{subsection}{2}{0pt}%
    {-12pt plus -6pt minus -2pt}%
    {3pt}%
    {\fs.11.13.\bf}}

\def\subsubsection{\@startsection{subsubsection}{3}{0pt}%
    {6pt plus 5pt minus 1pt}%
    {-1em}%
    {\TEN\bf}}

\def\paragraph{\@startsection{paragraph}{4}{0pt}
    {-0.01pt}%
    {-1em}%
    {\bi}}

\def\subparagraph{\@startsection{subparagraph}{5}{10pt}
    {-0.01pt}%
    {-1em}%
    {\it}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-04scmo01.sty (adjusted sectioning in MOOR)
%%%\endinput
%%%=============================================================================


%%%\input{04ftmo01.sty}
%%%=============================================================================
%%%%%%%%%%%%%%%%%%-b-04ftmo01.sty (figures and tables in MOOR)

\newif\if@ORrotate \@ORrotatefalse
\def\ORrotate{\global\@ORrotatetrue}
\def\endORrotate{\global\@ORrotatefalse}

% FIGURE
\def\fnum@figure{Figure\hskip0.3em\thefigure}
\def\FigureCaptionFontStyle{\fs.9.{10.5}.\relax}
\def\FigureFootnoteFontStyle{\fs.8.{9.5}.\relax}
\def\FigNoteName{Note.}

\newbox\@tempboxb

\long\def\@makefigurecaption#1#2{%
  \FigureCaptionFontStyle
  \setbox\@tempboxa=\hbox{{\sc #1.}\enskip #2}%
  \setbox\@tempboxb=\hbox{#2}%
  \ifdim \wd\@tempboxb < 3pt
    \noindent\null\hfill{\sc #1.}%
    \HD{0}{6}\hfill\null\endgraf
  \else
  \ifdim \wd\@tempboxa >\hsize
    \noindent\hspace*{0em}{\sc #1.}\enskip 
    #2\HD{0}{6}\par
  \else
    \noindent\null\hfill{\sc #1.}%
    \enskip #2\HD{0}{6}\hfill\null\endgraf
  \fi\fi
}

\newcommand{\FIGURE}[3]{%
\long\def\testfignote{#3}%
\long\def\itis@empty{}%
\ifx\testfignote\itis@empty
  \long\def\fignote##1{\relax}%
\else
  \long\def\fignote##1{\par\parindent1em{\FigureFootnoteFontStyle
    \noindent\HD{10}{0}{\it\FigNoteName}\enskip
    ##1\HD{0}{3}\vspace*{-3pt}\endgraf}}%
\fi
\if@ORrotate
  \setbox4=\hbox to \textheight{\vbox{\hsize\textheight
  \begin{minipage}{\textheight}
  \caption{#1}%
  \vskip1sp
  \hbox to\hsize{\hss{#2}\hss}%
  \fignote{#3}%
  \end{minipage}}}
\else
  \setbox4=\hbox to \hsize{\vbox{%
  \begin{minipage}{\hsize}
  \caption{#1}
  \vskip1sp
  \hbox to\hsize{\hss{#2}\hss}%
  \fignote{#3}%
  \end{minipage}}}
\fi
\if@ORrotate
  \setbox5=\zeroCC{\box4}%
  \par\noindent\hspace*{0.5\textwidth}%
  \vrule width 0pt height 0.5\textheight depth 0.499\textheight
  \rotatebox{90}{\box5}%
\else
  \noindent\box4%
\fi
}

% TABLE

\def\fnum@table{Table\hskip0.3em\thetable} %% updated 010516 (\sc style!)
\newbox\tempbox
\newdimen\tempdim

\def\TableCaptionFontStyle{\fs.9.{10.5}.\relax}
\def\TableBodyFontStyle{\fs.9.{10.5}.\relax}
\def\TableFootnoteFontStyle{\fs.8.{9.5}.\relax}

\long\def\@maketablecaption#1#2{%
% Set TN followed by the caption see the length
  \setbox\@tempboxa
  \hbox{\TableCaptionFontStyle{\sc #1}.\enskip #2}%
% Set the caption only to examine its existence and length if any
  \setbox\@tempboxb
  \hbox{\TableCaptionFontStyle #2}%
% If no caption, TN centers with no period after it
  \ifdim\wd\@tempboxb < 3pt
    \begin{Center}\TableCaptionFontStyle\HD{8}{0}{\sc #1}\HD{0}{6}\end{Center}
  \else
% If TN+caption shorter than the table
  \ifdim\wd\@tempboxa < \tempdim
    \begin{Center}\TableCaptionFontStyle\HD{8}{0}{\sc #1}.\enskip #2\HD{0}{6}\end{Center}
  \else
% If TN+caption longer than the table
    \noindent\TableCaptionFontStyle\HD{8}{0}{\sc #1}.\enskip #2\HD{0}{6}\endgraf
  \fi\fi}

\newcommand{\TABLE}[3]{%
  \setbox\tempbox=\hbox{{\TableBodyFontStyle #2}}%
  \tempdim\wd\tempbox
  \@TABLE{#1}{#2}{#3}{\tempdim}}

\newcommand{\@TABLE}[4]{%
\long\def\testtabnote{#3}%
\long\def\itis@empty{}%
\ifx\testtabnote\itis@empty
  \long\def\tabnote##1{\relax}%
\else
%  \long\def\tabnote##1{\par\indent{\parindent1em
%  \TableFootnoteFontStyle\HD{13}{0}##1\endgraf}}%
  \long\def\tabnote##1{\par\parindent1em{\TableFootnoteFontStyle
    \noindent\HD{10}{0}{\it\FigNoteName}\enskip
    ##1\HD{0}{3}\vspace*{-3pt}\endgraf}}%
\fi
\if@ORrotate
  \setbox4=\hbox to #4 %%\textheight
  {\vbox to \textwidth{\hsize #4 %%%\textheight
  \vss
  \begin{minipage}[c]{#4}%
  \caption{#1}%
  {\TableBodyFontStyle #2}%
  \parindent8pt
  \tabnote{#3}%
  \end{minipage}%
  \vss}}
\else
  \setbox4=\hbox to \hsize{\hss
  \begin{minipage}[t]{#4}%
  \caption{#1}%
  {\TableBodyFontStyle #2}%
  \parindent8pt
  \tabnote{#3}%
  \end{minipage}\hss}
\fi
\if@ORrotate
  \setbox5=\zeroCC{\box4}%
  \par\noindent\hspace*{0.5\textwidth}%
  \vrule width 0pt height 0.5\textheight depth 0.499\textheight
  \rotatebox{90}{\box5}%
\else
  \noindent\box4%
\fi
}
%%%%%%%%%%%%%%%%%%-e-04ftmo01.sty
%%%\endinput
%%%=============================================================================

%%%\input{04lsmo01.sty}
%%%=============================================================================
%%%%%%%%%%%%%%%-b-04lsmo01.sty (MOOR lists)
%%% Special Lists
\newbox\boxH
\newbox\boxHrunin

\newenvironment{UL}{\begin{list}{}{%
 \topsep=6pt plus 3pt minus 2pt
 \itemsep=3pt plus 1.5pt minus 1pt
 \partopsep=0pt \parsep=0pt \labelsep=0pt \labelwidth=0pt \leftmargin=0pt
 \itemindent=20pt \rightmargin=0pt
 \listparindent=0pt}}{\end{list}}%

\newenvironment{NL}[1]{%
  \setbox\boxH=\hbox{\kern10pt{\rm #1}}%
  \begin{list}{\tenrm(\arabic{enumii})}{%
  \labelsep5pt \rightmargin0pc
  \labelwidth\wd\boxH 
  \leftmargin0pt 
  \parsep0pt \partopsep0pt \parskip0pt \listparindent10pt \topsep0pt 
  \itemindent5pt\advance\itemindent\labelwidth \itemsep0pt}}{\end{list}}

\newenvironment{NLh}[1]{%
  \setbox\boxH=\hbox{\kern10pt{\rm #1}}%
  \begin{list}{\rm(\arabic{enumii})}{%
  \labelsep5pt \rightmargin0pc
  \labelwidth\wd\boxH 
  \leftmargin\labelwidth\advance\leftmargin\labelsep 
  \parsep0pt \partopsep0pt \parskip0pt \listparindent10pt \topsep0pt 
  \itemindent0pt \itemsep0pt}}{\end{list}}

\newenvironment{NLcust}[2]{%
  \setbox\boxH=\hbox{\kern10pt{\rm #1}}%
  \begin{list}{\tenrm(\arabic{enumii})}{%
  \labelsep5pt \rightmargin0pc
  \labelwidth0pt %\wd\boxH 
  \leftmargin0pt 
  \parsep0pt \partopsep0pt \parskip0pt \listparindent10pt \topsep0pt 
  \itemindent15pt \itemsep0pt\relax #2}}{\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newdimen\reditind

\def\ITEM#1{\def\item{\@ifnextchar [{\@item}{\@noitembranch}}
\def\@noitembranch{\@ifnextchar *{\@@@@@item}{\@item[\@itemlabel]}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@@@@@item*[##1]{\if@noparitem \@donoparitem
  \else \if@inlabel \indent \par \fi
         \ifhmode \unskip\unskip \par \fi
         \if@newlist \if@nobreak \@nbitem \else
                        \addpenalty\@beginparpenalty
                        \addvspace\@topsep \addvspace{-\parskip}\fi
           \else \addpenalty\@itempenalty \addvspace\itemsep
          \fi
    \global\@inlabeltrue
\fi
\everypar{\global\@minipagefalse\global\@newlistfalse
          \if@inlabel\global\@inlabelfalse \hskip -\parindent \box\@labels
             \penalty\z@ \fi
          \everypar{}}\global\@nobreakfalse
\if@noitemarg \@noitemargfalse \if@nmbrlist \refstepcounter{\@listctr}\fi \fi
\setbox\@tempboxa\hbox{\makelabel{##1}}%
\global\setbox\@labels
 \hbox{\unhbox\@labels
       \hskip #1
       \hskip -\labelwidth \hskip -\labelsep
       \ifdim \wd\@tempboxa >\labelwidth
                \box\@tempboxa
          \else \hbox to\labelwidth {\unhbox\@tempboxa}\fi
       \hskip \labelsep}\ignorespaces}}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{NLrunin}[2]{%
 \setbox\boxH=\hbox{\kern10pt{}{\rm #1}}%
 \setbox\boxHrunin=\hbox{{\rm #2}}%
 \begin{list}{\rm(\alph{enumii})}{%
 \usecounter{enumii}\topsep=6pt plus 3pt minus 2pt
 \partopsep=0pt \itemsep=0pt \parsep=0pt \labelsep=5pt
 \labelwidth=\wd\boxH \leftmargin=0pt \rightmargin=0pt 
 \listparindent=1em \itemindent\wd\boxH  \advance\itemindent\labelsep
 \reditind\itemindent\advance\reditind-\wd\boxH\advance\reditind\wd\boxHrunin
 \ITEM{\reditind}}}{\end{list}}%

\newenvironment{NLrunincust}[4]{%
 \setbox\boxH=\hbox{\kern10pt{}{\rm #1}}%
 \setbox\boxHrunin=\hbox{{\rm #2}}%
 \begin{list}{\rm(\alph{enumii})}{%
 \usecounter{enumii}\topsep=6pt plus 3pt minus 2pt
 \partopsep=0pt \itemsep=0pt \parsep=0pt \labelsep=5pt
 \labelwidth=\wd\boxH \leftmargin=0pt \rightmargin=0pt 
 \listparindent=1em \itemindent\wd\boxH  \advance\itemindent\labelsep
 \reditind\itemindent\advance\reditind-\wd\boxH\advance\reditind\wd\boxHrunin
 #3\ITEM{\reditind}#4}}{\end{list}}%

\newenvironment{NLa}[1]{\setbox\boxH=
 \hbox{\kern20pt{}{\rm #1}}\begin{list}{\tenrm(\alph{enumii})}{%
 \usecounter{enumii}
 \topsep=0pt
 \partopsep=0pt
 \itemsep=3pt plus 1.5pt minus 0.5pt
 \parsep=0pt
 \labelsep=10pt
 \labelwidth=\wd\boxH
 \leftmargin=0pt %\labelwidth
 %\advance\leftmargin\labelsep
 \rightmargin=0pt
 \listparindent=1em
 \itemindent\wd\boxH
 \advance\itemindent\labelsep}}{\end{list}}%

\newenvironment{BL}{\setbox\boxH=
 \hbox{\kern20pt\LM\lower0.pt\hbox{$\bullet$}}%
 \begin{list}{\LM\lower0.pt\hbox{$\bullet$}}{%
 \topsep=0pt%
 \partopsep=0pt
 \itemsep=0pt
 \parsep=0pt
 \labelsep=5pt
 \labelwidth=\wd\boxH
 \leftmargin=\labelwidth
 \advance\leftmargin\labelsep
 \rightmargin=0pt
 \listparindent=10pt
 \itemindent=20pt %=\leftmargin
 \leftmargin=0pt}}{\end{list}}%

\newenvironment{BLsub}{\setbox\boxH=
 \hbox{\kern30pt\LM\lower0.6pt\hbox{\char'225}}%
 \begin{list}{\LM\lower0.6pt\hbox{\char'225}}{%
 \topsep=6pt plus 3pt minus 2pt
 \partopsep=0pt
 \itemsep=3pt plus 1pt minus 0.5pt
 \parsep=0pt
 \labelsep=4.5pt
 \labelwidth=\wd\boxH
 \leftmargin=\labelwidth
 \advance\leftmargin\labelsep
 \rightmargin=0pt
 \listparindent=10pt
 \itemindent=\leftmargin
 \leftmargin=0pt}}{\end{list}}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% LISTS--specific MOOR numbers
\newdimen\leftmarginia

\leftmargini 22.5pt
\leftmarginii 22.5pt     % > \labelsep + width of '(m)'
\leftmarginiii 18.7pt  % > \labelsep + width of 'vii.'
\leftmarginiv 17pt     % > \labelsep + width of 'M.'
\leftmarginv 10pt
\leftmarginvi 10pt

\leftmargin\leftmargini
\labelsep 5pt
\labelwidth\leftmargini\advance\labelwidth-\labelsep

\def\@listI{\leftmargin\leftmargini
\parsep 0pt \topsep 6pt plus 4pt minus 2pt \itemsep 0pt}

\let\@listi\@listI
\@listi
%%%%%%%%%%%%%%%-e-04lsmo01.sty
%%%\endinput
%%%=============================================================================

\def\section{\@startsection{section}{1}{0pt}%
    {-12pt plus -9pt minus -4pt}%
    {4pt}%
    {\fs.12.14.\bf}}

\def\assection#1{\vskip20pt plus 9pt minus4pt\noindent{\fs.12.14.\textbf{#1}}\vskip4pt\nobreak}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-Appendix
%\newcommand\appendix{\par
%  \setcounter{section}{0}%
%  \setcounter{subsection}{0}%
%  \renewcommand\thesection{\@Alph\c@section}}
\newenvironment{APPENDIX}[1]{\par
  \long\def\testAPP{:\space #1}%
  \long\def\testAPPempty{:\space}%
  \ifx\testAPP\testAPPempty
    \assection{Appendix}%
  \else
    \assection{Appendix: #1}%
  \fi
  \NIN
  \Dskips{5}{3}{3}{0}%
  \p@tt=0.7pt  
  \def\section{\@startsection{section}{1}{0pt}%
    {-6pt plus -6pt minus -1pt}%
    {2.5pt}%
    {\TEN\bf}}
  \def\subsection{\@startsection{subsection}{2}{0pt}%
    {-4pt plus -4pt minus -1pt}%
    {2pt}%
    {\NIN\bf}}
  \def\subsubsection{\@startsection{subsubsection}{3}{0pt}%
    {3pt plus 3pt minus 1pt}%
    {-1em}%
    {\NIN\bf}}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  \renewcommand\thesection{\@Alph\c@section}}
  {}
%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-Appendix



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-MOOR-specific

\long\def\ACK#1{\subsection*{\TEN\AckName}\NIN #1\endgraf}
\def\AckName{Acknowledgments}

\def\TheoremsBySection{%
\theoremstyle{TH}%
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{corollary}{Corollary}[section]
\newtheorem{claim}{Claim}[section]
\newtheorem{conjecture}{Conjecture}[section]
\newtheorem{hypothesis}{Hypothesis}[section]
\newtheorem{assumption}{Assumption}[section]
\theoremstyle{EX}
\newtheorem{remark}{Remark}[section]
\newtheorem{example}{Example}[section]
\newtheorem{problem}{Problem}[section]
\newtheorem{definition}{Definition}[section]
\newtheorem{question}{Question}[section]
\newtheorem{answer}{Answer}[section]
\newtheorem{exercise}{Exercise}[section]
}
\def\TheoremsByChapter{%
\theoremstyle{TH}%
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{proposition}{Proposition}
\newtheorem{corollary}{Corollary}
\newtheorem{claim}{Claim}
\newtheorem{conjecture}{Conjecture}
\newtheorem{hypothesis}{Hypothesis}
\newtheorem{assumption}{Assumption}
\theoremstyle{EX}
\newtheorem{remark}{Remark}
\newtheorem{example}{Example}
\newtheorem{problem}{Problem}
\newtheorem{definition}{Definition}
\newtheorem{question}{Question}
\newtheorem{answer}{Answer}
\newtheorem{exercise}{Exercise}
}
\TheoremsByChapter % default behavior: Th. 1, Th. 2, Lemma 1, ...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-MOOR-specific

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-chapter (modified from book10.cls)
\def\FRONTMATTER{%
\pagenumbering{roman}
\pagestyle{FMheadings}%
\def\chapter{\clearpage\thispagestyle{firstpage}%
  \global\@topnum\z@ \@afterindentfalse \secdef\@chapter\@schapter}
\def\@chapter[##1]##2{\gdef\theFMRUNNINGHEAD{##2}\@makechapterhead{##2}\@afterheading}
\def\@makechapterhead##1{% Does not apply in FM
  ##1}
\def\@schapter##1{\gdef\theFMRUNNINGHEAD{##1}\@makeschapterhead{##1}%
  \thispagestyle{firstpage}\@afterheading}% starred chapter
\def\@makeschapterhead##1{%
  \vspace*{7\p@}%
  \ARTICLEfirstpage
  \HOOKtop
  {\par\parindent0pt\rightskip0pt plus 30pc
  \vspace*{0pt}%
  \fs.15.17.\bf ##1
  \vskip 24\p@}}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-chapter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-b-extra frontmatter/backmatter stuff
\def\author#1{\par\vskip12pt plus 5pt minus 4pt\noindent\textbf{#1}\ }%
%\def\myemail#1{\null\hfill\penalty0\null~~\hfill\texttt{#1}}%
\def\myemail#1{\hspace*{1.em}\null\hfill\penalty200\hspace*{1pt}\hfill\texttt{#1}}%
\def\prefaceauthor#1{\par\vskip12pt\noindent\null\hfill\textsc{#1}}%
\def\forewordauthor#1{\par\vskip12pt\noindent\null\hfill\textsc{#1}}%

\long\def\INFORMSToDoA{%
\clearpage
\vspace*{100pt}
\noindent{\fs.13.15.\bf Title page (fmi) to be done by INFORMS}
\EMPTYpage
\clearpage
\vspace*{100pt}
\noindent{\fs.13.15.\bf Copyright page (fmii) to be done by INFORMS}
\EMPTYpage
\clearpage}

\def\BOOKTITLE#1{\gdef\theBOOKTITLE{#1}}\def\theBOOKTITLE{BOOK TITLE}%
\def\BOOKEDITOR#1{\gdef\theBOOKEDITOR{#1}}\def\theBOOKEDITOR{Book Editor}%
\def\BOOKEDITORAFFIL#1{\gdef\theBOOKEDITORAFFIL{#1}}\def\theBOOKEDITORAFFIL{Book Editor's Affiliation}%


\long\def\TITLEPAGE{%
  \vspace*{36pt}\thispagestyle{cropempty}\vskip2pc
  \noindent\begin{minipage}[s][530pt]{\textwidth}
  \centering
  {\fs.24.28.\bf\theBOOKTITLE\endgraf}
  \vskip10pc
  {\fs.14.16.\bf\theBOOKEDITOR\endgraf}
  \vskip10pt
  {\fs.10.12.\textit{\theBOOKEDITORAFFIL}\endgraf}
  \vfill
  {\fs.12.14.INFORMS 2005}
  \end{minipage}\newpage}

\long\def\COPYRIGHTPAGE{%
  \vspace*{0pt}\EMPTYpage\vskip15pc\begin{Center}
  {\fs.13.15.\bf Copyright page (fmii) to be done by INFORMS}\end{Center}}


\newenvironment{DEDICATION}{%
  \chapter*{Dedication}\thispagestyle{cropempty}\vskip15pc\begin{center}}
  {\end{center}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-e-extra frontmatter/backmatter stuff

%%% some local macros for ICS-2015
%\def\ORT{INFORMS \textit{TutORials in Operations Research}}%
\def\ICS{INFORMS Computing Society Conference Proceedings}%
\def\RG{\rightskip0pt plus 1in}%
\YEAR{2015}
\let\CHAPTERHEAD=\RUNNINGHEAD

\pagestyle{headings}
\pagenumbering{arabic}
\onecolumn\sloppy
\frenchspacing
\flushbottom

\def\theABS{\theABSTRACT}

\AtBeginDocument{\ARTICLEfirstpage}%

\endinput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% end of ics-2015.cls
%


