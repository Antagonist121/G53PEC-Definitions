\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DefinitionFormat}[]

\LoadClass{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Width of each page defined here:
\usepackage[left=1.3in, right=1.3in, bottom=1.3in, top=1.3in]{geometry}
\usepackage{framed}
\usepackage{parskip}

% Constants:
\newcommand{\definitionContentWidth}{0.80\textwidth}	% Width of minipage used in definition environment
\newcommand{\definitionIndentSize}{0.1\textwidth}		% Indent of minipage used in definition environment
\newcommand{\paragraphspacing}{\parskip=7pt}
\newcommand{\paragraphindent}{\parindent=0pt}

% Commands:
\newenvironment{summary}
	{
		\vspace{2pt}
		\def\FrameCommand{\hspace{0pt} \vrule width 1pt \hspace{5pt}}%
		\MakeFramed {\advance\hsize-\width \FrameRestore}
		\itshape
	}
	% Content from environment goes here
	{
		\endMakeFramed
		\vspace{2pt}
	}

% Definition environment:
% Argument #1 is the definition name.
\newenvironment{definition}[1]
	{
		\subsection*{#1}
		\hspace{\definitionIndentSize}\begin{minipage}{\definitionContentWidth}
			\paragraphspacing
			\paragraphindent
	}
	% Content from environment goes here
	{
		\end{minipage}
	}