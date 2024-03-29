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
\newunicodechar{∘}{\ensuremath{\mathnormal\circ}}
\newunicodechar{∀}{\ensuremath{\mathnormal\forall}}
\newunicodechar{⊤}{\ensuremath{\mathnormal\top}}
\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{→}{\ensuremath{\mathnormal\rightarrow}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\title{le ctaipe be le su'u la .varik.\ na pilno la jboponei}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\section{le torveki}

ni'o le su'u la .varik.\ na pilno la jboponei cu se nibli le su'u\ldots
\begin{itemize}
	\item ga je ga naja la .varik.\ cu pilno la jboponei gi su'o da poi ke'a na'e ke me zo cu co'e zo'u gerna fi da fe ko'a goi le jbobau be la .varik.\ naje ko'e gi
	\item no da poi ke'a na'e ke me zo cu co'e zo'u gerna fi da fe ko'a naje ko'e goi la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.
\end{itemize}

ni'o la .varik.\ na zu'edji lo ka ce'u fanva le velcki be le ctaipe le glibau la .lojban.

\section{le su'u na fanva}
ni'o la .varik.\ na zu'edji lo ka ce'u fanva ko'e goi la'au le ctaipe be le su'u la .varik.\ na pilno la jboponei li'u le glibau la .lojban.  .i la'e di'u se krinu le su'u la .varik.\ cu jinvi le du'u lakne fa lo nu lo ro selci'i be ko'e cu jbopre je cu kakne lo ka ce'u jimpe fi le te gerna be la .lojban.

\section{le vrici}

\begin{code}
open import Function
  using (
    flip;
    _$_
  )
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

\subsection{la'o zoi.\ \AgdaPostulate{lo-jbobau-be}\ .zoi.}
ni'o ro da zo'u da ctaipe la'o zoi.\ \AgdaPostulate{lo-jbobau-be} \B a\ .zoi.\ jo cu jbobau la'o zoi.\ \B a\ .zoi.

\begin{code}
postulate lo-jbobau-be : Prenu → Bangu
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-pilno\AgdaUnderscore}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-pilno} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ pilno la'o zoi.\ \B b\ .zoi.

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
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{rolmapge'a} \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ jbobau je cu se gerna fi lo ro na'e ke me zo cu co'e poi ke'a te gerna be la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.  .i la .varik.\ cu pilno lu na'e ke me zo cu ci'e li'u ki'u le su'u vo'a nelci je pilno la'oi .CBM.\ldots poi ke'a na skami co'e

\begin{code}
postulate rolmapge'a : Bangu → Set
\end{code}

\section{le co'e ja barda je ctaipe}

\subsection{la'oi .\AgdaPostulate{plinamapti}.}
ni'o la'oi .\AgdaPostulate{plinamapti}.\ ctaipe le su'u ro da poi ke'a prenu zo'u ga naja da pilno la jboponei gi su'o de zo'u gerna fi de fe lo jbobau be da be'o jenai la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.

\begin{code}
postulate
  plinamapti : {x : Prenu}
             → x cu-pilno la-jboponei
             → ¬_ $ rolmapge'a $ lo-jbobau-be x
\end{code}

\subsection{la'o zoi.\ \F{rolos}\ .zoi.}
ni'o la'o zoi.\ \F{rolos}\ .zoi.\ ctaipe le su'u gerna le jbobau be la .varik.\ lo ro na'e ke me zo cu co'e poi ke'a te gerna be la .lojban.\ po la'o glibau.\ The Common Lojban Language .glibau.

\begin{code}
postulate rolos : rolmapge'a $ lo-jbobau-be la-varik
\end{code}

\subsection{la'oi .\F{najboponeis}.}
ni'o la'oi .\F{najboponeis}.\ ctaipe le su'u la .varik.\ na pilno la jboponei

\begin{code}
najboponeis : ¬ (la-varik cu-pilno la-jboponei)
najboponeis = flip plinamapti rolos
\end{code}
\end{document}
