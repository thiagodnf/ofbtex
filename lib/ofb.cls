\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ofb}[2014/08/16 Example LaTeX class]

\LoadClass[
    article,			% indica que é um artigo acadêmico
	10pt,				% tamanho da fonte
	oneside,			% para impressão apenas no recto. Oposto a twoside
    a4paper,       % Tamanho da folha A4
    section=TITLE, % Todas as secoes devem ter caixa alta
    oneside,       % Usada para impressao em apenas uma face do papel
    english,       % Hifenizacoes em ingles
    brazil,        % Ultimo idioma eh o idioma padrao do documento
    sumario=tradicional
]{abntex2}

\RequirePackage{ifxetex}
\ifxetex
    \RequirePackage{fontspec}
    \defaultfontfeatures{Ligatures={TeX}}
\else
    \RequirePackage[utf8]{inputenc}
    \RequirePackage[T1]{fontenc}
\fi
\RequirePackage{graphicx} % Inserir figuras
\RequirePackage{lipsum}
\RequirePackage{fontspec} % Carrega fontes customizadas
\RequirePackage{hyperref}
\RequirePackage{amsfonts, amssymb, amsmath} % Fonte e símbolos matemáticos
\RequirePackage[all]{background}
\RequirePackage{indentfirst} % Endenta o primeiro parágrafo de cada seção.
\RequirePackage{tocloft} 
\RequirePackage{ragged2e}
\RequirePackage{chapterbib}
\RequirePackage{etoolbox}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{mathptmx} 
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{titletoc}
\RequirePackage{tikz}
\RequirePackage{amsmath} % Usar equacoes matematicas
\RequirePackage[
    alf, 
    abnt-emphasize=bf, 
    bibjustif, 
    recuo=0cm, 
    abnt-etal-cite=3, 
    abnt-etal-list=0,
    abnt-etal-text=it
]{abntex2cite}  % Citações padrão ABNT

\PassOptionsToPackage{prologue,table}{xcolor}

% Configurações do pacote hyperref
\hypersetup{
    hidelinks,
    colorlinks,
    linkcolor = {Green},
    citecolor={Green},
    urlcolor={Gray}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Cores                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{Green}{HTML}{158F39}
\definecolor{LightGreen}{HTML}{70AD47}
\definecolor{Gray}{HTML}{3B3838}
\definecolor{LightGray}{HTML}{dedddd}

% Define a cor da fonte do documento
\color{Gray}

\AtBeginDocument{%
    \renewcommand{\contentsname}{SUM\'{A}RIO}
    \renewcommand{\bibname}{Bibliografia}
    \abovedisplayskip=\onelineskip
    \abovedisplayshortskip=0.5\onelineskip
    \belowdisplayskip=\onelineskip
    \belowdisplayshortskip=1.5\onelineskip
    \abovecaptionskip=\onelineskip
    \belowcaptionskip=\onelineskip
    \def\equationautorefname{Equação}%
    \def\figureautorefname{Figura}%
    \def\sectionautorefname{Seção}%
    \def\subsectionautorefname{Subseção}%
    \def\subsubsectionautorefname{Subseção}%
    \def\tableautorefname{Tabela}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tabelas                             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Colunas customizadas para tabelas onde o conteúdo fica 
% verticalmente centralizado
\newcolumntype{P}[1]{>{\arraybackslash}m{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fontes                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setmainfont[ExternalLocation=lib/fonts/]{AvenirLTProLight.otf} %
  [Ligatures=TeX, %
  BoldFont=AvenirLTProHeavy.otf, %
  ItalicFont=AvenirLTProOblique.otf, %
  BoldItalicFont=AvenirLTProHeavyOblique.otf] %

% Se você quer ver as margens do documento no PDF, descomente essa linha
% \usepackage[showframe]{geometry}

% Define o espaço entre linhas para 1.5 cm
\renewcommand{\baselinestretch}{1.5}

% Define o tamanho da nota de rodape
\renewcommand{\footnotesize}{\scriptsize}

% Define as margens do documento
\setlrmarginsandblock{1.18in}{1.18in}{*} % externa / interna
\setulmarginsandblock{1.18in}{1.18in}{*} % superior / inferior
\checkandfixthelayout

% Distancia do cabecalho
\addtolength{\headsep}{12pt}
% Distancia do rodape
\addtolength{\footskip}{5pt}
\addtolength{\textheight}{20pt}

% Tamanho do cabecalho
\addtolength{\headheight}{0pt}
% Distancia do top
\addtolength{\topmargin}{-23pt}

% section
\setbeforesecskip{\onelineskip}
\setaftersecskip{\onelineskip}

% subsection
\setbeforesubsecskip{\onelineskip}
\setaftersubsecskip{\onelineskip}

% subsubsection
\setbeforesubsubsecskip{\onelineskip}
\setaftersubsubsecskip{\onelineskip}

% subsubsubsection
\setbeforeparaskip{\onelineskip}
\setafterparaskip{\onelineskip}

% Define a distância da margem esquerda do parágrafo
\setlength{\parindent}{2cm}
\makeatletter
\renewcommand{\thesection}{\hspace{-10pt}\hspace{\parindent}}
\renewcommand{\thesubsection}{\hspace{-10pt}\hspace{\parindent}}
\renewcommand{\thesubsubsection}{\hspace{-10pt}\hspace{\parindent}}
\makeatother

\renewcommand{\bibsection}{ %
    \vspace{0.5\onelineskip} %
    \section{\bibname} %
    \vspace{\onelineskip} %
}

% Estilo da section 1.1
\renewcommand{\ABNTEXsectionfont}{\color{Green}}
\renewcommand{\ABNTEXsectionfontsize}{\large}

% Estilo da subsection 1.1.1
\renewcommand{\ABNTEXsubsectionfont}{\color{Green}}
\renewcommand{\ABNTEXsubsectionfontsize}{\large}

% Estilo da subsection 1.1.1.1
\renewcommand{\ABNTEXsubsubsectionfont}{\color{Green}}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\itshape\normalsize}

\backgroundsetup{
    contents={\includegraphics{lib/figures/background}},
    placement=bottom,
    opacity=0.5,
    scale=1,
    hshift=0,
    vshift=0
}

\newcommand{\Fonte}[2][\fontename]{ %
    \vspace{-6pt}
    \begin{flushright}
        \scriptsize{#1: #2}
    \end{flushright}
}

\DeclareCaptionFont{green}{\color{Green}}
\captionsetup[figure]{labelfont={green,bf},textfont={green,bf}}
\captionsetup[table]{labelfont={green,bf},textfont={green,bf}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Header and Footer     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\workingpaper}{\def \VARworkingpaper}

\renewcommand{\imprimircapa}{%

	\begin{capa}%
	
    	\begin{tikzpicture}[remember picture,overlay]
    	    \node[anchor=north west, inner sep=0pt]%
                at (current page.north west)
                {\includegraphics[scale=1.0]{lib/figures/cover}};
        \end{tikzpicture}
        
        \begin{tikzpicture}[remember picture,overlay]
    	    \node[anchor=south west, inner sep=0pt]%
                at (current page.south west)
                {\includegraphics[scale=1.0]{lib/figures/background}};
        \end{tikzpicture}
	   
		% Todos os elementos da capa devem esta centralizado
		\center
		% Todos os elementos da capa devem esta em negrito
		\bfseries

        \vspace{150pt}

        \Large{\textcolor{Gray}{WORKING PAPER N\textsuperscript{\underline{o}} \VARworkingpaper}} \\	
        
        \vspace{90pt}
        
		\Huge{\textcolor{Green}{\thetitle}} \\

		\vspace{80pt}

		\LARGE{\theauthor} \\
		
		\vfill
		
		\includegraphics[scale=1.0]{lib/figures/ceara}
	
	\end{capa}
	\cleardoublepage
}

\renewcommand{\imprimirfolhaderosto}{%

	\begin{folhaderosto}%
	
    	% Todos os elementos devem esta centralizado
		\center

        \textbf{Governador do Estado do Ceará} \\
        Camilo Sobreira de Santana \\
        
        \vspace{15pt}
        
        \textbf{Vice-Governadora do Estado do Ceará} \\
        Maria Izolda Cela de Arruda Coelho \\
 
        \vspace{15pt}
        
        \textbf{Secretaria do Planejamento e Gestão -- SEPLAG} \\
        Mauro Benevides Filho -- Secretário \\
 
        \vspace{15pt}
        
        Flávio Ataliba Flexa Daltro Barreto -- \textbf{Secretário Executivo de Planejamento e Orçamento} \\
        Ronaldo Lima Moreira Borges -- \textbf{Secretário Executivo de Planejamento e Gestão Interna} \\
        Adriano Sarquis Bezerra de Menezes -- \textbf{Secretário Executivo de Planejamento e Gestão} \\
 
        \vspace{30pt}
        
        \textbf{Observatório do Federalismo Brasileiro -- OFB} \\
 
        \vspace{15pt}
 
        \textbf{Coordenador Geral} \\
        Flávio Ataliba Flexa Daltro Barreto -- Secretário Executivo de Planejamento e Orçamento
        
        \vspace{15pt}
        
        \textbf{Coordenador Executivo} \\
        Mauricio Benegas \\
        
        \vspace{60pt}
        
        O \textbf{Observatório do Federalismo Brasileiro -- OFB}, no âmbito da Secretaria do Planejamento e Gestão -- SEPLAG, do Governo do Estado do Ceará, tem a finalidade de acompanhar e analisar, de forma sistemática, as repercussões econômicas e sociais no Estado do Ceará, de alterações na conjuntura econômica do país, assim como de mudanças advindas no âmbito Federal, dos Poderes Executivo, Legislativo e Judiciário, considerando, inclusive, os temas do interesse regional.

        \vfill

        \textbf{\textcolor{Green}{OBSERVATÓRIO DO FEDERALISMO BRASILEIRO -- OFB}} \\
        Av. Gal. Afonso Albuquerque Lima, s/n | Edifício SEPLAG | 3o andar - Cambeba | Cep: 60.822-325 \\
        Fortaleza, Ceará, Brasil | Telefone: (85) 3101-3521 \\
        \href{http://observatorio.seplag.ce.gov.br/}{http://observatorio.seplag.ce.gov.br/} \\
        
	\end{folhaderosto}
	\cleardoublepage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Configuração do Sumário      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\addtocontents{toc}{\vspace{0pt}}

\newcommand{\imprimirsumario}{ %
    \pagestyle{meuestilo}
    {
        \hypersetup{linkcolor=Gray}
  	    \tableofcontents*
    }
	\cleardoublepage
}

\setlength{\cftbeforeparagraphskip}{5pt}
\setlength{\cftbeforechapterskip}{5pt}
\setlength{\cftbeforesectionskip}{5pt}
\setlength{\cftbeforesubsectionskip}{5pt}
\setlength{\cftbeforesubsubsectionskip}{5pt}

\cftsetindents{section}{-50pt}{\cftlastnumwidth}
\cftsetindents{subsection}{-30pt}{\cftlastnumwidth}
\cftsetindents{subsubsection}{-10pt}{\cftlastnumwidth}

\renewcommand{\tocheadstart}{\hspace{-430pt}\hspace{1.8\parindent}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Header and Footer     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makepagestyle{meuestilo}
     
  \makeoddhead{meuestilo} %%pagina ímpar ou com oneside
     {}
     {}
     {\small\color{LightGray}\thetitle}
     
  %% rodapé

  \makeoddfoot{meuestilo} %%pagina ímpar ou com oneside
     {}
     {\normalsize\color{LightGray}\thepage}
     {}