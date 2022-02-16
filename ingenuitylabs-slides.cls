% INGENUITYLABS-SLIDES: Beamer class with Ingenuity Labs styling
% Copyright (c) 2022, Joshua A. Marshall <joshua.marshall@queensu.ca>

\LoadClass[aspectratio=169,12pt]{beamer}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ingenuitylabs-slides}[2022/01/19 INGENUITYLABS-SLIDES class by Joshua A. Marshall]

% Inner theme changes
\useinnertheme{rectangles}
\usefonttheme{structurebold}

% For font changes
\RequirePackage{fontspec}
\RequirePackage{mathpazo}
\setmainfont[Mapping=tex-text]{Palatino}
\setsansfont[Mapping=tex-text]{Myriad Pro}
\usefonttheme[onlymath]{serif}

% For code
\RequirePackage{minted}
\setminted[python]{linenos=true}
\setminted[cpp]{linenos=true}
\renewcommand\theFancyVerbLine{\sffamily\scriptsize\arabic{FancyVerbLine}}

% For math stuff
\RequirePackage{amsmath,amsfonts,amssymb,bm}

% For colours
\RequirePackage{color}

% For graphics
\RequirePackage{graphicx}

% For background wallpaper
\RequirePackage{wallpaper}

% For better tables
\RequirePackage{booktabs}

% For nice line spacing
\linespread{1.05}

% Set up Queen's colours as per the official Queen's Visual Identity Guide
% For more information visit: http://www.queensu.ca/identity

% Pantone 295
\definecolor{qblue}{RGB}{17,51,93}

% Pantone 187
\definecolor{qred}{RGB}{157,25,57}

% Pantone 124
\definecolor{qgold}{RGB}{238,189,49}

% Pantone Cool Gray 11 (goes with red dominant themes)
\definecolor{qcgray}{RGB}{104,99,102}

% Pantone Warm Gray 9 (goes with blue dominant themes)
\definecolor{qwgray}{RGB}{140,125,112}

% Gets rid of navigation symbols
\setbeamertemplate{navigation symbols}{}

% For hyperlink stuff
\RequirePackage{hyperref}

% For verbatim
\RequirePackage{verbatim}

% Beamer theme
% \usetheme[right]{Berkeley}
\usetheme{default}

% Presentation mode
\mode<presentation>

% Change the default font sizes and emphasis to fit the theme
\setbeamerfont{title}{size=\huge, series=\bfseries}
\setbeamerfont{subtitle}{size=\Large, series=\bfseries}
\setbeamerfont{author}{size=\large, series=\mdseries}
\setbeamerfont{institute}{size=\footnotesize, series=\mdseries}
\setbeamerfont{date}{size=\small, series=\mdseries}
\setbeamerfont{caption}{size=\scriptsize}
\setbeamerfont{frametitle}{size=\Large, series=\bfseries}
\setbeamerfont{footline}{size=\tiny, series=\mdseries}

% Change default colours to fit our theme and for use with light backgrounds
\newcommand{\DefaultColours}{
    \setbeamercolor{normal text}{fg=qblue}
    \usebeamercolor[fg]{normal text}
    \setbeamercolor{title}{fg=qblue}
    \setbeamercolor{author}{fg=qblue}
    \setbeamercolor{institute}{fg=qblue}
    \setbeamercolor{date}{fg=qblue}
    \setbeamercolor{frametitle}{fg=qblue}
    \setbeamercolor{structure}{fg=qblue}
    \setbeamercolor{local structure}{fg=qblue}
    \setbeamercolor{author in sidebar}{fg=qblue}
    \setbeamercolor{title in sidebar}{fg=qblue}
    \setbeamercolor{footline}{fg=qblue}
    \setbeamercolor{enumerate item}{fg=qcgray}
    \setbeamercolor{block title alerted}{bg=qred,fg=white}
    \setbeamercolor{block body alerted}{bg=qblue!10}
    \setbeamercolor{block title}{bg=qblue,fg=white}
    \setbeamercolor{block body}{bg=qblue!10}
    \setbeamercolor{background block}{bg=qblue!15}
    \setbeamercolor{background canvas}{bg=white}
}

% Change the default colours to be white for use with dark backgrounds
\newcommand{\WhiteColours}{
    \setbeamercolor{normal text}{fg=white}
    \usebeamercolor[fg]{normal text}
    \setbeamercolor{title}{fg=white}
    \setbeamercolor{author}{fg=white}
    \setbeamercolor{institute}{fg=white}
    \setbeamercolor{date}{fg=white}
    \setbeamercolor{frametitle}{fg=white}
    \setbeamercolor{structure}{fg=white}
    \setbeamercolor{local structure}{fg=white}
    \setbeamercolor{author in sidebar}{fg=white}
    \setbeamercolor{title in sidebar}{fg=white}
    \setbeamercolor{footline}{fg=white}
    \setbeamercolor{enumerate item}{fg=white}
    \setbeamercolor{block title alerted}{bg=black!85,fg=white}
    \setbeamercolor{block body alerted}{bg=black!75}
    \setbeamercolor{block title}{bg=black!75,fg=white}
    \setbeamercolor{block body}{bg=black!85}
    \setbeamercolor{background block}{bg=black!75}
}

% Set some other template options
\setbeamercovered{transparent}
\setbeamertemplate{caption}[caption name own line]
\setbeamertemplate{sidebar canvas right}[vertical shading][bottom=white,top=qcgray!20]
\setbeamertemplate{footline}{
    \usebeamerfont{footline}
    \hfill
    \insertframenumber~of~\inserttotalframenumber
    \hspace{8pt}
    \vspace{8pt}
}
\setbeamertemplate{frametitle}{
    \usebeamerfont{frametitle}
    \vspace{22pt}
    \insertframetitle
}

% Configure theme "SlideThemeWhiteA"
\newcommand{\SlideThemeWhiteA}{
    % Set the background image
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{figs/slide-theme-white-A.pdf}
        }
    % Set the colours
    \DefaultColours
}

% Configure theme "SlideThemeWhiteB"
\newcommand{\SlideThemeWhiteB}{
    % Set the background image
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{figs/slide-theme-white-B.pdf}
        }
    % Set the colours
    \DefaultColours
}

% Configure theme "SlideThemeColourful"
\newcommand{\SlideThemeColourful}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{figs/slide-theme-colourful.pdf}
    }
    % Set the colours
    \DefaultColours
}

% Configure theme "SlideThemeRed"
\newcommand{\SlideThemeRed}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{figs/slide-theme-red.pdf}
    }
    % Set the colours
    \WhiteColours    
}

% Configure theme "SlideThemeBlue"
\newcommand{\SlideThemeBlue}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{figs/slide-theme-blue.pdf}
    }
    % Set the colours
    \WhiteColours    
}

% Configure theme "SlideThemeGold"
\newcommand{\SlideThemeGold}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{figs/slide-theme-gold.pdf}
    }
    % Set the colours
    \WhiteColours    
}

% Configure theme "SlideWhite"
\newcommand{\SlideWhite}{
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=white}
    % Set the colours
    \DefaultColours
}

% Configure theme "SlideBlack"
\newcommand{\SlideBlack}{
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=black}  
    % Set the colours
    \WhiteColours
}

% Configure theme "SlideBlue"
\newcommand{\SlideBlue}{
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=qblue}
    % Set the colours
    \WhiteColours    
}

% Configure theme "SlideRed"
\newcommand{\SlideRed}{
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=qred}
    % Set the colours
    \WhiteColours    
}

% Let's update the title page to match the Ingenuity Labs theme
\setbeamertemplate{title page}{
    \begin{beamercolorbox}[]{title}
        \begin{flushleft}
            \vspace{50pt}
            \usebeamerfont{title}
            \inserttitle
            \usebeamerfont{subtitle} \\
            \insertsubtitle \\
            \vspace{12pt}
            \usebeamerfont{author}
            \insertauthor \\
            \vspace{12pt}
            \usebeamerfont{institute}
            \insertinstitute \\
            \vspace{12pt}
            \usebeamerfont{date}
            \insertdate
        \end{flushleft}
    \end{beamercolorbox}
}

% Some handy commands
\newcommand{\norm}[1]{\left\Vert#1\right\Vert}
\newcommand{\abs}[1]{\left\vert#1\right\vert}
\newcommand{\set}[1]{\left\{#1\right\}}
\newcommand{\Real}{\mathbb R}
\newcommand{\Complex}{\mathbb C}
\newcommand{\eps}{\varepsilon}
\newcommand{\To}{\longrightarrow}
\newcommand{\Ker}{\textup{Ker}}
\newcommand{\Img}{\textup{Img}}
\newcommand{\diag}{\textup{diag}}
\newcommand{\circulant}{\textup{circ}}
\newcommand{\mbf}{\bm}
\newcommand{\sep}{\enspace|\enspace}

% Theorem environments
\newtheorem{thm}{Theorem}