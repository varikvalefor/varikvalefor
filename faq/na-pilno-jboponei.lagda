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
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\title{le ctaipe be le su'u la .varik.\ cu na pilno la jboponei}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\section{le torveki}

ni'o la .varik.\ cu na pilno la jboponei ni'i le su'u\ldots
\begin{itemize}
	\item ga je no da zo'u gerna fi da fe ko'a goi le jbobau be la .varik.\ ge'u naje ko'e goi la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.\ gi
	\item ga naja la .varik.\ cu pilno la jboponei gi su'o da zo'u gerna fi da fe ko'a naje ko'e
\end{itemize}

ni'o la .varik.\ cu na zu'edji lo ka ce'u fanva le velcki be le ctaipe le glibau la .lojban.

\section{le su'u na fanva}
ni'o le nu la .varik.\ cu na zu'edji lo ka ce'u fanva ko'e goi la'au le ctaipe be le su'u la .varik.\ cu na pilno la jboponei li'u le glibau la .lojban.\ cu se krinu le su'u la .varik.\ cu jinvi le du'u lakne fa lo nu lo ro selci'i be ko'e cu jbopre je cu kakne lo ka ce'u jimpe fi le te gerna be la .lojban.

\section{le vrici}

\begin{code}
open import Function
open import Relation.Nullary
  using (
    ¬_
  )
\end{code}

\section{le jicmu}

\subsection{la'oi .\AgdaPostulate{Prenu}.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Prenu}.\ jo cu prenu

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Bangu}.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Bangu}.\ jo cu bangu

\begin{code}
postulate Bangu : Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{le-jbobau-be}\ .zoi.}
ni'o ro da zo'u da ctaipe la'o zoi.\ \AgdaPostulate{le-jbobau-be} \B a .zoi.\ jo cu jbobau la'o zoi.\ \B a .zoi.

\begin{code}
postulate le-jbobau-be : Prenu → Bangu
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-pilno\AgdaUnderscore}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-pilno} \B b\ .zoi.\ gi la'o zoi.\ \B a .zoi.\ pilno la'o zoi.\ \B b .zoi.

\begin{code}
postulate _cu-pilno_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}
ni'o la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.\ du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu tolnei lo skami je cu seljda le cizra je cu xamsku lo mabla

\begin{code}
postulate la-varik : Prenu
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{la-jboponei}\ .zoi.}
ni'o la jboponei cu du ko'a goi la'o zoi.\ \AgdaPostulate{la-jboponei}\ .zoi.

.i xu cadga fa lo nu ko'a ctaipe lo na du be la'oi .\AgdaPostulate{Bangu}.

\begin{code}
postulate la-jboponei : Bangu
\end{code}

\subsection{la'oi .\AgdaPostulate{rolmapge'a}.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{rolmapge'a} \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ jbobau je cu se gerna fi lo ro te gerna be la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.

\begin{code}
postulate rolmapge'a : Bangu → Set
\end{code}

\section{le barda ja co'e je ctaipe}

\subsection{la'oi .\AgdaPostulate{plinamapti}.}
ni'o la'oi .\AgdaPostulate{plinamapti}.\ ctaipe le su'u ro da poi ke'a prenu zo'u ga naja da pilno la jboponei gi su'o de zo'u gerna fi de fe la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.\ naje lo jbobau be da

\begin{code}
postulate
  plinamapti : {x : Prenu}
             → x cu-pilno la-jboponei
             → ¬ (rolmapge'a $ le-jbobau-be x)
\end{code}

\subsection{la'o zoi.\ \F{rolos}\ .zoi.}
ni'o la'o zoi.\ \F{rolos}\ .zoi.\ ctaipe le su'u gerna le jbobau be la .varik.\ lo ro te gerna be la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.

\begin{code}
postulate rolos : rolmapge'a $ le-jbobau-be la-varik
\end{code}

\subsection{la'oi .\F{vnpj}.}
ni'o la'o zoi.\ \F{vnpj}\ .zoi.\ ctaipe le su'u la .varik.\ cu na pilno la jboponei

\begin{code}
vnpj : ¬ (la-varik cu-pilno la-jboponei)
vnpj = flip plinamapti rolos
\end{code}
\end{document}
