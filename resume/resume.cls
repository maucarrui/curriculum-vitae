% Current Tex Version.
\NeedsTeXFormat{LaTeX2e}

% Specify hyphenation.
\hyphenation{con-sti-tu-tion-al}

% Class definition.
\ProvidesClass{resume}[Custom resume class]

% Load the styles already defined in the article class.
\LoadClass{article}

% No enumeration on pages.
\pagenumbering{gobble}

% Hyperlinks.
%   hidelinks     -- hide the boxes around the hyperlinks.
%   hypertexnames -- avoid duplicated identifiers.
\RequirePackage[hidelinks, hypertexnames=false]{hyperref}

% Modify header styles.
\RequirePackage{titlesec}

% Spanish-specific commands
\RequirePackage[spanish]{babel}

% Parallel columns.
\RequirePackage{paracol}

% Font-Awesome Icons.
\RequirePackage{fontawesome}

% Colors.
%   dvipsnames -- Loads 68 named colors.
\RequirePackage[dvipsnames]{xcolor}

% Page layout
\RequirePackage{geometry}
\geometry{
  a4paper,
  left=10mm,
  right=10mm,
  bottom=10mm,
  top=10mm}

% Size of the boxes used to align text
\newlength{\spacebox}
\settowidth{\spacebox}{123456789}

% Line between text.
\newcommand*\ruleline[1]{%
  \par\noindent\raisebox{.8ex}{%
    \makebox[\linewidth]{%
      \hrulefill
      \hspace{1ex}
      \raisebox{-.8ex}{#1}
      \hspace{1ex}
      \hrulefill
}}}

% Section style.
\titleformat{\section}          % Customise the \section command.
  {\bfseries\Large\raggedright} % Make the \section headers very large (\Large),
                                % in bold font, and left aligned (\raggedright).
  {}{0em}                       % Prefix to all sections.
  {}                            % Insert code before the headings.
  [\titlerule]                  % Insert horizontal line after the heading.

% Subsection style.
\titleformat{\subsection} % Customise the \subsection command.
  {\raggedright}          % Make the \subsection headers left aligned
                          % (\raggedright).
  {}{0em}                 % Prefix to all subsections.
  {}                      % Insert code before the headings.

% Define a name section.
\newcommand{\name}[1]{%
  \centerline{\Huge{\textbf{#1}}}
}

% Define a contact section. (Location, Number, Email)
\newcommand{\contactPersonal}[3]{%
  \centerline{%
    \makebox[0pt][c]{%
      #1 {\large\textperiodcentered} %
      #2 {\large\textperiodcentered} %
      #3 %
    }%
  }%
}

\newcommand{\contactSocial}[2]{%
  \centerline{%
    \makebox[0pt][c]{%
      #1 {\large\textperiodcentered} %
      #2 %
    }%
  }%
}

% Define a dated subsection.
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\textbf{#1} \hfill #2}%
}

\newcommand{\timeline}[1]{%
  \ruleline{\textbf{#1}}%
  \vspace{0.4em}
}

% Define an experience subsection.
\newcommand{\experiencesubsection}[3]{%
  \noindent%
  \textbf{#1}%
  \newline%
  #2%
  \newline%
  #3%
}

% Define an experience command.
\newcommand{\experience}[4]{%
  \experiencesubsection{#1}{#2}{#3}
  #4
  \vspace{0.3em}
}

% Define a project command.
\newcommand{\project}[3]{%
  \noindent%
  \textbf{#1}%
  \newline%
  #2
  #3
}

% Macro for the bold font text command.
\newcommand{\tbf}[1]{\textbf{#1}}

% Macro for the italic font text command.
\newcommand{\tit}[1]{\textit{#1}}
