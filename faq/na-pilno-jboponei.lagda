\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\renewcommand\abstractname{le me'oi .abstract.}

\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\forall}}
\newunicodechar{⊤}{\ensuremath{\mathnormal{\top}}}
\newunicodechar{λ}{\ensuremath{\mathnormal{\lambda}}}
\newunicodechar{→}{\ensuremath{\mathnormal{\rightarrow}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound

\title{le ctaipe be le su'u la .varik.\ cu na pilno la jboponei}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\section{le torveki}
\newcommand\jbolojysra{
	la .varik.\ cu na pilno la jboponei ni'i le su'u\ldots
	\begin{itemize}
		\item ga je no da zo'u gerna fi da fe ko'a goi la .lojban.\ poi ke'a se baupli la .varik.\ ge'u naje ko'e goi la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.\ gi
		\item ga naja la .varik.\ cu pilno la jboponei gi su'o da zo'u gerna fi da fe ko'a naje ko'e
	\end{itemize}
}

ni'o \jbolojysra

ni'o la .varik.\ cu na zu'edji lo ka ce'u fanva le velcki be le ctaipe le glibau fo la .lojban.

\section{le su'u na fanva}
ni'o le nu la .varik.\ cu na zu'edji lo ka ce'u fanva ko'e goi la'au le ctaipe be le su'u la .varik.\ cu na pilno la jboponei li'u le glibau la .lojban.\ cu se krinu le su'u la .varik.\ cu jinvi le du'u lakne fa lo nu lo ro selci'i be ko'e cu jbopre je cu ka'e jimpe le selci'a

\section{le vrici}

\begin{code}
open import Level
open import Function
open import Data.String
open import Data.Product
open import Relation.Nullary
\end{code}

\section{le jicmu}

\subsection{la'oi .\F{Prenu}.}
ni'o ro da zo'u da ctaipe la'oi .\F{Prenu}.\ jo cu prenu

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\F{Bangu}.}
ni'o ro da zo'u da ctaipe la'oi .\F{Bangu}.\ jo cu bangu

\begin{code}
postulate Bangu : Set
\end{code}

\subsection{la'o zoi.\ \F{le-jbobau-be}\ .zoi.}
ni'o ro da zo'u ga jo da ctaipe la'o zoi.\ \F{le-jbobau-be} \B a .zoi.\ gi da du la .lojban.\ poi ke'a se baupli la'o zoi.\ \B a .zoi.

\begin{code}
postulate le-jbobau-be : Prenu → Bangu
\end{code}

\subsection{la'o zoi.\ \F{\_cu-pilno\_}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{cu-pilno} \B b\ .zoi.\ gi la'o zoi.\ \B a .zoi.\ pilno la'o zoi.\ \B b .zoi.

\begin{code}
postulate _cu-pilno_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
ni'o la'o zoi.\ \F{la-varik}\ .zoi.\ du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu tolnei lo skami je cu seljda le cizra je cu xamsku lo mabla

\begin{code}
postulate la-varik : Prenu
\end{code}

\subsection{la'o zoi.\ \F{la-jboponei}\ .zoi.}
ni'o ko'a goi la'o zoi.\ \F{la-jboponei}\ .zoi.\ cu du la jboponei

.i xu cadga fa lo nu ko'a ctaipe lo na du be la'oi .\F{Bangu}.

\begin{code}
postulate la-jboponei : Bangu
\end{code}

\subsection{la'oi .\F{rolmapge'a}.}
ni'o ga jo ctaipe la'o zoi.\ \F{rolmapge'a} \B a\ .zoi.\ gi ga je la'o zoi.\ \B a\ .zoi.\ jbobau gi gerna la'o zoi.\ \B a\ .zoi.\ lo ro te gerna be la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.

\begin{code}
postulate rolmapge'a : Bangu → Set
\end{code}

\section{le barda ja co'e je ctaipe}

\subsection{la'oi .\F{plinamapti}.}
ni'o la'oi .\F{plinamapti}.\ ctaipe le su'u ro da poi ke'a prenu zo'u ga naja da pilno la jboponei gi su'o de zo'u gerna fi de fe la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.\ naje la .lojban.\ poi ke'a bangu da

\begin{code}
postulate
  plinamapti : {x : Prenu}
             → x cu-pilno la-jboponei
             → ¬ (rolmapge'a $ le-jbobau-be x)
\end{code}

\subsection{la'o zoi.\ \F{vjms}\ .zoi.}
ni'o la'o zoi.\ \F{vjms}\ .zoi.\ ctaipe le su'u gerna la .lojban.\ poi ke'a selpli la .varik.\ cu se gerna fi lo ro te gerna be la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.

\begin{code}
postulate vjms : rolmapge'a $ le-jbobau-be la-varik
\end{code}

\subsection{la'oi .\F{vnpj}.}
ni'o la'o zoi.\ \F{vnpj}\ .zoi.\ ctaipe le su'u la .varik.\ cu na pilno la jboponei

\begin{code}
vnpj : ¬ (la-varik cu-pilno la-jboponei)
vnpj = flip plinamapti vjms
\end{code}
\end{document}
