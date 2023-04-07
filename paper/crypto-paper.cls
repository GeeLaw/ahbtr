% crypto-paper
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{crypto-paper}[2023/04/06 Laomian Cryptography Paper]
\ClassInfo{crypto-paper}
  {https://github.com/GeeLaw/laomian/tree/main/crypto-paper}

% The code below is incorrect:
%     \iftrue
%     \else
%       \let\something\iftrue
%     \fi
% because when skipping over the "\else" branch,
% TeX only looks at (then) conditional control sequences and
% interprets the code above as
%     \iftrue
%     \else
%       \let\ifsomething
%       \iftrue
%       \fi
% causing unbalanced branching.
%
% To work around this issue:
% 1. Use the following control words.
% 2. Always "declare" conditional control sequences
%    outside any conditional code.
%
% Consider two cases:
% - If
%       \laomian@let@iftrue\ifsomething\fi
%   happens in non-skipped scan, TeX knows "\fi"
%   is the argument delimiter and expands normally.
% - If
%       \laomian@let@iffalse\ifsomething\fi
%   happens in skipped scan, TeX
%   ignores "\laomian@let@iffalse" and
%   thinks "\ifsomething\fi" form a balanced branch.
%
% For uniformity, always use the following to
% "declare" conditional control sequences.
\def\laomian@let@iftrue#1\fi{\let#1\iftrue}
\def\laomian@let@iffalse#1\fi{\let#1\iffalse}

\laomian@let@iffalse\if@laomian@base@lncs\fi
\laomian@let@iffalse\if@laomian@layout@thirtyeight@fortyeight\fi
\laomian@let@iffalse\if@laomian@layout@sixpointfive@nine\fi
\laomian@let@iffalse\if@laomian@draft\fi
\laomian@let@iffalse\if@laomian@runningheads\fi
\laomian@let@iffalse\if@laomian@anonymous\fi
\laomian@let@iffalse\if@laomian@pdfmetadata\fi
\laomian@let@iffalse\if@laomian@orcidicons\fi
\laomian@let@iffalse\if@laomian@iacrcopyright\fi
\laomian@let@iffalse\if@laomian@pagenumbers\fi
\laomian@let@iffalse\if@laomian@totalpagenumbers\fi
\laomian@let@iffalse\if@laomian@tableofcontents\fi
\laomian@let@iffalse\if@laomian@separatetitlepage\fi
\laomian@let@iffalse\if@laomian@opensonright\fi
\laomian@let@iffalse\if@laomian@bst@splncszerofour\fi
\laomian@let@iffalse\if@laomian@supplementarymaterials\fi
\laomian@let@iffalse\if@laomian@pagelimits\fi
\laomian@let@iffalse\if@laomian@vecisitbf\fi
\laomian@let@iffalse\if@laomian@colorfullinks\fi
\laomian@let@iffalse\if@laomian@fonts@source\fi
\laomian@let@iffalse\if@laomian@fonts@times\fi
\laomian@let@iffalse\if@laomian@fonts@palatino\fi
\laomian@let@iffalse\if@laomian@fonts@libertine\fi
\laomian@let@iffalse\if@laomian@fonts@utopia\fi
\laomian@let@iffalse\if@laomian@smartunderlines\fi
\laomian@let@iffalse\if@laomian@lncsarraytablemargins\fi
\laomian@let@iffalse\if@laomian@swaptablecaptionmargins\fi

% Options --- format=...
\laomian@let@iffalse\if@laomian@formatchosen\fi
\def\laomian@format{unset}

\def\laomian@format@eprint{%
  \laomian@let@iffalse\if@laomian@base@lncs\fi
  \laomian@let@iftrue\if@laomian@layout@thirtyeight@fortyeight\fi
  \laomian@let@iffalse\if@laomian@layout@sixpointfive@nine\fi
  \laomian@let@iffalse\if@laomian@draft\fi
  \laomian@let@iffalse\if@laomian@runningheads\fi
  \laomian@let@iffalse\if@laomian@anonymous\fi
  \laomian@let@iftrue\if@laomian@pdfmetadata\fi
  \laomian@let@iftrue\if@laomian@orcidicons\fi
  \laomian@let@iftrue\if@laomian@iacrcopyright\fi
  \laomian@let@iftrue\if@laomian@pagenumbers\fi
  \laomian@let@iftrue\if@laomian@totalpagenumbers\fi
  \laomian@let@iftrue\if@laomian@tableofcontents\fi
  \laomian@let@iftrue\if@laomian@separatetitlepage\fi
  \laomian@let@iffalse\if@laomian@opensonright\fi
  \laomian@let@iffalse\if@laomian@bst@splncszerofour\fi
  \laomian@let@iffalse\if@laomian@supplementarymaterials\fi
  \laomian@let@iffalse\if@laomian@pagelimits\fi
  \laomian@let@iftrue\if@laomian@vecisitbf\fi
  \laomian@let@iftrue\if@laomian@colorfullinks\fi
  \laomian@let@iftrue\if@laomian@fonts@source\fi
  \laomian@let@iffalse\if@laomian@fonts@times\fi
  \laomian@let@iffalse\if@laomian@fonts@palatino\fi
  \laomian@let@iffalse\if@laomian@fonts@libertine\fi
  \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  \laomian@let@iftrue\if@laomian@smartunderlines\fi
  \laomian@let@iftrue\if@laomian@lncsarraytablemargins\fi
  \laomian@let@iftrue\if@laomian@swaptablecaptionmargins\fi
  \def\laomian@formatchosen{eprint}%
}

\def\laomian@format@eprint@draft{%
  \laomian@format@eprint
  \laomian@let@iftrue\if@laomian@draft\fi
  \laomian@let@iftrue\if@laomian@opensonright\fi
  \def\laomian@formatchosen{eprint-draft}%
}

\def\laomian@format@lncs@camera@ready{%
  \laomian@let@iftrue\if@laomian@base@lncs\fi
  \laomian@let@iffalse\if@laomian@layout@thirtyeight@fortyeight\fi
  \laomian@let@iffalse\if@laomian@layout@sixpointfive@nine\fi
  \laomian@let@iffalse\if@laomian@draft\fi
  \laomian@let@iffalse\if@laomian@runningheads\fi
  \laomian@let@iffalse\if@laomian@anonymous\fi
  \laomian@let@iffalse\if@laomian@pdfmetadata\fi
  \laomian@let@iffalse\if@laomian@orcidicons\fi
  \laomian@let@iffalse\if@laomian@iacrcopyright\fi
  \laomian@let@iffalse\if@laomian@pagenumbers\fi
  \laomian@let@iffalse\if@laomian@totalpagenumbers\fi
  \laomian@let@iffalse\if@laomian@tableofcontents\fi
  \laomian@let@iffalse\if@laomian@separatetitlepage\fi
  \laomian@let@iffalse\if@laomian@opensonright\fi
  \laomian@let@iftrue\if@laomian@bst@splncszerofour\fi
  \laomian@let@iffalse\if@laomian@supplementarymaterials\fi
  \laomian@let@iftrue\if@laomian@pagelimits\fi
  \laomian@let@iftrue\if@laomian@vecisitbf\fi
  \laomian@let@iffalse\if@laomian@colorfullinks\fi
  \laomian@let@iffalse\if@laomian@fonts@source\fi
  \laomian@let@iffalse\if@laomian@fonts@times\fi
  \laomian@let@iffalse\if@laomian@fonts@palatino\fi
  \laomian@let@iffalse\if@laomian@fonts@libertine\fi
  \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  \laomian@let@iffalse\if@laomian@smartunderlines\fi
  \laomian@let@iftrue\if@laomian@lncsarraytablemargins\fi
  \laomian@let@iftrue\if@laomian@swaptablecaptionmargins\fi
  \def\laomian@formatchosen{lncs-camera-ready}%
}

\def\laomian@format@lncs@camera@ready@reference{%
  \laomian@format@lncs@camera@ready
  \laomian@let@iftrue\if@laomian@runningheads\fi
  \laomian@let@iftrue\if@laomian@pdfmetadata\fi
  \laomian@let@iftrue\if@laomian@orcidicons\fi
  \def\laomian@formatchosen{lncs-camera-ready-reference}%
}

\def\laomian@format@lncs@camera@ready@iacr{%
  \laomian@format@lncs@camera@ready
  \laomian@let@iftrue\if@laomian@pdfmetadata\fi
  \laomian@let@iftrue\if@laomian@orcidicons\fi
  \laomian@let@iftrue\if@laomian@iacrcopyright\fi
  \laomian@let@iftrue\if@laomian@pagenumbers\fi
  \laomian@let@iftrue\if@laomian@totalpagenumbers\fi
  \laomian@let@iftrue\if@laomian@colorfullinks\fi
  \def\laomian@formatchosen{lncs-camera-ready-iacr}%
}

\def\laomian@format@lncs@camera@ready@draft{%
  \laomian@format@lncs@camera@ready
  \laomian@let@iftrue\if@laomian@draft\fi
  \laomian@let@iftrue\if@laomian@runningheads\fi
  \laomian@let@iftrue\if@laomian@pdfmetadata\fi
  \laomian@let@iftrue\if@laomian@orcidicons\fi
  \laomian@let@iftrue\if@laomian@pagenumbers\fi
  \laomian@let@iftrue\if@laomian@totalpagenumbers\fi
  \laomian@let@iftrue\if@laomian@colorfullinks\fi
  \def\laomian@formatchosen{lncs-camera-ready-draft}%
}

\def\laomian@format@lncs@submission{%
  \laomian@format@lncs@camera@ready@iacr
  \laomian@let@iftrue\if@laomian@anonymous\fi
  \laomian@let@iffalse\if@laomian@pdfmetadata\fi
  \laomian@let@iffalse\if@laomian@iacrcopyright\fi
  \laomian@let@iftrue\if@laomian@supplementarymaterials\fi
  \def\laomian@formatchosen{lncs-submission}%
}

\def\laomian@format@lncs@submission@draft{%
  \laomian@format@lncs@submission
  \laomian@let@iftrue\if@laomian@draft\fi
  \def\laomian@formatchosen{lncs-submission-draft}%
}

\def\laomian@format@focs@submission{%
  \laomian@format@eprint
  \laomian@let@iffalse\if@laomian@layout@thirtyeight@fortyeight\fi
  \laomian@let@iftrue\if@laomian@layout@sixpointfive@nine\fi
  \laomian@let@iftrue\if@laomian@anonymous\fi
  \laomian@let@iffalse\if@laomian@pdfmetadata\fi
  \laomian@let@iffalse\if@laomian@iacrcopyright\fi
  \laomian@let@iffalse\if@laomian@fonts@source\fi
  \laomian@let@iffalse\if@laomian@fonts@times\fi
  \laomian@let@iffalse\if@laomian@fonts@palatino\fi
  \laomian@let@iffalse\if@laomian@fonts@libertine\fi
  \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  \def\laomian@formatchosen{focs-submission}%
}

\def\laomian@format@focs@submission@draft{%
  \laomian@format@focs@submission
  \laomian@let@iftrue\if@laomian@draft\fi
  \laomian@let@iftrue\if@laomian@opensonright\fi
  \def\laomian@formatchosen{focs-submission-draft}%
}

\def\laomian@declareformatoption#1#2{%
  \DeclareOption{format=#1}{%
    \if@laomian@formatchosen
      \ClassError
        {crypto-paper}
        {I get contradictory "format=..." options\MessageBreak
          ("\laomian@formatchosen", "#1")}
        {Remove extraneous "format=..." from
          "\protect\documentclass[...]\protect{crypto-paper\protect}".}%
    \else
      #2%
      \laomian@let@iftrue\if@laomian@formatchosen\fi
      \ClassInfo{crypto-paper}{[option] format=#1}%
    \fi
  }%
}

\laomian@declareformatoption{eprint}
  {\laomian@format@eprint}
\laomian@declareformatoption{eprint-draft}
  {\laomian@format@eprint@draft}
\laomian@declareformatoption{lncs-camera-ready}
  {\laomian@format@lncs@camera@ready}
\laomian@declareformatoption{lncs-camera-ready-reference}
  {\laomian@format@lncs@camera@ready@reference}
\laomian@declareformatoption{lncs-camera-ready-iacr}
  {\laomian@format@lncs@camera@ready@iacr}
\laomian@declareformatoption{lncs-camera-ready-draft}
  {\laomian@format@lncs@camera@ready@draft}
\laomian@declareformatoption{lncs-submission}
  {\laomian@format@lncs@submission}
\laomian@declareformatoption{lncs-submission-draft}
  {\laomian@format@lncs@submission@draft}
\laomian@declareformatoption{focs-submission}
  {\laomian@format@focs@submission}
\laomian@declareformatoption{focs-submission-draft}
  {\laomian@format@focs@submission@draft}

\let\laomian@declareformatoption\laomian@undefined

% This must be used in every other option to ensure
% the format is set before customizations are applied.
\def\laomian@ensure@formatchosen{%
  \if@laomian@formatchosen
  \else
    \laomian@format@eprint
    \laomian@let@iftrue\if@laomian@formatchosen\fi
  \fi
  \let\laomian@ensure@formatchosen\relax
}

% Options --- layout=..., opens-on=..., bst=...,
%             vec=..., links=..., fonts=..., underlines=...
\def\laomian@delcaremultiplechoiceoption#1#2#3{%
  \laomian@let@iffalse#2\fi
  \def#3{unset}%
  \@ifstar
    {\relax}%
    {\laomian@delcaremultiplechoiceoption@next{#1}{#2}{#3}}%
}

% #1 = name of option
% #2 = \if@laomian@...chosen
% #3 =    \laomian@...chosen
% #4 =      name of choice
% #5 = operation of choice
\def\laomian@delcaremultiplechoiceoption@next#1#2#3#4#5{%
  \DeclareOption{#1=#4}{%
    #2%
      \ClassError
        {crypto-paper}
        {I got contradictory "#1=..." options\MessageBreak
          ("#3", "#4")}
        {Remove extraneous "#1=..." from
          "\protect\documentclass[...]\protect{crypto-paper\protect}".}%
    \else
      \laomian@ensure@formatchosen
      #5%
      \laomian@let@iftrue#2\fi
      \def#3{#4}%
      \ClassInfo{crypto-paper}{[option] #1=#4}%
    \fi
  }%
  \@ifstar
    {\relax}%
    {\laomian@delcaremultiplechoiceoption@next{#1}{#2}{#3}}%
}

\laomian@delcaremultiplechoiceoption
  {layout}{\if@laomian@layoutchosen}{\laomian@layoutchosen}
  {6x9}{%
    \laomian@let@iffalse\if@laomian@layout@thirtyeight@fortyeight\fi
    \laomian@let@iffalse\if@laomian@layout@sixpointfive@nine\fi
  }
  {38x48}{%
    \laomian@let@iftrue\if@laomian@layout@thirtyeight@fortyeight\fi
    \laomian@let@iffalse\if@laomian@layout@sixpointfive@nine\fi
  }
  {6.5x9}{%
    \laomian@let@iffalse\if@laomian@layout@thirtyeight@fortyeight\fi
    \laomian@let@iftrue\if@laomian@layout@sixpointfive@nine\fi
  }
  *

\laomian@delcaremultiplechoiceoption
  {pdf-metadata}{\if@laomian@pdfmetadatachosen}{\laomian@pdfmetadatachosen}
  {yes}{\laomian@let@iftrue\if@laomian@pdfmetadata\fi}
  {no}{\laomian@let@iffalse\if@laomian@pdfmetadata\fi}
  *

\laomian@delcaremultiplechoiceoption
  {opens-on}{\if@laomian@opensonchosen}{\laomian@opensonchosen}
  {right}{\laomian@let@iftrue\if@laomian@opensonright\fi}
  {any}{\laomian@let@iffalse\if@laomian@opensonright\fi}
  *

\laomian@delcaremultiplechoiceoption
  {bst}{\if@laomian@bstchosen}{\laomian@bstchosen}
  {alpha}{\laomian@let@iffalse\if@laomian@bst@splncszerofour\fi}
  {splncs04}{\laomian@let@iftrue\if@laomian@bst@splncszerofour\fi}
  *

\laomian@delcaremultiplechoiceoption
  {vec}{\if@laomian@vecchosen}{\laomian@vecchosen}
  {itbf}{\laomian@let@iftrue\if@laomian@vecisitbf\fi}
  {bf}{\laomian@let@iffalse\if@laomian@vecisitbf\fi}
  *

\laomian@delcaremultiplechoiceoption
  {links}{\if@laomian@linkschosen}{\laomian@linkschosen}
  {colorful}{\laomian@let@iftrue\if@laomian@colorfullinks\fi}
  {blue}{\laomian@let@iffalse\if@laomian@colorfullinks\fi}
  *

\laomian@delcaremultiplechoiceoption
  {fonts}{\if@laomian@fontschosen}{\laomian@fontschosen}
  {computer-modern}{%
    \laomian@let@iffalse\if@laomian@fonts@source\fi
    \laomian@let@iffalse\if@laomian@fonts@times\fi
    \laomian@let@iffalse\if@laomian@fonts@palatino\fi
    \laomian@let@iffalse\if@laomian@fonts@libertine\fi
    \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  }
  {source}{%
    \laomian@let@iftrue\if@laomian@fonts@source\fi
    \laomian@let@iffalse\if@laomian@fonts@times\fi
    \laomian@let@iffalse\if@laomian@fonts@palatino\fi
    \laomian@let@iffalse\if@laomian@fonts@libertine\fi
    \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  }
  {times}{%
    \laomian@let@iffalse\if@laomian@fonts@source\fi
    \laomian@let@iftrue\if@laomian@fonts@times\fi
    \laomian@let@iffalse\if@laomian@fonts@palatino\fi
    \laomian@let@iffalse\if@laomian@fonts@libertine\fi
    \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  }
  {palatino}{%
    \laomian@let@iffalse\if@laomian@fonts@source\fi
    \laomian@let@iffalse\if@laomian@fonts@times\fi
    \laomian@let@iftrue\if@laomian@fonts@palatino\fi
    \laomian@let@iffalse\if@laomian@fonts@libertine\fi
    \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  }
  {libertine}{%
    \laomian@let@iffalse\if@laomian@fonts@source\fi
    \laomian@let@iffalse\if@laomian@fonts@times\fi
    \laomian@let@iffalse\if@laomian@fonts@palatino\fi
    \laomian@let@iftrue\if@laomian@fonts@libertine\fi
    \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  }
  {utopia}{%
    \laomian@let@iffalse\if@laomian@fonts@source\fi
    \laomian@let@iffalse\if@laomian@fonts@times\fi
    \laomian@let@iffalse\if@laomian@fonts@palatino\fi
    \laomian@let@iffalse\if@laomian@fonts@libertine\fi
    \laomian@let@iftrue\if@laomian@fonts@utopia\fi
  }
  *

\laomian@delcaremultiplechoiceoption
  {underlines}{\if@laomian@underlineschosen}{\laomian@underlineschosen}
  {smart}{\laomian@let@iftrue\if@laomian@smartunderlines\fi}
  {dumb}{\laomian@let@iffalse\if@laomian@smartunderlines\fi}
  *

\let\laomian@delcaremultiplechoiceoption\laomian@undefined
\let\laomian@delcaremultiplechoiceoption@next\laomian@undefined

% Options --- non-anonymous
\DeclareOption{non-anonymous}{%
  \laomian@ensure@formatchosen
  \laomian@let@iffalse\if@laomian@anonymous\fi
  \ClassInfo{crypto-paper}{[option] non-anonymous}%
}

% Options --- no-page-limits
\DeclareOption{no-page-limits}{%
  \laomian@ensure@formatchosen
  \laomian@let@iffalse\if@laomian@pagelimits\fi
  \laomian@let@iffalse\if@laomian@supplementarymaterials\fi
  \ClassInfo{crypto-paper}{[option] no-page-limits}%
}

% Options --- no-table-of-contents
\DeclareOption{no-table-of-contents}{%
  \laomian@ensure@formatchosen
  \laomian@let@iffalse\if@laomian@tableofcontents\fi
  \ClassInfo{crypto-paper}{[option] no-table-of-contents}%
}

% Options --- no-separate-title-page
\DeclareOption{no-separate-title-page}{%
  \laomian@ensure@formatchosen
  \laomian@let@iffalse\if@laomian@separatetitlepage\fi
  \ClassInfo{crypto-paper}{[option] no-separate-title-page}%
}

% Options --- no-total-number-of-pages
\DeclareOption{no-total-number-of-pages}{%
  \laomian@ensure@formatchosen
  \laomian@let@iffalse\if@laomian@totalpagenumbers\fi
  \ClassInfo{crypto-paper}{[option] no-total-number-of-pages}%
}

% Options --- no-lncs-array-table-margins
\DeclareOption{no-lncs-array-table-margins}{%
  \laomian@ensure@formatchosen
  \laomian@let@iffalse\if@laomian@lncsarraytablemargins\fi
  \ClassInfo{crypto-paper}{[option] no-lncs-array-table-margins}%
}

% Options --- no-swapped-table-caption-margins
\DeclareOption{no-swapped-table-caption-margins}{%
  \laomian@ensure@formatchosen
  \laomian@let@iffalse\if@laomian@swaptablecaptionmargins\fi
  \ClassInfo{crypto-paper}{[option] no-swapped-table-caption-margins}%
}

% Options --- disallow unknown options.
\DeclareOption*{%
  \ClassError
    {crypto-paper}
    {I got unknown option(s)}
    {Remove unknown option(s) from
      "\protect\documentclass[...]\protect{crypto-paper\protect}".}%
}

% Process the options in their definition order
% so that the format (if present) is processed first.
\ClassInfo{crypto-paper}{Options are being processed}
\ProcessOptions\relax
% In case there was no option at all.
\laomian@ensure@formatchosen
% For LNCS, ignore "layout=", "opens-on=", "fonts=",
% "no-table-of-contents", "no-separate-title-page",
% "no-lncs-array-table-margins", "no-swapped-table-caption-margins"
% by resetting them back to default.
\if@laomian@base@lncs
  \laomian@let@iffalse\if@laomian@layout@thirtyeight@fortyeight\fi
  \laomian@let@iffalse\if@laomian@layout@sixpointfive@nine\fi
  % \if@laomian@tableofontents    is already    \iffalse.
  % \if@laomian@separatetitlepage is already    \iffalse.
  % \if@laomian@opensonright      is handled by \if@laomian@separatetitlepage.
  \laomian@let@iffalse\if@laomian@fonts@source\fi
  \laomian@let@iffalse\if@laomian@fonts@times\fi
  \laomian@let@iffalse\if@laomian@fonts@palatino\fi
  \laomian@let@iffalse\if@laomian@fonts@libertine\fi
  \laomian@let@iffalse\if@laomian@fonts@utopia\fi
  \laomian@let@iftrue\if@laomian@lncsarraytablemargins\fi
  \laomian@let@iftrue\if@laomian@swaptablecaptionmargins\fi
\fi
% For ePrint, ignore "non-anonymous", "no-page-limits"
% by resetting them back to default.
% But they already have the default value.
% ----------------------------------------
% If the document is anonymous, ignore "pdf-metadata=yes".
\if@laomian@anonymous
  \laomian@let@iffalse\if@laomian@pdfmetadata\fi
\fi
% If the table of contents is shown,
% ignore the request to not use a separate title page.
\if@laomian@tableofcontents
  \laomian@let@iftrue\if@laomian@separatetitlepage\fi
\fi
% If a separate title page is not used,
% ignore the request to start the main body on an odd page.
\if@laomian@separatetitlepage
\else
  \laomian@let@iffalse\if@laomian@opensonright\fi
\fi
% If the page numbers are not shown,
% ignore the request to show the total number of pages.
\if@laomian@pagenumbers
\else
  \laomian@let@iffalse\if@laomian@totalpagenumbers\fi
\fi

% Output information about option processing.
\ClassInfo{crypto-paper}{Options have been proceesed}
\ClassInfo{crypto-paper}{[format] \laomian@formatchosen}

\def\laomian@output@conditional#1{%
  \begingroup
  \catcode`\ =13\relax\laomian@output@conditional@next{#1}%
}
\def\laomian@output@conditional@next#1#2{\catcode`\ =12\relax%
  \csname if@laomian@#1\endcsname
    \ClassInfo{crypto-paper}{[+] #1#2}%
  \else
    \ClassInfo{crypto-paper}{[-] #1#2}%
  \fi
  \endgroup
}

\laomian@output@conditional{base@lncs}{                    }
\laomian@output@conditional{layout@thirtyeight@fortyeight}{}
\laomian@output@conditional{layout@sixpointfive@nine}{     }
\laomian@output@conditional{draft}{                        }
\laomian@output@conditional{runningheads}{                 }
\laomian@output@conditional{anonymous}{                    }
\laomian@output@conditional{pdfmetadata}{                  }
\laomian@output@conditional{orcidicons}{                   }
\laomian@output@conditional{iacrcopyright}{                }
\laomian@output@conditional{pagenumbers}{                  }
\laomian@output@conditional{totalpagenumbers}{             }
\laomian@output@conditional{tableofcontents}{              }
\laomian@output@conditional{separatetitlepage}{            }
\laomian@output@conditional{opensonright}{                 }
\laomian@output@conditional{bst@splncszerofour}{           }
\laomian@output@conditional{supplementarymaterials}{       }
\laomian@output@conditional{pagelimits}{                   }
\laomian@output@conditional{vecisitbf}{                    }
\laomian@output@conditional{colorfullinks}{                }
\laomian@output@conditional{fonts@source}{                 }
\laomian@output@conditional{fonts@times}{                  }
\laomian@output@conditional{fonts@palatino}{               }
\laomian@output@conditional{fonts@libertine}{              }
\laomian@output@conditional{fonts@utopia}{                 }
\laomian@output@conditional{smartunderlines}{              }
\laomian@output@conditional{lncsarraytablemargins}{        }
\laomian@output@conditional{swaptablecaptionmargins}{      }

\let\laomian@output@conditional\laomian@undefined
\let\laomian@output@conditional@next\laomian@undefined

\ClassInfo{crypto-paper}{Options have been reported}

% ---------- prepare the environment according to the options ----------

\def\laomian@eatoneargument#1{\relax}

% -------------------- LNCS/ePrint begins --------------------

\if@laomian@base@lncs
  \if@laomian@runningheads
    \LoadClass[letterpaper,runningheads,twoside,10pt,onecolumn,final]{llncs}
  \else
    \LoadClass[letterpaper,twoside,10pt,onecolumn,final]{llncs}
  \fi
  \long\def\WideNarrow#1#2{#2}
  \def\laomian@anonymous@minusvspace{\vspace*{-7.5ex}}
  % Layout is specified by LNCS in non-draft mode.
  % Adjust margin notes for draft mode.
  \if@laomian@draft
    \setlength{\marginparwidth}{6.6cm}
    % This is the two-sided case.
    % \pdfpagewidth   = 40258437sp
    % \hoffset        = 0sp
    % \textwidth      = 22749088sp
    % \marginparsep   = 720896sp
    % \marginparwidth = 12306898sp
    % 2in             = 9472573sp
    % \oddsidemargin  = (\pdfpagewidth-2in-\hoffset-\hoffset
    %                    -\textwidth-\marginparsep-\marginparwidth)/2
    %                 = -2495509sp
    % \evensidemargin = (\pdfpagewidth-2in-\hoffset-\hoffset
    %                    -\textwidth+\marginparsep+\marginparwidth)/2
    %                 = 10532285sp
    \setlength{\oddsidemargin}{-2495509sp}
    \setlength{\evensidemargin}{10532285sp}
  \fi
  % Create indentation for subsequent paragraphs of abstract.
  \def\abstractparindent{\hspace*{2em}}
  % Springer compliance: Reference names.
  % For reference names at the beginning of a sentence,
  % LNCS requires that you use the full word, so in that case,
  % just use the word instead of the control sequence.
  \def\Figure{Fig.}
  \def\Equation{Eq.}
  \def\Section{Sect.}
  \def\Figures{Figs.}
  \def\Equations{Eqs.}
  \def\Sections{Sects.}
  % Fix LNCS bug of \switcht@..., see
  % tex.stackexchange.com/questions/441670/babel-changes-layout-of-lncs-paper
  \newtoks\laomian@lncs@switcht@toks
  \def\laomian@lncs@switcht@filter{%
    \@ifnextchar\egroup{\laomian@lncs@switcht@filter@end}{%
      \@ifnextchar\bgroup
        \laomian@lncs@switcht@filter@braced
        \laomian@lncs@switcht@filter@nonspace
    }%
  }
  % Use the \egroup token to mark the end of filtering.
  \def\laomian@lncs@switcht@filter@end\egroup{}
  % For contents inside {}, do not remove space tokens.
  \def\laomian@lncs@switcht@filter@braced#1{%
    \laomian@lncs@switcht@toks=\expandafter{\the\laomian@lncs@switcht@toks{#1}}%
    \laomian@lncs@switcht@filter
  }
  % For contents outside {}, the \@ifnextchar will remove space tokens.
  \def\laomian@lncs@switcht@filter@nonspace#1{%
    \laomian@lncs@switcht@toks=\expandafter{\the\laomian@lncs@switcht@toks#1}%
    \laomian@lncs@switcht@filter
  }
  \def\laomian@lncs@switcht@patch#1{%
    \laomian@lncs@switcht@toks={}%
    \expandafter\laomian@lncs@switcht@filter#1\egroup
    \edef#1{\the\laomian@lncs@switcht@toks}%
  }
  \laomian@lncs@switcht@patch\switcht@albion
  \laomian@lncs@switcht@patch\switcht@francais
  \laomian@lncs@switcht@patch\switcht@deutsch
  % The bug of \switcht@... has been fixed.
  \let\laomian@lncs@switcht@toks\laomian@undefined
  \let\laomian@lncs@switcht@filter\laomian@undefined
  \let\laomian@lncs@switcht@filter@end\laomian@undefined
  \let\laomian@lncs@switcht@filter@braced\laomian@undefined
  \let\laomian@lncs@switcht@filter@nonspace\laomian@undefined
  \let\laomian@lncs@switcht@patch\laomian@undefined
  % Springer compliance: Redefine \UrlFont at the end of the class.
\else
  \LoadClass[letterpaper,twoside,11pt,onecolumn,final]{article}
  \long\def\WideNarrow#1#2{#1}
  \def\laomian@anonymous@minusvspace{\vspace*{-12.5ex}}
  \if@laomian@layout@thirtyeight@fortyeight
    % 38x48 (preferred by the 2023 version)
    %     \textwidth  = 38\f@size
    %     \textheight = 48\baselineskip
    \flushbottom
    \setlength{\textwidth}{416.1pt}
    \setlength{\hoffset}{0pt}
    \setlength{\marginparsep}{10.95pt}
    \setlength{\marginparwidth}{65.7pt}
    % This is one-sided case.
    % \textwidth     = 27269530sp
    % \oddsidemargin = \evensidemargin
    %                = (\pdfpagewidth-2in-\hoffset-\hoffset-\textwidth)/2
    %                = 1758167sp
    % 26.8275pt is already internally represented by 1758167sp.
    \setlength{\oddsidemargin}{26.8275pt}
    \setlength{\evensidemargin}{26.8275pt}
    \setlength{\textheight}{652.8pt}
    \setlength{\voffset}{-60pt}
    % Adjust margin notes for draft mode.
    \if@laomian@draft
      \setlength{\marginparsep}{5.475pt}
      \setlength{\marginparwidth}{136.875pt}
      % This is the two-sided case (see LNCS draft mode formula).
      % \marginparsep   = 358810sp
      % \marginparwidth = 8970240sp
      % \oddsidemargin  = -2906358sp
      % \evensidemargin = 6422692sp
      % -44.3475pt, 98.0025pt are already internally
      % represented by -2906358sp, 6422692sp.
      \setlength{\oddsidemargin}{-44.3475pt}
      \setlength{\evensidemargin}{98.0025pt}
    \fi
  \else\if@laomian@layout@sixpointfive@nine
    % 6.5x9 (FOCS submission, 1-inch to each side)
    \flushbottom
    \setlength{\textwidth}{6.5in}
    \setlength{\hoffset}{0pt}
    \setlength{\marginparsep}{4pt}
    \setlength{\marginparwidth}{58pt}
    % This is the one-sided case.
    % \textwidth = 30785863sp
    \setlength{\oddsidemargin}{0pt}
    \setlength{\evensidemargin}{0pt}
    \setlength{\textheight}{9in}
    \setlength{\voffset}{-58pt}
    \if@laomian@draft
      % This is the two-sided case.
      % \oddsidemargin  = -4063231.5sp
      % \evensidemargin = 4063232.5sp
      % We round to the even number.
      \setlength{\marginparwidth}{120pt}
      \setlength{\oddsidemargin}{-4063232sp}
      \setlength{\evensidemargin}{4063232sp}
    \fi
  \else
    % 6x9 (preferred by the 2022 version)
    \raggedbottom
    \setlength{\textwidth}{6in}
    \setlength{\hoffset}{0pt}
    \setlength{\marginparsep}{0.0625in}
    \setlength{\marginparwidth}{1in}
    % This is the one-sided case.
    % \textwidth     = 28417720sp
    % \oddsidemargin = \evensidemargin = 1184072sp
    % 0.25in is internally represented by 1184071sp,
    % so we specify both dimensions in "sp".
    \setlength{\oddsidemargin}{1184072sp}
    \setlength{\evensidemargin}{1184072sp}
    \setlength{\textheight}{9in}
    % The vertical alignment might not be
    % perfectly the same as the 2022 version.
    \setlength{\voffset}{-58pt}
    % Adjust margin notes for draft mode.
    \if@laomian@draft
      \setlength{\marginparwidth}{2in}
      % This is the two-sided case.
      % \marginparsep   = 296017sp
      % \marginparwidth = 9472573sp
      % \oddsidemargin  = -3700223sp
      % \evensidemargin = 6068367sp
      % -0.78125in, 1.28125in are internally
      % represented by -3700222sp, 6068367sp,
      % so we specify both dimensions in "sp".
      \setlength{\oddsidemargin}{-3700223sp}
      \setlength{\evensidemargin}{6068367sp}
    \fi
  \fi\fi
  % Pick up array/table inter-column margins from LNCS.
  \if@laomian@lncsarraytablemargins
    \setlength{\arraycolsep}{1.4\p@}
    \setlength{\tabcolsep}{1.4\p@}
  \fi
  % Swap top/bottom margins for table captions
  % because table captions are above the tables in LNCS.
  \if@laomian@swaptablecaptionmargins
    % This implementation is more flexible than LNCS.
    % The user can edit \abovecaptionskip for the non-zero caption margin.
    \newlength{\laomian@bak@captionskip}
    \renewenvironment{table}{%
      \setlength{\laomian@bak@captionskip}{\abovecaptionskip}%
      \setlength{\abovecaptionskip}{\belowcaptionskip}%
      \setlength{\belowcaptionskip}{\laomian@bak@captionskip}%
      \@float{table}%
    }{\end@float}
    \renewenvironment{table*}{%
      \setlength{\laomian@bak@captionskip}{\abovecaptionskip}%
      \setlength{\abovecaptionskip}{\belowcaptionskip}%
      \setlength{\belowcaptionskip}{\laomian@bak@captionskip}%
      \@dblfloat{table}%
    }{\end@dblfloat}
  \fi
  % Create indentation for subsequent paragraphs of abstract (not needed).
  \let\abstractparindent\relax
  % Reference names.
  \def\Figure{Figure}
  \def\Equation{Equation}
  \def\Section{Section}
  \def\Figures{Figures}
  \def\Equations{Equations}
  \def\Sections{Sections}
  % Supply LNCS metadata control sequences.
  \let\titlerunning\laomian@eatoneargument
  \let\authorrunning\laomian@eatoneargument
  % \orcidID is handled by \if@laomian@orcidicons.
  % Supply the \institute control sequence.
  \let\laomian@institute\relax
  \def\inst#1{\unskip\textsuperscript{\,#1}}
  \def\institute#1{\global\def\laomian@institute{#1}}
  \def\email#1{\texttt{#1}}
  \def\keywords#1{%
    \begingroup
    \def\and{\unskip, }%
    \addvspace{2ex}\noindent\textbf{Keywords.} #1\@addpunct{.}\par
    \endgroup
  }
  % Define \maketitle (this is handled again by \if@laomian@pagenumbers).
  \def\maketitle{%
    \begingroup
    \null
    \vskip 2em\relax
    \begin{center}%
      {\LARGE\@title\par}%
      \vskip 1.5em\relax
      {%
        \large\lineskip .5em\relax
        \begin{tabular}[t]{c}%
          \ignorespaces
          \@author
          \unskip
        \end{tabular}%
        \par
      }%
      \vskip 1em\relax
      \begingroup
      % Count the number of institutes.
      \setcounter{footnote}{1}%
      \newbox\laomian@institute@box
      \def\and{%
        \unskip
        \par\vskip 0.4em\relax
        \noindent\stepcounter{footnote}%
        \textsuperscript{\arabic{footnote}}\,\ignorespaces
      }%
      \setbox\laomian@institute@box\vbox{\laomian@institute}%
      \par\noindent
      \ifnum\c@footnote=1%
        % If there is only one institute, no need for the numbers.
        \setcounter{footnote}{0}%
      \else
        % If there are 2 or more institutes,
        % they will be formatted like footnotes, and
        % "real" footnote numbering should continue from there.
        % This behavior comes from LNCS, but
        % it is suppressed if a separate title page is used.
        % See \LaomianBody.
        \setcounter{footnote}{1}%
        \textsuperscript{1}\,%
      \fi
      \ignorespaces
      \laomian@institute
      \endgroup
      \par\vskip 1em\relax
      {\large \@date}%
    \end{center}%
    \par\vskip 1.2em\relax
    \endgroup
  }
  % Use LNCS numbering leveling.
  \setcounter{secnumdepth}{2}
  % Use LNCS captioning.
  \long\def\@makecaption#1#2{%
    \small
    \vskip\abovecaptionskip
    \sbox\@tempboxa{{\bfseries #1.} #2}%
    \ifdim\wd\@tempboxa>\hsize
      {\bfseries #1.} #2\par
    \else
      \global\@minipagefalse
      \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
    \fi
    \vskip\belowcaptionskip
  }
  % URL breaking at the end of the class.
\fi

% -------------------- LNCS/ePrint   ends --------------------

% -------------------- basic begins --------------------

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
% "xcolor" ensures (though it might not be the only package that ensures)
% that the paper size is respected by pdfLaTeX.
\RequirePackage{xcolor}
\RequirePackage{float,graphicx}
\RequirePackage{tabularx,booktabs,multirow}
\RequirePackage{relsize}
\RequirePackage{afterpage}
\RequirePackage[normalem]{ulem}
\RequirePackage[outline]{contour}
\RequirePackage{lastpage}

\let\proof\laomian@undefined
\let\endproof\laomian@undefined
\RequirePackage{amsfonts,amsmath,amsthm,amssymb,mathtools}
\RequirePackage{bbm,dsfont,mathrsfs,stmaryrd}
\RequirePackage{dashbox}

% For LNCS, decrease the spacing before \subsubsection.
% For ePrint, use LNCS style with decreased spacing.
\def\subsubsection{%
  \@startsection{subsubsection}{3}{\z@}%
  {-12\p@ \@plus -4\p@ \@minus -4\p@}%
  {-0.5em \@plus -0.22em \@minus -0.1em}%
  {\normalfont\normalsize\bfseries\boldmath}%
}

% For LNCS, this has no effect (same definition).
% For ePrint, use LNCS style.
\def\paragraph{%
  \@startsection{paragraph}{4}{\z@}%
  {-12\p@ \@plus -4\p@ \@minus -4\p@}%
  {-0.5em \@plus -0.22em \@minus -0.1em}%
  {\normalfont\normalsize\itshape}%
}

% Completely prevent \subparagraph.
\def\subparagraph{%
  \ClassError
    {crypto-paper}
    {"\protect\subparagraph" is intentionally undefined}
    {Remove "\protect\subparagraph" or define it yourself.}%
}

\def\ClearFloats{\afterpage{\clearpage}}

\def\HyperTargetToThisLine#1{\Hy@raisedlink{\hypertarget{#1}{}}}

\def\DateTodayMonthYear{\date{\ifcase\month
  \or January\or February\or March\or April\or May\or June%
  \or July\or August\or September\or October\or November\or December%
  \fi\ \number\year
}}

\def\DateTodayDayMonthYear{\date{\number\day\ \ifcase\month
  \or January\or February\or March\or April\or May\or June%
  \or July\or August\or September\or October\or November\or December%
  \fi\ \number\year
}}

\def\DateTodayMonthDayYear{\date{\ifcase\month
  \or January\or February\or March\or April\or May\or June%
  \or July\or August\or September\or October\or November\or December%
  \fi\ \number\day,\ \number\year
}}

\def\Undated{\date{}}

% -------------------- basic   ends --------------------

% -------------------- draft mode begins --------------------

% In draft mode, make page frames pink and provide call-out comment boxes.
% Nested call-out control sequences simply continue in the same box.
\laomian@let@iffalse\if@laomian@callout@inside\fi
\if@laomian@draft
  % Show pink borders.
  \RequirePackage[pass,showframe]{geometry}
  \let\laomian@bak@Gm@pageframes\Gm@pageframes
  \def\Gm@pageframes{%
    \begingroup
      \color{red!50}\laomian@bak@Gm@pageframes
    \endgroup
  }
  % This fixes the incorrectly positioned margin notes.
  \RequirePackage{mparhack}
  % Provide call-out comment boxes.
  \RequirePackage[
    backgroundcolor=white!0,
    linecolor=black!70,
    bordercolor=black!70,
    textsize=footnotesize
  ]{todonotes}
  % The call-out comment boxes use rotating colors.
  \definecolor{laomiancallout1}{rgb}{0.965,0.365,0.208}
  \definecolor{laomiancallout2}{rgb}{0.506,0.733,0.020}
  \definecolor{laomiancallout3}{rgb}{1.000,0.729,0.027}
  \definecolor{laomiancallout4}{rgb}{0.016,0.647,0.941}
  \def\laomian@callout@color@name{laomiancallout1}
  \def\laomian@callout@color@name@a{laomiancallout2}
  \def\laomian@callout@color@name@b{laomiancallout3}
  \def\laomian@callout@color@name@c{laomiancallout4}
  \def\laomian@callout@color@name@d{}
  \def\laomian@callout@color@rotate{%
    \global\let\laomian@callout@color@name@d\laomian@callout@color@name
    \global\let\laomian@callout@color@name\laomian@callout@color@name@a
    \global\let\laomian@callout@color@name@a\laomian@callout@color@name@b
    \global\let\laomian@callout@color@name@b\laomian@callout@color@name@c
    \global\let\laomian@callout@color@name@c\laomian@callout@color@name@d
  }
  % It is possible, and recommended, to say "\long\defcallout\luoji{Ji}".
  \def\defcallout#1#2{\def#1##1{%
    \if@laomian@callout@inside
      \\\textbf{#2:} ##1%
    \else
      \laomian@let@iftrue\if@laomian@callout@inside\fi
      \leavevmode
      \todo[
        linecolor=\laomian@callout@color@name,
        bordercolor=\laomian@callout@color@name
      ]{\textbf{#2:} ##1}%
      \laomian@let@iffalse\if@laomian@callout@inside\fi
      \laomian@callout@color@rotate
      \ignorespaces
    \fi
  }}
\else
  \def\defcallout#1#2{\def#1##1{\ignorespaces}}
\fi
\AtBeginDocument{\def\defcallout#1#2{%
  \ClassError
    {crypto-paper}
    {"\protect\defcallout" cannot be used after
      "\protect\begin\protect{document\protect}"}
    {Move "\protect\defcallout" into the preamble.}%
}}

% -------------------- draft mode   ends --------------------

% -------------------- anonymous begins --------------------

\if@laomian@anonymous
  \let\LaomianAcknowledgments\relax
  % Back up the metadata control sequences.
  \let\laomian@anonymous@bak@author\author
  \let\laomian@anonymous@bak@authorrunning\authorrunning
  \let\laomian@anonymous@bak@institute\institute
  \let\laomian@anonymous@bak@date\date
  % Replace the metadata control sequences.
  \let\author\laomian@eatoneargument
  \let\authorrunning\laomian@eatoneargument
  \let\institute\laomian@eatoneargument
  % Wrap \maketitle.
  \let\laomian@anonymous@bak@maketitle\maketitle
  \def\maketitle{%
    % Restore the metadata control sequences and \maketitle.
    \let\author\laomian@anonymous@bak@author
    \let\authorrunning\laomian@anonymous@bak@authorrunning
    \let\institute\laomian@anonymous@bak@institute
    \let\date\laomian@anonymous@bak@date
    \let\maketitle\laomian@anonymous@bak@maketitle
    % Clear the back-ups.
    \let\laomian@anonymous@bak@author\laomian@undefined
    \let\laomian@anonymous@bak@authorrunning\laomian@undefined
    \let\laomian@anonymous@bak@institute\laomian@undefined
    \let\laomian@anonymous@bak@date\laomian@undefined
    \let\laomian@anonymous@bak@maketitle\laomian@undefined
    % Supply the metadata.
    \author{}\authorrunning{}\institute{}\date{}%
    % Invoke the original \maketitle and remove the extra space.
    \maketitle
    \laomian@anonymous@minusvspace
  }
\else
  \def\LaomianAcknowledgments{\input{acknowledgments}}
\fi

% -------------------- anonymous   ends --------------------

% -------------------- ORCID icons begin --------------------

\if@laomian@orcidicons
  % "orcidlink" is handled by \if@laomian@colorfullinks
  % because we want to include "hyperref" first.
  \def\orcidID#1{\unskip\,\orcidlink{#1}}
\fi

% -------------------- ORCID icons   end --------------------

% -------------------- IACR copyright begins --------------------

\if@laomian@iacrcopyright
  \def\LaomianIacrCopyright#1{%
    \begingroup
    \def\@makefntext##1{\noindent ##1}%
    \footnotetext{#1}%
    \endgroup
  }
\else
  \let\LaomianIacrCopyright\laomian@eatoneargument
\fi

% -------------------- IACR copyright   ends --------------------

% -------------------- total page numbers begin --------------------

\def\laomian@pagenumbers@roman@foot{\hfill{\thepage}\hfill}
\if@laomian@totalpagenumbers
  \def\laomian@pagenumbers@arabic@foot{%
    \hfill{\thepage~/~\pageref*{LastPage}}\hfill
  }
\else
  \let\laomian@pagenumbers@arabic@foot\laomian@pagenumbers@roman@foot
\fi

% -------------------- total page numbers   end --------------------

% -------------------- page numbers begin --------------------

\if@laomian@pagenumbers
  % Find the correct base style.
  \if@laomian@runningheads
    \let\laomian@pagestyle@base\ps@headings
  \else
    \let\laomian@pagestyle@base\ps@empty
  \fi
  % Redefine "plain" style.
  \def\ps@plain{%
    \laomian@pagestyle@base
    % Set the page numbering style without resetting the page number.
    \global\def\thepage{\@arabic\c@page}%
    \let\@oddfoot\laomian@pagenumbers@arabic@foot
    \let\@evenfoot\@oddfoot
  }
  % Redefine "titlepage" style.
  \if@laomian@separatetitlepage
    \def\ps@titlepage{%
      \ps@empty
      % Set the page numbering style without resetting the page number.
      \global\def\thepage{\@roman\c@page}%
      \let\@oddfoot\laomian@pagenumbers@roman@foot
      \let\@evenfoot\@oddfoot
    }
  \else
    \let\ps@titlepage\ps@plain
  \fi
  % Provide control sequences to set the appropriate page style.
  \def\laomian@pagestyle@set@titlepage{%
    \thispagestyle{titlepage}%
    \pagestyle{titlepage}%
  }
  \def\laomian@pagestyle@set@body{%
    \thispagestyle{plain}%
    \pagestyle{plain}%
  }
\else
  % Do not disturb page styles set by LNCS (runningheads-dependent).
  \let\laomian@pagestyle@set@titlepage\relax
  \let\laomian@pagestyle@set@body\relax
\fi
% Wrap \maketitle to apply the appropriate page style.
\let\laomian@pagenumbers@bak@maketitle\maketitle
\def\maketitle{%
  \let\maketitle\laomian@pagenumbers@bak@maketitle
  \let\laomian@pagenumbers@bak@maketitle\laomian@undefined
  \maketitle
  \laomian@pagestyle@set@titlepage
}

% -------------------- page numbers   end --------------------

% -------------------- table of contents begin --------------------

\if@laomian@tableofcontents
  % Set up the table of contents.
  \RequirePackage{tocloft}
  \setcounter{tocdepth}{2}
  \def\cfttoctitlefont{\vspace*{1ex}\hfill\LARGE\bfseries}
  \def\cftaftertoctitle{\hfill\vspace*{1ex}}
  \def\cftsecleader{\hfil}
  \def\cftsecfont{\bfseries}
  \def\cftsecpagefont{\bfseries}
  \setlength{\cftbeforesecskip}{0.4em}
  \setlength{\cftbeforesubsecskip}{0.1em}
  \tocloftpagestyle{titlepage}
  % Typesets the table of contents.
  \def\laomian@tableofcontents@typeset{%
    % Temporarily disable link coloring.
    \let\laomian@tableofcontents@bak@Hy@colorlink\Hy@colorlink
    \def\Hy@colorlink##1{\begingroup}
    % Print the table of contents.
    \newpage
    \tableofcontents
    % Restore link coloring.
    \let\Hy@colorlink\laomian@tableofcontents@bak@Hy@colorlink
    \let\laomian@tableofcontents@bak@Hy@colorlink\laomian@undefined
  }
  % Adds "Appendix" to the table of contents.
  \def\laomian@tableofcontents@appendix{%
    \addtocontents{toc}{%
      \protect\vskip 1.6em\protect\relax
      {\protect\Large Appendix}%
      \protect\par
    }%
  }
  % Adds "References" to the table of contents.
  \def\laomian@tableofcontents@bib@begin{%
    % Back up \section.
    \let\laomian@tableofcontents@bak@section\section
    % Redefine \section.
    \def\section{\@ifstar
      \laomian@tableofcontents@bib@section
      \laomian@tableofcontents@bib@section
    }%
    \def\laomian@tableofcontents@bib@section##1{%
      % Produce \section*{References} and add it to the table of contents.
      \laomian@tableofcontents@bak@section*{References}%
      \addcontentsline{toc}{section}{References}%
    }%
  }
  \def\laomian@tableofcontents@bib@end{%
    % Restore \section and clear unused control sequences.
    \let\section\laomian@tableofcontents@bak@section
    \let\laomian@tableofcontents@bak@section\laomian@undefined
    \let\laomian@tableofcontents@bib@section\laomian@undefined
  }
\else
  \let\laomian@tableofcontents@typeset\relax
  \let\laomian@tableofcontents@appendix\relax
  \let\laomian@tableofcontents@bib@begin\relax
  \let\laomian@tableofcontents@bib@end\relax
\fi

% -------------------- table of contents   end --------------------

% -------------------- separate title page begins --------------------

\if@laomian@separatetitlepage
  \def\laomian@separatetitlepage@startbody{%
    \newpage
    \setcounter{page}{1}%
    \setcounter{footnote}{0}%
    \laomian@pagestyle@set@body
  }
\else
  \let\laomian@separatetitlepage@startbody\laomian@pagestyle@set@body
\fi

% -------------------- separate title page   ends --------------------

% -------------------- opens-on=right/any begins --------------------

\if@laomian@opensonright
  \def\laomian@opensonright@ensure@evenpage{%
    \ifodd\c@page\relax
      \newpage
      \leavevmode
      \thispagestyle{empty}%
    \fi
  }
\else
  \let\laomian@opensonright@ensure@evenpage\relax
\fi

% -------------------- opens-on=right/any   ends --------------------

% -------------------- joint handling of
% --------------------     page numbers,
% --------------------     table of contents,
% --------------------     separate title page,
% --------------------     opens-on=right
% -------------------- begins --------------------

\def\LaomianBody{%
  \laomian@tableofcontents@typeset
  \laomian@opensonright@ensure@evenpage
  \laomian@separatetitlepage@startbody
}

% -------------------- joint handling of
% --------------------     page numbers,
% --------------------     table of contents,
% --------------------     separate title page,
% --------------------     opens-on=right
% -------------------- ends ----------------------

% -------------------- bibliography begins --------------------

\if@laomian@bst@splncszerofour
  \long\def\BibAlphaNumeric#1#2{#2}
  \RequirePackage[noadjust,nomove]{cite}
  \def\LaomianBibliography#1{%
    \bibliographystyle{splncs04}%
    \laomian@tableofcontents@bib@begin
    \bibliography{#1}%
    \laomian@tableofcontents@bib@end
  }
\else
  \long\def\BibAlphaNumeric#1#2{#1}
  \RequirePackage[noadjust,nomove,nosort,nocompress]{cite}
  \def\LaomianBibliography#1{%
    \bibliographystyle{alpha}%
    \laomian@tableofcontents@bib@begin
    \bibliography{#1}%
    \laomian@tableofcontents@bib@end
  }
\fi
% LNCS detects whether "hyperref" is loaded
% in \AtBeginDocument and overwrites \doi if so.
% We overwrite \doi again using our version.
\AtBeginDocument{\def\doi#1{\url{https://doi.org/#1}}}
\mathchardef\citeprepenalty=0\relax
\def\citeleft{[}
\def\citeright{]}
\def\citepunct{,\hspace{0pt}}
\def\citedash{--\penalty10000\relax}
\def\citemid{; }

\DeclareRobustCommand\citenolink{%
  \@ifnextchar[\laomian@citenolink@a\laomian@citenolink@b
}
\def\laomian@citenolink@a[#1]#2{%
  \begingroup{\NoHyper\cite[#1]{#2}\endNoHyper}\endgroup
}
\def\laomian@citenolink@b#1{%
  \begingroup{\NoHyper\cite{#1}\endNoHyper}\endgroup
}

% -------------------- bibliography   ends --------------------

% -------------------- supplementary materials begin --------------------

\if@laomian@supplementarymaterials
  \def\LaomianAppendix{%
    \newpage
    % The document must be in LNCS mode, so the following line is unnecessary.
    % \laomian@tableofcontents@appendix
    \begin{center}\huge\bfseries Supplementary Materials\end{center}%
    \appendix
  }
\else
  \def\LaomianAppendix{%
    \newpage
    \laomian@tableofcontents@appendix
    \appendix
  }
\fi

% -------------------- supplementary materials   end --------------------

% -------------------- page limits begin --------------------

\if@laomian@pagelimits
  \long\def\PageLimitsNoLimits#1#2{#1}
\else
  \long\def\PageLimitsNoLimits#1#2{#2}
\fi

% -------------------- page limits   end --------------------

% -------------------- links begin --------------------

% URL color covers everything outside the PDF.
\if@laomian@colorfullinks
  \definecolor{laomianlink}{rgb}{0.8,0,0}
  \definecolor{laomiancite}{rgb}{0,0,0.6}
  \definecolor{laomianurl}{rgb}{0,0.3,0.8}
\else
  \definecolor{laomianlink}{rgb}{0,0,1}
  \definecolor{laomiancite}{rgb}{0,0,1}
  \definecolor{laomianurl}{rgb}{0,0,1}
\fi
\RequirePackage[
  colorlinks=true,
  linkcolor=laomianlink,
  % anchorcolor=,
  citecolor=laomiancite,
  filecolor=laomianurl,
  menucolor=laomianurl,
  runcolor=laomianurl,
  urlcolor=laomianurl
]{hyperref}
\RequirePackage{orcidlink}

% -------------------- links   end --------------------

% -------------------- PDF metadata begin --------------------

\if@laomian@pdfmetadata
  \def\titlepdf#1{\hypersetup{pdftitle={#1}}}
  \def\authorpdf#1{\hypersetup{pdfauthor={#1}}}
  \def\keywordspdf#1{\hypersetup{pdfkeywords={#1}}}
  \def\subjectpdf#1{\hypersetup{pdfsubject={#1}}}
\else
  % Make these control sequences do nothing.
  \let\titlepdf\laomian@eatoneargument
  \let\authorpdf\laomian@eatoneargument
  \let\keywordspdf\laomian@eatoneargument
  \let\subjectpdf\laomian@eatoneargument
\fi

% -------------------- PDF metadata   end --------------------

% -------------------- theorems begin --------------------

\def\thmhead@plain#1#2#3{%
  \thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\relax{#2}}%
  \thmnote{ {\the\thm@notefont(#3)}}%
}
\let\thmhead\thmhead@plain

% Undefine these theorem environments as well as the counters.
% They are redefined later.
\def\laomian@undefine@theorem#1{%
  \expandafter\let\csname #1\endcsname\laomian@undefined
  \expandafter\let\csname end#1\endcsname\laomian@undefined
  \expandafter\let\csname c@#1\endcsname\laomian@undefined
}

\laomian@undefine@theorem{assumption}
\laomian@undefine@theorem{claim}
\laomian@undefine@theorem{conjecture}
\laomian@undefine@theorem{construction}
\laomian@undefine@theorem{corollary}
\laomian@undefine@theorem{definition}
\laomian@undefine@theorem{lemma}
\laomian@undefine@theorem{proof}
\laomian@undefine@theorem{proposition}
\laomian@undefine@theorem{question}
\laomian@undefine@theorem{remark}
\laomian@undefine@theorem{theorem}

% Undefine these theorem environments but keep the counters.
% They are not redefined later.
% Their counters are reset by LNCS and must not be undefined.
\def\laomian@undefine@theorem#1{%
  \expandafter\let\csname #1\endcsname\laomian@undefined
  \expandafter\let\csname end#1\endcsname\laomian@undefined
}

\laomian@undefine@theorem{case}
\laomian@undefine@theorem{example}
\laomian@undefine@theorem{exercise}
\laomian@undefine@theorem{note}
\laomian@undefine@theorem{problem}
\laomian@undefine@theorem{property}
\laomian@undefine@theorem{solution}

\let\laomian@undefine@theorem\laomian@undefined

% Modified from amsthm.sty:
\def\th@remark{%
  \thm@headfont{\itshape}%
  \normalfont % body font
  % Use normal spacing.
  % \thm@preskip\topsep \divide\thm@preskip\tw@
  % \thm@postskip\thm@preskip
}

\theoremstyle{remark}
\newtheorem{remark}{Remark}
\newtheorem*{remarks}{Remarks}

\newtheorem*{laomian@proof}{Proof}
\def\proof{\begingroup\pushQED{\qed}\begin{laomian@proof}}
\def\endproof{\popQED\end{laomian@proof}\endgroup}

\if@laomian@base@lncs
  \theoremstyle{plain}
\else
  \theoremstyle{definition}
\fi
\newtheorem{definition}{Definition}
\newtheorem{question}{Question}

\theoremstyle{plain}
\newtheorem{conjecture}{Conjecture}
\newtheorem{corollary}{Corollary}
\newtheorem{claim}{Claim}
\newtheorem{lemma}{Lemma}
\newtheorem{proposition}{Proposition}
\newtheorem{theorem}{Theorem}

% Make these theorem environments share the same counter.
\let\c@corollary\c@theorem
\let\c@claim\c@theorem
\let\c@lemma\c@theorem
\let\c@proposition\c@theorem

\newtheorem*{laomian@restated}{\laomian@restated@name}
\def\restated#1{%
  \begingroup
  \def\laomian@restated@name{#1}%
  \begin{laomian@restated}%
}
\def\endrestated{%
  \end{laomian@restated}%
  \endgroup
}

\theoremstyle{definition}
\newtheorem{assumption}{Assumption}
\newtheorem{construction}{Construction}

% -------------------- theorems   end --------------------

% -------------------- mathematics begin --------------------

% Greek letters (make uppercase letters and \omicron upright).
\DeclareMathSymbol{\Alpha}{\mathalpha}{operators}{"41}
\DeclareMathSymbol{\Beta}{\mathalpha}{operators}{"42}
\DeclareMathSymbol{\Gamma}{\mathalpha}{operators}{0}
\DeclareMathSymbol{\Delta}{\mathalpha}{operators}{1}
\DeclareMathSymbol{\Epsilon}{\mathalpha}{operators}{"45}
\DeclareMathSymbol{\Zeta}{\mathalpha}{operators}{"5A}
\DeclareMathSymbol{\Eta}{\mathalpha}{operators}{"48}
\DeclareMathSymbol{\Theta}{\mathalpha}{operators}{2}
\DeclareMathSymbol{\Iota}{\mathalpha}{operators}{"49}
\DeclareMathSymbol{\Kappa}{\mathalpha}{operators}{"4B}
\DeclareMathSymbol{\Lambda}{\mathalpha}{operators}{3}
\DeclareMathSymbol{\Mu}{\mathalpha}{operators}{"4D}
\DeclareMathSymbol{\Nu}{\mathalpha}{operators}{"4E}
\DeclareMathSymbol{\Xi}{\mathalpha}{operators}{4}
\DeclareMathSymbol{\Omicron}{\mathalpha}{operators}{"4F}
\DeclareMathSymbol{\Pi}{\mathalpha}{operators}{5}
\DeclareMathSymbol{\Rho}{\mathalpha}{operators}{"50}
\DeclareMathSymbol{\Sigma}{\mathalpha}{operators}{6}
\DeclareMathSymbol{\Tau}{\mathalpha}{operators}{"54}
\DeclareMathSymbol{\Upsilon}{\mathalpha}{operators}{7}
\DeclareMathSymbol{\Phi}{\mathalpha}{operators}{8}
\DeclareMathSymbol{\Chi}{\mathalpha}{operators}{"58}
\DeclareMathSymbol{\Psi}{\mathalpha}{operators}{9}
\DeclareMathSymbol{\Omega}{\mathalpha}{operators}{10}
\DeclareMathSymbol{\omicron}{\mathalpha}{letters}{"6F}

% \epsilon, \phi, \emptyset are handled by \laomian@maths@fonts.

% Asymptotics.
\def\bigO{\operatorname{O}}
\def\smallo{\operatorname{o}}
\def\bigTheta{\operatorname{\Theta}}
\def\bigOmega{\operatorname{\Omega}}
% \smallomega is handled by \laomian@maths@fonts.

\def\cbrt{\sqrt[3]}
\def\laomian@vec@bf#1{\boldsymbol{\mathbf{#1}}}
\def\laomian@vec@itbf#1{\boldsymbol{#1}}
\if@laomian@vecisitbf
  \let\laomian@vec@vec\laomian@vec@itbf
\else
  \let\laomian@vec@vec\laomian@vec@bf
\fi
% \vec, \1 are handled by \laomian@maths@fonts.

\def\esssup{\operatornamewithlimits{ess\,sup}}
\def\essinf{\operatornamewithlimits{ess\,inf}}
\def\EX{\operatornamewithlimits{\mathbb{E}}}
\def\Var{\operatorname{Var}}
\def\supp{\operatorname{supp}}

\def\approxS{\approx_{\textup{s}}}
\def\approxC{\approx_{\phantom{\textup{s}}}}
\def\equivS{\equiv_{\phantom{\textup{s}}}}
\def\iseq{\overset{?}{=}}
\def\defeq{\overset{\mathsmaller{\textup{def}}}{=\joinrel=}}
\def\draws{\overset{\smash{\:_\$}\vphantom{{}_0}}{\leftarrow}}
\def\poly{\operatorname{poly}}
\def\negl{\operatorname{negl}}
\DeclareMathSymbol{\laomian@concat@base}{\mathbin}{symbols}{"6B}
\def\concat{\mathbin{%
  \mathchoice{\mskip-\thinmuskip}{\mskip-\thinmuskip}{}{}%
  \laomian@concat@base
  \mathchoice{\mskip-\thinmuskip}{\mskip-\thinmuskip}{}{}%
}}
\def\transpose{{\mathsmaller{\mathsf{T}}}}
\def\bit{{\{0,1\}}}
\let\laomian@bak@bot\bot
\def\bot{{\laomian@bak@bot}}

% Define shortcuts from Office Equation Editors:
%     \mathbb   => \double
%     \mathcal  => \script
%     \mathscr  => \cursive
%     \mathfrak => \fraktur
\def\laomian@def@officeshortcuts#1#2#3{%
  \expandafter\def\csname #1#3\endcsname{{#2{#3}}}%
  \@ifstar\relax{\laomian@def@officeshortcuts{#1}#2}%
}
\laomian@def@officeshortcuts{double}\mathbb ABCDEFGHIJKLMNOPQRSTUVWXYZ*
\laomian@def@officeshortcuts{script}\mathcal ABCDEFGHIJKLMNOPQRSTUVWXYZ*
\laomian@def@officeshortcuts{cursive}\mathscr ABCDEFGHIJKLMNOPQRSTUVWXYZ*
\laomian@def@officeshortcuts{fraktur}\mathfrak
  AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz*
\let\laomian@def@officeshortcuts\laomian@undefined

% These are applied when the fonts have been selected.
\def\laomian@maths@fonts\smallomega=#1\1=#2{%
  % Use the beautiful version of epsilon, phi, emptyset.
  \let\dumbepsilon\epsilon
  \let\dumbphi\phi
  \let\dumbemptyset\emptyset
  \let\epsilon\varepsilon
  \let\phi\varphi
  \let\emptyset\varnothing
  \def\smallomega{\operatorname{#1}}%
  \let\vec\laomian@vec@vec
  \def\1{{#2{1}}}%
  % Prevent the font settings from being applied twice.
  \let\laomian@maths@fonts\laomian@undefined
}

% -------------------- mathematics   end --------------------

% -------------------- fonts begin --------------------

\if@laomian@fonts@source
  \RequirePackage[
    default,lining,
    semibold,regular,
    scaled=0.9
  ]{sourcecodepro}
  \RequirePackage[
    default,lining,proportional,
    semibold,regular
  ]{sourcesanspro}
  \RequirePackage[
    default,lining,proportional,
    bold,regular
  ]{sourceserifpro}
  \RequirePackage[
    smallerops,varvw,varg,ncf,varbb,cmbraces,bigdelims,
    nonewtxmathopt,subscriptcorrection
  ]{newtxmath}
  \RequirePackage[cal=cm]{mathalfa}
  % Adjust inter-word spacing for Source Serif Pro.
  \AtBeginDocument{%
    \relax\spaceskip=1.28\fontdimen2\font
      plus 1.2\fontdimen3\font
      minus 1\fontdimen4\font
    \relax
    \pretolerance=2800\relax
    \tolerance=5000\relax
  }
  % Adjust underline thickness to match Source Serif Pro.
  \def\ULthickness{0.1ex}
  % Adjust mathematical fonts.
  \laomian@maths@fonts
    \smallomega=\upomega
    \1=\mathds
\else\if@laomian@fonts@times
  \RequirePackage{newtxtext}
  \RequirePackage[
    smallerops,varvw,varg,ncf,varbb,cmbraces,bigdelims,
    nonewtxmathopt,subscriptcorrection
  ]{newtxmath}
  \RequirePackage[cal=cm]{mathalfa}
  % Adjust underline thickness to match Times.
  \def\ULthickness{0.1ex}
  % Adjust mathematical fonts.
  \laomian@maths@fonts
    \smallomega=\upomega
    \1=\mathds
\else\if@laomian@fonts@palatino
  \RequirePackage{newpxtext}
  \RequirePackage[
    smallerops,varg,varbb,cmbraces,bigdelims,
    subscriptcorrection
  ]{newpxmath}
  \RequirePackage[cal=pxtx]{mathalfa}
  % Adjust underline thickness to match Palatino.
  \def\ULthickness{0.1ex}
  % Adjust mathematical fonts.
  \laomian@maths@fonts
    \smallomega=\upomega
    \1=\mathds
\else\if@laomian@fonts@libertine
  \RequirePackage[tt=false]{libertine}
  \RequirePackage[
    libertine,
    smallerops,varvw,varg,ncf,varbb,cmbraces,bigdelims,
    nonewtxmathopt,subscriptcorrection
  ]{newtxmath}
  \RequirePackage[cal=cm]{mathalfa}
  % Adjust underline thickness to match Libertine.
  \def\ULthickness{0.1ex}
  % Adjust mathematical fonts.
  \laomian@maths@fonts
    \smallomega=\upomega
    \1=\mathds
\else\if@laomian@fonts@utopia
  \RequirePackage{fourier}
  \RequirePackage[cal=euler]{mathalfa}
  % Adjust underline thickness to match Utopia.
  \def\ULthickness{0.1ex}
  % Adjust mathematical fonts.
  \laomian@maths@fonts
    \smallomega=\otheromega
    \1=\mathbb
\else
  % Adjust mathematical fonts for Computer Modern.
  \laomian@maths@fonts
    \smallomega=\omega
    \1=\mathbbm
  % \smallomega should be non-italicized, but
  % I don't know a satisfactory solution for typesetting
  % upright lowercase Greek letters in Computer Modern.
\fi\fi\fi\fi\fi

% -------------------- fonts end --------------------

% -------------------- underlines begin --------------------

\DeclareRobustCommand*\dumbunderline[1]{\uline{#1}}
\DeclareRobustCommand*\smartunderline[1]{%
  \begingroup
  \setlength{\ULdepth}{0.45ex}%
  \contourlength{0.32ex}%
  \uline{\phantom{\contour{white}{#1}}}%
  \llap{\contour{white}{#1}}%
  \endgroup
}
\if@laomian@smartunderlines
  \let\underlined\smartunderline
\else
  \let\underlined\dumbunderline
\fi

% -------------------- underlines   end --------------------

% -------------------- compatibilities begin --------------------

% Provides compatibility with the 2022 version.
\def\LaomianTwentyTwentyTwo{%
  \let\LaomianTwentyTwentyTwo\relax
  % Define non-\long versions of conditionals.
  \def\widenarrow##1##2{\WideNarrow{##1}{##2}}
  \def\pagelimitsnolimits##1##2{\PageLimitsNoLimits{##1}{##2}}
  \def\bibalphanumeric##1##2{\BibAlphaNumeric{##1}{##2}}
  % Define structural control sequences:
  %     \IACRCopyright, \TypesetTableOfContents,
  %     \TypesetAcknowledgement, \TypesetBibliography,
  %     \TypesetAppendix.
  % Also, make \LaomianAcknowledgments work with both file names.
  \let\IACRCopyright\LaomianIacrCopyright
  \let\TypesetTableOfContents\LaomianBody
  \if@laomian@anonymous
  \else
    \def\LaomianAcknowledgments{%
      \IfFileExists{./acknowledgments.tex}%
        {\input{acknowledgments}}%
        {\input{acknowledgement}}%
    }%
  \fi
  \let\TypesetAcknowledgement\LaomianAcknowledgments
  \let\TypesetBibliography\LaomianBibliography
  \let\TypesetAppendix\LaomianAppendix
  % Define other control sequences.
  \let\clearfloats\ClearFloats
  \def\ul##1{\underlined{##1}}%
  \def\dashboxed##1{\dbox{\ensuremath{\displaystyle##1}}}%
  \definecolor{laomianlightgray}{RGB}{200,200,200}%
  \def\grayboxed##1{%
    \fcolorbox
      {laomianlightgray}
      {laomianlightgray}
      {\ensuremath{\displaystyle ##1}}%
  }%
  % Make \var... the dumb version.
  \let\varphi\dumbphi
  \let\varepsilon\dumbepsilon
  % Define these non-existent control sequences.
  \let\varemptyset\varnothing
  \let\nothing\varnothing
  % Undo the improved spacing adjustments.
  \def\concat{{\parallel}}
  \let\bot\laomian@bak@bot
  % Automatically date the document.
  \if@laomian@base@lncs\else\AtBeginDocument{\DateTodayMonthYear}\fi
  % Define the "security" environment.
  \def\security{\begin{itemize}\upshape}
  \def\endsecurity{\end{itemize}}
  \def\phase##1{\item{\bfseries\upshape ##1.}}
}
\AtBeginDocument{\def\LaomianTwentyTwentyTwo{%
  \ClassError
    {crypto-paper}
    {"\protect\LaomianTwentyTwentyTwo" cannot be used after
      "\protect\begin\protect{document\protect}"}
    {Move "\protect\LaomianTwentyTwentyTwo" into the preamble.}%
}}

% -------------------- compatibilities   end --------------------

\if@laomian@base@lncs
  % Redefine \UrlFont after the packages might have messed with it.
  \def\UrlFont{\rmfamily}
\else
  % Reset URL breaking after the packages might have messed with it.
  \def\UrlBreaks{%
    \do\A\do\a\do\B\do\b\do\C\do\c\do\D\do\d\do\E\do\e\do\F\do\f\do\G\do\g
    \do\H\do\h\do\I\do\i\do\J\do\j\do\K\do\k\do\L\do\l\do\M\do\m\do\N\do\n
    \do\O\do\o\do\P\do\p\do\Q\do\q\do\R\do\r\do\S\do\s\do\T\do\t
    \do\U\do\u\do\V\do\v\do\W\do\w\do\X\do\x\do\Y\do\y\do\Z\do\z
    \do\0\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9%
  }
  \def\UrlBigBreaks{%
    \do\,\do\.\do\?\do\!\do\:\do\;\do\'\do\"%
    \do\[\do\]\do\{\do\}\do\(\do\)\do\<\do\>%
    \do\/\do\|\do\\%
    \do\`\do\@\do\#\do\$\do\^\do\&\do\*\do\_\do\=\do+%
    % I have no idea how to handle "~", so I am not touching it.
    % "%" is handled by UrlSpecials.
    % "-" is handled by not putting it anywhere.
  }
  % By not putting "-" anywhere,
  % a break is allowed before it but not after it.
  \def\UrlNoBreaks{}
\fi
