\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ofb}[2021/07/30 OFB template]

\LoadClass[
    article,			% indica que é um artigo acadêmico
	12pt,				% tamanho da fonte
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
\RequirePackage{afterpage}
\RequirePackage{ifthen}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage[
    alf, 
    % abnt-emphasize=bf, 
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
    citecolor={DarkGray},
    urlcolor={DarkGray}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Cores                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{Green}{HTML}{158F39}
\definecolor{LightGreen}{HTML}{70AD47}
\definecolor{Gray}{HTML}{3B3838}
\definecolor{DarkGray}{HTML}{121212}
\definecolor{LightGray}{HTML}{696363}
\definecolor{LightestGray}{HTML}{fafafa}


% Define a cor da fonte do documento
\color{DarkGray}

\AtBeginDocument{%
    \renewcommand{\contentsname}{SUM\'{A}RIO}
    \renewcommand{\bibname}{Bibliografia}
    \renewcommand{\resumoname}{RESUMO}
    \abovedisplayskip=\onelineskip
    \abovedisplayshortskip=0.5\onelineskip
    \belowdisplayskip=\onelineskip
    \belowdisplayshortskip=1.3\onelineskip
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
%\usepackage[showframe]{geometry}

% Define o espaço entre linhas para 1.4 cm
\renewcommand{\baselinestretch}{1.5}

% Define o tamanho da nota de rodape
\renewcommand{\footnotesize}{\scriptsize}

% Define as margens do documento
\setlrmarginsandblock{0.9in}{0.9in}{*} % externa / interna
\setulmarginsandblock{0.9in}{0.9in}{*} % superior / inferior
\checkandfixthelayout

% Distancia do cabecalho
\addtolength{\headsep}{12pt}
\addtolength{\headsep}{0pt}

% Distancia do rodape
\addtolength{\footskip}{-8pt}
\addtolength{\textheight}{0pt}
\setlength{\skip\footins}{2.0pc plus 5pt minus 2pt}

% Distancia marginal note
\addtolength{\marginparsep}{0pt}

% Tamanho do cabecalho
\addtolength{\headheight}{16pt}

% Distancia do top
\addtolength{\topmargin}{-23pt}

% section
\setbeforesecskip{26pt}
\setaftersecskip{22pt}

% subsection
\setbeforesubsecskip{18pt}
\setaftersubsecskip{16pt}

% subsubsection
\setbeforesubsubsecskip{\onelineskip}
\setaftersubsubsecskip{\onelineskip}

% subsubsubsection
\setbeforeparaskip{\onelineskip}
\setafterparaskip{\onelineskip}

% Define a distância da margem esquerda do parágrafo
\setlength{\parindent}{2cm}
\makeatletter
\renewcommand{\thesection}{\hspace{-10pt}}
\renewcommand{\thesubsection}{\hspace{-10pt}}
\renewcommand{\thesubsubsection}{\hspace{-10pt}}
\makeatother

\renewcommand{\bibsection}{ %
    \vspace{0.5\onelineskip} %
    \section{\bibname} %
    \vspace{\onelineskip} %
}

% Estilo da section 1.1
\renewcommand{\ABNTEXsectionfont}{\color{Green}\bfseries}
\renewcommand{\ABNTEXsectionfontsize}{\large}

% Estilo da subsection 1.1.1
\renewcommand{\ABNTEXsubsectionfont}{\color{Green}\bfseries}
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
\captionsetup[figure]{labelfont={green},textfont={green}}
\captionsetup[table]{labelfont={green},textfont={green}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%          Capa                       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\workingpaper}{\def \VARworkingpaper}

\newcommand{\AuthorOneName}{\def \AuthorOneName}
\newcommand{\AuthorTwoName}{\def \AuthorTwoName}
\newcommand{\AuthorThreeName}{\def \AuthorThreeName}
\newcommand{\AuthorFourName}{\def \AuthorFourName}
\newcommand{\AuthorFiveName}{\def \AuthorFiveName}

\newcommand{\Authors}{
    \ifthenelse{\not\equal{\AuthorOneName}{}}{\AuthorOneName\\}{}
    \ifthenelse{\not\equal{\AuthorTwoName}{}}{\AuthorTwoName\\}{}
    \ifthenelse{\not\equal{\AuthorThreeName}{}}{\AuthorThreeName\\}{}
    \ifthenelse{\not\equal{\AuthorFourName}{}}{\AuthorFourName\\}{}
    \ifthenelse{\not\equal{\AuthorFiveName}{}}{\AuthorFiveName\\}{}
}

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
			\pagecolor{LightestGray}\afterpage{\nopagecolor}

		\vspace{70pt}
		
		\begin{flushright}
		    \large{\textcolor{DarkGray}{TEXTO PARA DISCUSSÃO N\textsuperscript{\underline{o}} \VARworkingpaper}} \\
		\end{flushright}
		\vspace{130pt}

		\Large{\textcolor{Green}{\MakeUppercase{\thetitle}}} \\
		
		\vfill
		
		\large{\Authors}
		
		\vfill
		\includegraphics[scale=0.8]{lib/figures/ceara}
		
	\end{capa}
	\cleardoublepage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Folha de Rosto               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\imprimirfolhaderosto}{%

	\begin{folhaderosto}%
	
    	% Todos os elementos devem esta centralizado
		\center
		\small

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
        
        \begin{minipage}[c][3cm]{0.86\textwidth}
            O \textbf{Observatório do Federalismo Brasileiro -- OFB}, no âmbito da Secretaria do Planejamento e Gestão -- SEPLAG, do Governo do Estado do Ceará, tem a finalidade de acompanhar e analisar, de forma sistemática, as repercussões econômicas e sociais no Estado do Ceará, de alterações na conjuntura econômica do país, assim como de mudanças advindas no âmbito Federal, dos Poderes Executivo, Legislativo e Judiciário, considerando, inclusive, os temas do interesse regional.
        \end{minipage}

        \vfill

        \textbf{\textcolor{Green}{OBSERVATÓRIO DO FEDERALISMO BRASILEIRO -- OFB}} \\
        Av. Gal. Afonso Albuquerque Lima, s/n | Edifício SEPLAG | 3\textsuperscript{o} andar | Cambeba\\
        CEP: 60.822-325 | Fortaleza, Ceará, Brasil | Telefone: (85) 3101-3521 \\
        \href{http://observatorio.seplag.ce.gov.br/}{http://observatorio.seplag.ce.gov.br/} \\
        \href{observatorio@seplag.ce.gov.br}{observatorio@seplag.ce.gov.br} \\
        
	\end{folhaderosto}
	\cleardoublepage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%          Contra-Capa                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\titulodoprojeto}{\def \titulodoprojeto}

\newcommand{\AuthorOneCV}{\def \AuthorOneCV}
\newcommand{\AuthorTwoCV}{\def \AuthorTwoCV}
\newcommand{\AuthorThreeCV}{\def \AuthorThreeCV}
\newcommand{\AuthorFourCV}{\def \AuthorFourCV}
\newcommand{\AuthorFiveCV}{\def \AuthorFiveCV}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}

\newcommand{\ExtendedAuthors}{%
        \ifthenelse{\not\equal{\AuthorOneName}{}}{
            \AuthorOneName
            \ifthenelse{\not\equal{\AuthorOneCV}{}}{ \footnote{\AuthorOneCV}\\}{\\}
        }{}
        \ifthenelse{\not\equal{\AuthorTwoName}{}}{
            \AuthorTwoName
            \ifthenelse{\not\equal{\AuthorTwoCV}{}}{
                \footnote{\AuthorTwoCV}\\}{\\}
        }{}
        \ifthenelse{\not\equal{\AuthorThreeName}{}}{
            \AuthorThreeName
                \ifthenelse{\not\equal{\AuthorThreeCV}{}}{
                    \footnote{\AuthorThreeCV}\\}{\\}
        }{}
        \ifthenelse{\not\equal{\AuthorFourName}{}}{
            \AuthorFourName
                \ifthenelse{\not\equal{\AuthorFourCV}{}}{
                    \footnote{\AuthorFourCV}\\}{\\}
        }{}
        \ifthenelse{\not\equal{\AuthorFiveName}{}}{
            \AuthorFiveName
                \ifthenelse{\not\equal{\AuthorFiveCV}{}}{
                    \footnote{\AuthorFiveCV}\\}{\\}
        }{}
}

\newcommand{\imprimircontracapa}{%
    \begin{center}

        \vspace{150pt}

        \large{\textcolor{Gray}{TEXTO PARA DISCUSSÃO N\textsuperscript{\underline{o}} \VARworkingpaper}} \\	
        
        \vspace{120pt}
        
		\Large{\bfseries\color{Green}\MakeUppercase{\thetitle}} \\
        
		\vfill
		
		\large{\ExtendedAuthors}\\
		
		\vfill
		
		\begin{minipage}[c][3cm]{0.85\textwidth}
              \small
              Estudo desenvolvido no âmbito do Programa Cientista-Chefe em Economia, com suporte financeiro da FUNCAP e como parte do projeto de pesquisa "\titulodoprojeto". As opiniões expressas neste documento não representam necessariamente a visão das instituições envolvidas.
        \end{minipage}
		
		\vspace{80pt}
        \cleardoublepage
    \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%          Resumo               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\imprimirresumo}{%
    
    \setlength{\absparsep}{16pt}
    \begin{resumo}
        \normalsize \input{secoes/0-resumo}
    \end{resumo}

    \cleardoublepage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Configuração do Sumário      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\addtocontents{toc}{\vspace{0pt}}

\newcommand{\imprimirsumario}{ %

    
    \pagestyle{meuestilo}
    {
        \hypersetup{linkcolor=DarkGray}
  	    \normalsize \tableofcontents*
    }
	\cleardoublepage
	
    \renewcommand{\thefootnote}{\arabic{footnote}}
    \setcounter{footnote}{0}
	
}

\setlength{\cftbeforeparagraphskip}{5pt}
\setlength{\cftbeforechapterskip}{5pt}
\setlength{\cftbeforesectionskip}{5pt}
\setlength{\cftbeforesubsectionskip}{5pt}
\setlength{\cftbeforesubsubsectionskip}{5pt}

\cftsetindents{section}{-50pt}{\cftlastnumwidth}
\cftsetindents{subsection}{-30pt}{\cftlastnumwidth}
\cftsetindents{subsubsection}{-10pt}{\cftlastnumwidth}

\renewcommand{\tocheadstart}{\hspace{-430pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        Header and Footer     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makepagestyle{meuestilo}
  \makeoddhead{meuestilo} %%pagina ímpar ou com oneside
     {}
     {}
     {\small\color{DarkGray}\thetitle}
     
  %% rodapé
  \makeoddfoot{meuestilo} %%pagina ímpar ou com oneside
     {}
     {\normalsize\color{DarkGray}\thepage}
     {}
