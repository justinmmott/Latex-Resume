\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jm_resume}[2020/08/23]

% Font size global
\newcommand{\@fontSize}{10pt} 

\LoadClass[\@fontSize]{article}
\RequirePackage{titlesec, graphicx, tikz, enumitem}

% Basically use up the entire page
\pagenumbering{gobble}
\topmargin=-.65in 
\oddsidemargin=-.5in 
\evensidemargin=0in 
\textwidth=7.5in 
\marginparwidth=0.5in
\headheight=0pt
\headsep=0pt
\textheight=11in

%Basic Info
\newcommand{\userinfo}[3]{
  \begin{center}
    {\bf \huge #1}\\
    #2 | #3\\
  \end{center}
}

%Basic info with the addition of Github and LinkedIn usernames
\newcommand{\userinfogithublinkedin}[5]{
  \begin{center}
    {\bf \huge #1}\\
    #2 | #3\\
    \includegraphics[trim=0 5.5cm 0 0, height=\@fontSize]{Images/GitHub-Mark.png} /#4 | 
    \includegraphics[trim=0 5.5cm 0 0, height=\@fontSize]{Images/LinkedIn-Logo.png} /#5
  \end{center}
}

% --- Section --- %

\titlespacing*{\section}{0pt}{4pt}{6pt}

\titleformat{\section}            % Customise the \section command 
  {\bf\Large\scshape\raggedright} % Make the \section headers large (\Large),
                                  % small capitals (\scshape) and left aligned (\raggedright)
  {}                              % Applied to the entire section
  {0em}                           % Can be used to give a prefix to all sections, like 'Section ...'
  {}                              % Can be used to insert code before the heading
  [                               % Inserts a horizontal line after the heading
    \vspace{-3pt}
    \titlerule
  ]    

\newcommand{\datedsection}[2]{    % Add date to section 
  \section[#1]{#1 \hfill #2}
}  

% --- Subsection --- %

\titlespacing*{\subsection}{0pt}{0pt}{0pt}

\titleformat{\subsection}          % Customise the \subsection command 
  {\bf\large\scshape\raggedright}
  {}
  {1em}
  {}
 
\newcommand{\datedsubsection}[2]{   % Add date to subsection
  \subsection[#1]{#1 \hfill #2}
}

\newcommand{\bulletedsubsections}[1]{ 
  \begin{itemize}[noitemsep, topsep=-3pt, leftmargin=2em, rightmargin=4em]
    \foreach \x in {#1} {
        \item \x
    }
  \end{itemize}
}
 
% --- Subsubsection --- % 
 
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}

\titleformat{\subsubsection}        % Customise the \subsubsection command 
  {\raggedright}
  {}
  {3em}
  {}

\newcommand{\bulletedsubsubsections}[1]{   % Add date to subsection
  \begin{itemize}[noitemsep, topsep=-3pt, leftmargin=5em, rightmargin=2em]
    \foreach \x in {#1} {
        \item \x
    }
  \end{itemize}
}
