return {
	-- Base aricle

	s({trig = "article", desc="Boilerplate begin of the document"},
	fmta([[
	\documentclass[a4paper]{article}
	\usepackage{xcolor}
	\usepackage{mathtools}
	\usepackage[bordercolor=orange, backgroundcolor=orange!20!white, textsize=scriptsize]{todonotes}
	\usepackage[capitalize]{cleveref}
	\usepackage[style=alphabetic,sorting=ynt]{biblatex}
	\usepackage{hyperref}
	\usepackage{csquotes}
	
	\input{macros}
	
	\graphicspath{{.\figs}}
	\author{Gianluca Tasinato}
	\title{<>}
	\begin{document}

	\maketitle

	<>
	\end{document}
	]],
	{i(1, "A Fancy Title"), i(0)})
),

-- end article 
s({trig = "slides", desc="Boilerplate begin of beamer presentation"},
	fmta([[
	\documentclass{beamer}
	\usepackage{xcolor}
	\usepackage{mathtools}
	\usepackage[bordercolor=orange, backgroundcolor=orange!20!white, textsize=scriptsize]{todonotes}
	\usepackage[capitalize]{cleveref}
	\usepackage[style=alphabetic,sorting=ynt]{biblatex}
	\usepackage{hyperref}
	\usepackage{csquotes}
	\usetheme{moloch}

	\input{macros}
	
	\graphicspath{{.\figs}}
	\author{Gianluca Tasinato}
	\title{<>}
	\begin{document}

	\maketitle

	<>
	\end{document}
	]],
	{i(1, "A Fancy Title"), i(0)})
),

}
