% Current Tex Version.
\NeedsTeXFormat{LaTeX2e}

% Class definition.
\ProvidesClass{curriculum-vitae}[Custom curriculum vitae class]

% Load the styles already defined in the article class.
\LoadClass{article}

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
  left=20mm,
  right=20mm,
  %bottom=
  top=15mm}

% Size of the boxes used to align text
\newlength{\spacebox}
\settowidth{\spacebox}{123456789}

% Section style.
\titleformat{\section}          % Customise the \section command.
  {\bfseries\Large\raggedright} % Make the \section headers very large (\Large),
                                % in bold font, and left aligned (\raggedright).
  {}{0em}                       % Prefix to all sections.
  {}                            % Insert code before the headings.
  [\titlerule]                  % Insert horizontal line after the heading.

% Subsection style.
\titleformat{\subsection} % Customise the \subsection command.
  {\large\raggedright}    % Make the \subsection headers large (\large),
                          % and left aligned (\raggedright).
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

% Define a dated section.
\newcommand{\datedsection}[2]{%
  \section[#1]{\textbf{#1} \hfill #2}%
}

% Define a dated subsection.
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\textbf{#1} \hfill #2}
}

% Define a experience macro.
\newcommand{\experiencesubsection}[3]{%
  \datedsubsection{#1}{#2}
  \subsection{#3}
}

% Define a skill macro.
\newcommand{\skill}[2]{
  \columnratio{0.3}
  \begin{paracol}{2}
    \noindent\hangindent=1em\hangafter=0
    % Set specific indentation for personal information.
    #1 % Skill name.
    
    \switchcolumn
    \noindent
    #2 % Brief description of the skill.
  \end{paracol}
}

\newcommand{\course}[3]{
  \columnratio{0.215}
  \begin{paracol}{2}
    \noindent\hangindent=2em\hangafter=0
    % Set specific indentation for personal information.
    #1 % Course name.
    
    \switchcolumn
    \noindent
    #2 % Semesters.
    \newline
    #3 % Brief description of the course.
  \end{paracol}
}

% Define a language macro.
\newcommand{\lan}[2]{
  \columnratio{0.150}
  \begin{paracol}{2}
    \noindent\hangindent=1em\hangafter=0
    % Set specific indentation for personal information.
    \textsl{#1} % Skill name.
    
    \switchcolumn
    \noindent
    #2 % Brief description of the skill.
  \end{paracol}
}

% Macro for the bold font text command.
\newcommand{\tbf}[1]{\textbf{#1}}

% Macro for the italic font text command.
\newcommand{\tit}[1]{\textit{#1}}
