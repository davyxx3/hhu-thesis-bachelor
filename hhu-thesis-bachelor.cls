\NeedsTeXFormat{LaTeX2e}[2008/05/04]
\ProvidesClass{hhu-thesis-bachelor}[2023/11/23 hhu-thesis-bachelor class]
\LoadClass[zihao=-4,a4paper,twoside,openright,UTF8,space=auto]{ctexbook}

%%
%% the setup of ctex package
%%
\renewcommand{\contentsname}{目录}
\renewcommand{\listfigurename}{插图清单}
\renewcommand{\listtablename}{附表清单}
\def\hhut@label@preface{前言}
\def\hhut@label@abstract{摘要}
\def\hhut@label@keywords{关键词：~}
\def\hhut@label@enabstract{ABSTRACT}
\def\hhut@label@enkeywords{Keywords:~}
\def\hhut@label@acknowledgement{致谢}

%% 中文封面常量
\def\hhut@label@cover{中文封面}
\def\hhut@label@name{姓名}
\def\hhut@label@reviewer{评阅人}
\def\hhut@label@studentnumber{学号：}
\def\hhut@label@grade{年级：}
\def\hhut@label@tutor{指导教师}
\def\hhut@label@major{专业}
\def\hhut@label@thesistype{本科毕业论文}

%% 英文封面常量
\def\hhut@label@encover{英文封面}

%% 郑重声明常量
\def\hhut@label@declare{郑重声明}
\def\hhut@label@declarecontent{
\hspace{2em}本人呈交的毕业论文，是在导师的指导下，独立进行研究工作所取得的成果，
所有数据、图片资料真实可靠。尽我所知，
除文中已经注明引用的内容外，
本设计（论文）的研究成果不包含他人享有著作权的内容。
对本设计（论文）所涉及的研究工作做出贡献的其他个人和集体，
均已在文中以明确的方式标明。
本设计（论文）的知识产权归属于培养单位。
}
\def\hhut@label@authorsign{本人签名：}
\def\hhut@label@declaredate{日期：}

%% 加载宏包

%% 数学公式&符号
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,mathrsfs}
%% 直立希腊字母字体
\RequirePackage{upgreek}
%% \XeTeX Logo
\RequirePackage{xltxtra}    
\RequirePackage{hologo}
\RequirePackage{etoolbox}   % 给宏包打补丁
\RequirePackage{xparse}     % 用于生成文档级命令的高级接口
\RequirePackage{notoccite}  % 目录引用
\RequirePackage{ifthen}     % 选择编译
\RequirePackage{ifpdf}      % 检查pdfTeX模式
\RequirePackage{fancyhdr}	% 页眉页脚控制
\RequirePackage{ulem}       % 下划线控制
\RequirePackage{indentfirst}% 首行缩进
%%
%% 引用geometry宏包设置纸张和页面
%% 设置版面:上2.5cm，下2.5cm，左2.7cm，右2.7cm，
%% 页眉2.0cm，页脚1.8cm，装订线0cm
%%
\usepackage[%geo
paper=a4paper,%
top=2.5cm, % 上2.5cm %
bottom=2.5cm, % 下2.5cm %
left=2.7cm,   % 左2.7cm %
right=2.7cm,  % 右2.7cm %
headheight=0.5cm, % 页眉 2cm %
footskip=0.7cm % 页脚1.8cm %
]{geometry}   % 页面设置 
\RequirePackage{setspace}   % 设置行间距
\RequirePackage{titletoc}   % 目录格式
%% 复杂插图
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{wrapfig}
\RequirePackage{caption}
\RequirePackage{bicaption}
\RequirePackage{float}   
%% 复杂表格
\RequirePackage{threeparttable}  % 表格尾注
\RequirePackage{longtable}       % 跨页表格
\RequirePackage{dcolumn}
\RequirePackage{array}
\RequirePackage{multirow}        % 跨长的表格单元格
\RequirePackage{multicol}
\RequirePackage{makecell}        % 许多方便的表格控制
\RequirePackage{diagbox}         % 斜线表头
\RequirePackage{booktabs} 
%% sort and compress citations
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}
\RequirePackage{xcolor}     % 颜色宏包
\RequirePackage{listings}   % 源代码
%% hyperref package
\RequirePackage{hyperref}
\RequirePackage{enumitem}   % 列表宏包
\RequirePackage{wasysym}    % 提供特殊符号
\RequirePackage{pifont}     % 提供带圈数字符号
\RequirePackage{hypernat}   % 解决natbib和hyperref兼容性
\RequirePackage{tabularx}   % 支持扩展的列宽
\RequirePackage{makeidx}    % 支持建立索引
\RequirePackage{glossaries} % 制作术语表
\RequirePackage[version=4]{mhchem}  % 提供化学符号
\RequirePackage{siunitx}

%% 定义几个常用的数学常量符号
%% 定义 对数常数e，虚数符号i,j以及微分算子d为直立体
\newcommand{\me}{\mathrm{e}}
\newcommand{\mi}{\mathrm{i}}
\newcommand{\mj}{\mathrm{j}}
\newcommand{\dif}{\,\mathrm{d}}

\theoremstyle{plain}
\newtheorem{theorem}{定理~}[chapter]
\newtheorem{lemma}[theorem]{引理~}
\newtheorem{corollary}[theorem]{推论~}
\newtheorem{proposition}[theorem]{命题~}
\newtheorem{conjecture}{猜想~}[chapter]

\theoremstyle{definition}
\newtheorem{definition}{定义~}[chapter]
\newtheorem{problem}{问题~}[chapter]
\newtheorem{exmaple}{例~}[chapter]
\newtheorem{exercise}{练习~}[chapter]
\newtheorem{axiom}{公理~}[chapter]
\newtheorem{algorithm}{算法~}[chapter]
\newtheorem{assumption}{假设~}[chapter]

\theoremstyle{remark}
\newtheorem{remark}{注~}
\newtheorem{case}{情形~}
\renewcommand{\proofname}{\bf 证明}

%% 英文字体使用 Times New Roman
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

%% Command -- Clear Double Page
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
	\thispagestyle{empty}%
	\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% 设置行距为20磅
% \setstretch{1.38}

\linespread{1.5}

%% 设置段落间距
\setlength{\parskip}{0pt}    

%% 设置章节标题标号最多到第4层(\subsubsection)，超过第四层的章节不再自动编号
\setcounter{secnumdepth}{4}

%% 设置章节格式，黑体小二号加粗居中，行距20磅
%% 间距设定为段前7.5磅，段后7.5磅
%% 章序号与章名间空一格
\ctexset{chapter={
		name = {第,章},
		number = {\chinese{chapter}},
		format = {\centering \rmfamily \heiti \zihao{-2}},
		pagestyle = {hhut@headings},
        aftername = {\enspace},
        beforeskip= {16pt},
		afterskip = {16pt},
		fixskip = true,
	}
}

%% 设置一级章节标题格式
%% 黑体三号，左对齐，行距20磅
%% 间距设定为段前6磅，段后6磅
%% 序号与题目间空一格
\ctexset{section={
		format={\raggedright \rmfamily \heiti \zihao{3}},
        aftername = {\enspace},
		beforeskip = {16pt},
		afterskip = {16pt},
		fixskip = true,
	}
}

%% 设置二级章节标题样式
%% 黑体小三号，左对齐，行距20磅
%% 间距设定为段前6磅，段后3磅
%% 序号与题名空一格
\ctexset{subsection={
		format={\raggedright \rmfamily \heiti \zihao{-3}},
        aftername = {\enspace},
		beforeskip = {16pt},
		afterskip = {12pt},
		fixskip=true,
	}
}

%% 设置三级章节标题样式
%% 仿宋四号，左对齐，行距20磅
%% 间距设定为段前3磅，段后0磅
%% 序号与题名空一格
\ctexset{subsubsection={
		format={\raggedright \rmfamily \fangsong \zihao{4}},
        aftername = {\enspace},
		beforeskip = {12pt},
		afterskip = {12pt},
		fixskip=true,
	}
}

%% 设置目录深度最多到第1层
\setcounter{tocdepth}{1}

%% 设定目录格式，目录颜色更换为黑色，并将目录、插图索引、附表索引加入目录中。
\addtocontents{toc}{\protect\hypersetup{hidelinks}}
\addtocontents{lot}{\protect\hypersetup{hidelinks}}
\addtocontents{lof}{\protect\hypersetup{hidelinks}}

%% 设置目录格式
\titlecontents{chapter}[0pt]{\heiti \zihao{-4}}
    {\thecontentslabel\hspace{0.5\ccwd}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[\ccwd]{\songti \zihao{-4}}
    {\thecontentslabel\hspace{0.5\ccwd}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}

\titlecontents{figure}[0pt]{\songti \zihao{-4}}
{\figurename~\thecontentslabel\quad}{\hspace*{-1.5cm}}
{\hspace{.5em}\titlerule*{.}\contentspage}

\titlecontents{table}[0pt]{\songti \zihao{-4}}
{\tablename~\thecontentslabel\quad}{\hspace*{-1.5cm}}
{\hspace{.5em}\titlerule*{.}\contentspage}

%%
%% 空 页眉页脚
\fancypagestyle{hhut@empty}{%
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}}    % get rid of headers and footers   

%% 按照河海大学学位论文页面要求设置页眉页脚，学位论文始终是双面打印
%% 奇数页的页眉如下：
%% 上方居中显示“河海大学XX学位论文”
%% 偶数页的页眉如下：
%% 上方居中显示当前章(chapter)的编号和标题
%% 如当前不位于mainmatter中，则上方只显示当前章的标题
%% 无论奇偶页，页眉线为单横线
%% 无论奇偶页，页脚居中显示页码
\fancypagestyle{hhut@headings}{%
	\fancyhf{}
	%% 设置页脚格式
	\fancyfoot[C]{\songti \zihao{-5} \thepage}
	%% 设置页眉格式
    \fancyhead[CO]{\zihao{-5} {\songti 河海大学本科毕业论文}}
    \fancyhead[CE]{ \songti \zihao{-5} \leftmark}
}

%% 对于openright选项，必须保证章页右开，且如果前章末页没有内容需只保留其页眉页脚
\let\hhut@cleardoublepage\cleardoublepage
\newcommand{\hhut@clearemptydoublepage}{%
	\clearpage{\pagestyle{hhut@empty}\hhut@cleardoublepage}}
\let\cleardoublepage\hhut@clearemptydoublepage

%% 修改frontmatter的页码为大写罗马格式，并调整页面风格
\renewcommand{\frontmatter}{
	\if@openright\cleardoublepage\else\clearpage\fi
	\@mainmatterfalse
	\pagenumbering{Roman}
	\pagestyle{hhut@headings}
}
%% 修改mainmatter的页码为阿拉伯格式
\renewcommand{\mainmatter}{
	\if@openright\cleardoublepage\else\clearpage\fi
	\@mainmattertrue
	\pagenumbering{arabic}
	\pagestyle{hhut@headings}
}

%% 设置浮动体与正文文字之间的距离
\setlength{\floatsep}{6pt}      % 浮动体之间的间距
\setlength{\textfloatsep}{6pt}  % 处于b或t位置的浮动体和文字间距
\setlength{\intextsep}{6pt}     % 处于文字之中h的浮动体和文字间距
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}

%% 将浮动参数设为较宽松的值
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

%% 设置列表格式
\newcolumntype{d}[1]{D{.}{.}{#1}}% or D{.}{,}{#1} or D{.}{\cdot}{#1}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}} % 表格内转行

%% 设置图表标题选项，标题字体大小为五号字
\DeclareCaptionLabelSeparator{zhspace}{\hspace{1\ccwd}}
\DeclareCaptionFont{fontsize}{\zihao{5}}
\captionsetup{
	font = {fontsize},
	labelsep = zhspace,
}
\captionsetup[table][bi-second]{name=Table}
\captionsetup[figure][bi-second]{name=Fig.}
\captionsetup[table]{
    labelfont = bf,
    textfont = bf,
    position = top,
	aboveskip = {6bp},
	belowskip = {6bp},
}
\numberwithin{table}{section}
\captionsetup[figure]{
    labelfont = bf,
    textfont = bf,
    position = bottom,
	aboveskip = {6bp},
	belowskip = {6bp},
}

%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png,.jpeg,.bmp}
\graphicspath{{figures/}}   % 定义图表默认路径

%% 定义公式、图、表编号的形式“C.S.N”
\renewcommand\theequation{\arabic{chapter}.\arabic{section}.\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}.\arabic{section}.\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}.\arabic{section}.\arabic{table}}

% 上标引用
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

%% 获取引用文件
\def\hhut@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\hhutfiledate{#1}%
  \def\hhutfileversion{#2}%
  \def\hhutfileinfo{#3}}%
\expandafter\ifx\csname ver@hhuthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_hhuthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@hhuthesis.cls\endcsname}
\fi
\expandafter\hhut@getfileinfo\reserved@a\relax? ? \relax\relax

%% 引用超链接
\hypersetup{
	bookmarksnumbered,%
	linktoc=all,
	colorlinks=true,
	citecolor=black,
	filecolor=black,
	linkcolor=black,
	linkbordercolor=black,
	urlcolor=black,
	plainpages=false,%
	pdfstartview=FitH
}

%% 设置列表缩进符合中文环境
\setenumerate{%
    fullwidth,
    topsep= 0pt,                % 列表顶部与之前内容的额外空白
    itemindent=\parindent,      % 每个item第一行的缩进
    listparindent=\parindent,   % 每一个item第一行之后隔行的缩进
    itemsep=0ex,                % 列表各项之间的额外垂直空白
    partopsep=0pt,              % 如果列表之前是一个空行，列表顶部的额外空白
    parsep=0ex                  % item中，如果分段，段落间的额外空白
}

%% 设置无序列表的标签符号
\setlist[itemize,1]{label=$\medbullet$}
\setlist[itemize,2]{label=$\balcksquare$}
\setlist[itemize,3]{label=$\Diamondblack$}

%% listings 源代码显示
\lstset{tabsize=4,     %
	frame=shadowbox,    % 把代码用带有阴影的框圈起来
	commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
	rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
	keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
	showstringspaces=false,%不显示代码字符串中间的空格标记
	stringstyle=\ttfamily, % 代码字符串的特殊格式
	keepspaces=true, %
	breakindent=22pt, %
	numbers=left,%左侧显示行号
	stepnumber=1,%
	numberstyle=\tiny, %行号字体用小号
	basicstyle=\footnotesize, %
	showspaces=false, %
	flexiblecolumns=true, %
	breaklines=true, %对过长的代码自动换行
	breakautoindent=true,%
	breakindent=4em, %
	aboveskip=1em, %代码块边框
	fontadjust,
	captionpos=t,
	framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
	xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
	texcl=true,
	% 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
	extendedchars=false,columns=flexible,mathescape=true
	numbersep=-1em
}
\renewcommand{\lstlistingname}{代码} % 重命名Listings标题头

%% 定义封面下划线
\def\hhut@underline[#1]#2{%
	\underline{\hbox to #1{\hfill#2\hfill}}}
\def\hhutunderline{\@ifnextchar[\hhut@underline\underline}

%% 论文中文封面的可用命令
\newcommand\studentnumber[1]{\def\hhut@value@studentnumber{#1}}
\renewcommand\title[2][\hhut@value@title]{%
\def\hhut@value@title{#2}
\def\hhut@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\hhut@value@author{#1}}
\newcommand\grade[1]{\def\hhut@value@grade{#1}}
\newcommand\major[1]{\def\hhut@value@major{#1}}
\newcommand\awarded[1]{\def\hhut@value@awarded{#1}}
\newcommand\tutor[1]{\def\hhut@value@tutor{#1}}
\newcommand\thesisdate[1]{\def\hhut@value@thesisdate{#1}}
\newcommand\location[1]{\def\hhut@value@location{#1}}

%% 生成中文封面
\newcommand\makecover{%
    \cleardoublepage
    \thispagestyle{empty}
    \pdfbookmark[0]{\hhut@label@cover}{cover}
    {\heiti \zihao{5} 
        \vskip 10pt
        \hfill
        \noindent
        \makebox[40pt][r]{\hhut@label@studentnumber}
        \hhutunderline[90pt]{\hhut@value@studentnumber}
        \vskip 10pt
        \hfill
        \makebox[40pt][r]{\hhut@label@grade}
        \hhutunderline[90pt]{\hhut@value@grade}
    }
    \vskip 40pt
    \begin{center}
        \includegraphics[height=25mm]{hhuname.png}\\
        \vskip 10pt
        \def\ULthickness{2pt}
        {\songti \zihao{1} \hhut@label@thesistype}
        \begin{spacing}{2.5}
        {\heiti \zihao{2} \bfseries
        \hhut@value@title
        }
        \end{spacing}
        \vskip 30pt
    \end{center}
    \begin{spacing}{2.0}
    {\songti \zihao{-3} \bfseries
        \begin{centering}
            \noindent{\songti \zihao{-3} \hhut@label@major}
            \hhutunderline[150pt]{\hhut@value@major}\\
            {\songti \zihao{-3}\hhut@label@name}\hhutunderline[150pt]{\hhut@value@author}\\
            {\songti \zihao{-3}\hhut@label@tutor}\hhutunderline[150pt]{\hhut@value@tutor}\\
            {\songti \zihao{-3}\hhut@label@reviewer}\hhutunderline[150pt]{}\\
        \end{centering}
    }
    \vskip 50pt
    \end{spacing}
    \begin{center}
        \vskip 20pt
        {\heiti \zihao{3}
        \hhut@value@thesisdate \\ \hhut@value@location}
    \end{center}
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%% 论文英文封面可用命令
\newcommand\englishtitle[1]{\def\hhut@value@englishtitle{#1}}
\newcommand\englishcollege[1]{\def\hhut@value@englishcollege{#1}}
\newcommand\englishmajor[1]{\def\hhut@value@englishmajor{#1}}
\newcommand\englishauthor[1]{\def\hhut@value@englishauthor{#1}}
\newcommand\englishtutor[1]{\def\hhut@value@englishtutor{#1}}
\newcommand\englishlocate[1]{\def\hhut@value@englishlocate{#1}}

%% 生成英文封面
\newcommand\makeencover{
    \cleardoublepage
    \thispagestyle{empty}
    \pdfbookmark[0]{\hhut@label@encover}{encover}
    \begin{center}
        \vskip 20pt
        {\rmfamily \zihao{2} \textbf{BACHELOR'S DEGREE THESIS
        OF HOHAI UNIVERSITY}}
        \vskip 60pt
        \begin{spacing}{2.0}
            {\zihao{2} \textbf{\hhut@value@englishtitle}}
        \vskip 60pt
        {\normalfont\rmfamily\zihao{4}College:
        \normalfont\rmfamily \zihao{4} \hhut@value@englishcollege}
        \vskip 10pt
        {\normalfont\rmfamily\zihao{4}Subject:
        \normalfont\rmfamily \zihao{4} \hhut@value@englishmajor}
        \vskip 10pt
        {\normalfont\rmfamily\zihao{4}Name:
        \normalfont\rmfamily \zihao{4} \hhut@value@englishauthor}
        \vskip 10pt
        {\normalfont\rmfamily\zihao{4}Directed by:
        \normalfont\rmfamily \zihao{4} \hhut@value@englishtutor}
        \vskip 60pt
        {\rmfamily \zihao{-2} {\hhut@value@englishlocate}}\\      
        \end{spacing}
    \end{center}
    \normalfont
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%% 郑重声明页
\newcommand\makedeclare{
    \cleardoublepage
    \pdfbookmark[0]{\hhut@label@declare}{declare}
    \thispagestyle{empty}
    \vskip 40pt
    \begin{spacing}{2.0}
        { \zihao{4} \songti
        \begin{center}
            \zihao{2}
            \songti
            \textbf{\hhut@label@declare} \par
        \end{center}
        \vskip 10pt
        \hhut@label@declarecontent \par
        \vskip 60pt
        \hhut@label@authorsign
        \hhutunderline[120pt]{}
        \hfill
        \hhut@label@declaredate
        \hhutunderline[120pt]{}
    }
    \end{spacing}
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%% 下一页从偶数页开始
\newcommand\beginatevenpage{
    \clearpage
    \if@twoside
        \thispagestyle{hhut@empty}
        \cleardoublepage
    \fi
}

%%
%% 创建各章节部分环境
%%

%% 前言
\newenvironment{preface}
{
    \cleardoublepage
    \chapter{\hhut@label@preface}
}{}

%% 中文摘要
\newenvironment{abstract}
{
    \cleardoublepage
    \chapter{\hhut@label@abstract}
}{}
%% 中文关键词
\newcommand\keywords[1]{%
    \vspace{2ex}{\textbf{\heiti \zihao{-4} \hhut@label@keywords}} #1}

%% 英文摘要
\newenvironment{enabstract}
{
    \clearpage
    \chapter{\hhut@label@enabstract}
}{}
%% 英文关键词
\newcommand\enkeywords[1]{%
    \vspace{2ex}{\textbf{\hhut@label@enkeywords}} #1}

%% 目录
\renewcommand\tableofcontents{%
    \if@twocolumn
    \@restonecoltrue\onecolumn
    \else
    \@restonecolfalse
    \fi
    \chapter*{\contentsname}%目录里显示“目录”，否则\chapter*
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \pdfbookmark[0]{目录}{bittoc}
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
}

%% 参考文献
\renewenvironment{thebibliography}[1]
     {\footnotesize
      \chapter*{\bibname}
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \addcontentsline{toc}{chapter}{参考文献}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \linespread{1.5}
            \setlength{\parsep}{-0.5mm}
            \setlength{\labelsep}{0.5em}
            \setlength{\itemsep}{0.05pc}
            \setlength{\listparindent}{0in}
            \setlength{\itemindent}{0in}
            \setlength{\rightmargin}{0in}
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}     

%% 致谢
\newenvironment{acknowledgement}
    {\chapter{\hhut@label@acknowledgement}
    \songti
    }{}

%% 主要术语&符号    
\newcommand{\hhut@denotation@name}{主要符号对照表}
\newenvironment{denotation}[1][2.5cm]{
    \chapter{\hhut@denotation@name} % no tocline
    \noindent\begin{list}{}%
    {\vskip-30bp\zihao{-4}
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
    }}{\end{list}}

%% 中文破折号
\newcommand{\cndash}{\rule{0.0em}{0pt}\rule[0.35em]{1.4em}{0.05em}\rule{0.2em}{0pt}}

%% hhutspace
\newcommand{\hhutspace}[1][1]{\hspace{#1\ccwd}}

\endinput