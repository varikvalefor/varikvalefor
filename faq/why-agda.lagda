\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{amsthm}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newtheorem{thm}{Theorem}

\renewcommand\abstractname{le me'oi .abstract.}

\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{ℕ}{\ensuremath{\mathnormal{\mathbb{N}}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\mathnormal{\forall}}}
\newunicodechar{⊤}{\ensuremath{\mathnormal{\top}}}
\newunicodechar{λ}{\ensuremath{\mathnormal{\lambda}}}
\newunicodechar{→}{\ensuremath{\mathnormal{\rightarrow}}}
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\hspace{-0.3em}|}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{|\hspace{-0.3em}\rbrace}}}
\newunicodechar{ₗ}{\ensuremath{\mathnormal{_l}}}
\newunicodechar{ₛ}{\ensuremath{\mathnormal{_s}}}
\newunicodechar{ᵥ}{\ensuremath{\mathnormal{_v}}}
\newunicodechar{∸}{\ensuremath{\mathnormal\dotdiv}}
\newunicodechar{∧}{\ensuremath{\mathnormal{\land}}}
\newunicodechar{≡}{\ensuremath{\mathnormal\equiv}}
\newunicodechar{ᵇ}{\ensuremath{\mathnormal{^\mathrm{b}}}}
\newunicodechar{≟}{\ensuremath{\mathnormal{\stackrel{?}{=}}}}
\newunicodechar{≤}{\ensuremath{\mathnormal{\leq}}}

\newcommand\sds{\spacefactor\sfcode`.\ \space}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\title{le ctaipe be le su'u la .varik.\ cu pilno la'oi .Agda.\ / The Proof of that VARIK uses Agda}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o vasru le velcki be le ctaipe be le su'u la .varik.\ cu pilno la'oi .Agda.\ kei be'o poi ke'a srana le krinu je zo'e / Contains the definition of the proof (of that VARIK uses Agda) which is relevant to the justification and whatnot.
\end{abstract}

\section{le torveki / The Summary}

\subsection{le me'oi .disclaimer.}
\paragraph{la .lojban.}
ni'o le su'u pilno la'oi .\texttt{subsection}.\ jenai la'oi .\texttt{paragraph}.\ cu se krinu le su'u le tcita be lo se ctaipe cu smimlu lo tcita be lo jufmei

\paragraph{English}
That (labels of proofs resemble labels of paragraphs) justifies that the thing uses \texttt{subsection} and not \texttt{paragraph}.

\subsection{la .lojban.}
ni'o la .varik.\ cu pilno la'oi .Agda.\ ni'i le su'u\ldots
\begin{itemize}
	\item ga je la'oi .Agda.\ ctaipe bangu gi
	\item ga je la'oi .Agda.\ slabu la .varik.\ gi
	\item ga je la .varik.\ cu nelci le gerna be la'oi .Agda.\ gi
	\item ro da poi ke'a ctaipe bangu zo'u ga janai la .varik.\ cu pilno da gi ga je da slabu la .varik.\ gi ga je la .varik.\ cu nelci lo gerna be da gi la .varik.\ cu jinvi le du'u lo nu la .varik.\ cu pilno da cu filri'a lo nu la .varik.\ cu ciksi zo'e je lo ctaipe
\end{itemize}

\subsection{English}
\begin{thm}
	VARIK uses Agda.
\end{thm}
\begin{proof}
	${}$

	Agda is a proof language.

	Agda is familiar to VARIK.

	VARIK likes the syntax of Agda.

	VARIK opines that Agda facilitates that VARIK defines proofs and whatnot.

	For all proof languages $A$, if $A$ is familiar to VARIK, then if VARIK likes the syntax of $A$, then if VARIK opines that $A$ facilitates that VARIK defines proofs and whatnot), then VARIK uses $A$.

	Therefore, VARIK uses Agda.
\end{proof}

\section{le vrici / The Miscellaneous}

\begin{code}
open import Function
  using (
    _$_
  )
open import Relation.Nullary
  using (
    ¬_
  )
\end{code}

\section{le jicmu ja co'e / The Basic}

\subsection{la'oi .\AgdaPostulate{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, \AgdaPostulate{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Gerna}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Gerna}.\ jo cu gerna

\paragraph{English}
For all $A$, \AgdaPostulate{Gerna} is the type of $A$ iff $A$ is a grammar.

\begin{code}
postulate Gerna : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Semantics}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Semantics}.\ jo cu me'oi .semantics.\sds  .i cumki fa lo nu cumki fa lo nu xagzengau le velcki be bau la .lojban.

\paragraph{English}
For all $A$, \AgdaPostulate{Semantics} is the type of $A$ iff $A$ is a semantics.  Possible is that possible is improving the English definition.

\begin{code}
postulate Semantics : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Leksiko}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Leksiko}.\ jo cu ctaipe bangu leksiko

\paragraph{English}
For all $A$, $A$ is a proof language lexicon/vocabulary/whatever iff \AgdaPostulate{Leksiko} is the type of $A$.

\begin{code}
postulate Leksiko : Set
\end{code}

\subsection{la'oi .\AgdaRecord{Ctaipe-Bangu}.}
\paragraph{la .lojban.}
ni'o ga jo ko'a goi la'oi .\B a.\ ctaipe la'oi .\AgdaRecord{Ctaipe-Bangu}.\ gi\ldots
\begin{itemize}
	\item ga je ko'a ctaipe bangu gi
	\item ga je la'o zoi.\ \AgdaField{Ctaipe-Bangu.leksiko} \B a\ .zoi.\ leksiko ko'a gi
	\item ga je la'o zoi.\ \AgdaField{Ctaipe-Bangu.gerna} \B a\ .zoi.\ gerna ko'a gi
	\item la'o zoi.\ \AgdaField{Ctaipe-Bangu.semantics} \B a\ .zoi.\ me'oi .semantics.\ ko'a
\end{itemize}

\paragraph{English}
For all \B a, \AgdaRecord{Ctaipe-Bangu} is the type of \B a iff (\B a is a proof language, \AgdaField{Ctaipe-Bangu.leksiko} \B a is the lexicon/vocabulary/whatever of \B a, \AgdaField{Ctaipe-Bangu.gerna} \B a is the syntax of \B a, and \AgdaField{Ctaipe-Bangu.semantics} \B a is the semantics of \B a).

\begin{code}
record Ctaipe-Bangu : Set
  where
  field
    leksiko : Leksiko
    gerna : Gerna
    semantics : Semantics
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{ctaipeckifilri'a-fa-tu'a}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{ctaipeckifilri'a-fa-tu'a} \B a\ .zoi.\ gi la .varik.\ cu jinvi ja co'e lo du'u lo nu la .varik.\ cu pilno la'oi .\B a.\ cu filri'a lo nu la .varik.\ cu ciksi zo'e je lo ctaipe

\paragraph{English}
A proof of \AgdaPostulate{ctaipeckifilri'a-fa-tu'a} \B a exists iff VARIK opines/whatever \{V\} that \B a facilitates that VARIK defines proofs and whatnot.

\begin{code}
postulate ctaipeckifilri'a-fa-tu'a : Ctaipe-Bangu → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-slabu\AgdaUnderscore} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-slabu} \B b\ .zoi.\ gi la'oi .\B a.\ slabu la'oi .\B b.

\paragraph{English}
A proof of \B a \OpP{cu-slabu} \B b exists iff \B a is familiar to \B b.

\begin{code}
postulate _cu-slabu_ : ∀ {a} → {A : Set a} → A → Prenu → Set
\end{code}

\subsection{la'o zoi.\ \F{\AgdaUnderscore{}cu-nelci\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-nelci} \B b\ .zoi.\ gi la'oi .\B a.\ nelci la'oi .\B b.

\paragraph{English}
A proof of \B a \OpP{cu-nelci} \B b exists iff \B a likes \B b.

\begin{code}
postulate _cu-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\AgdaUnderscore{}cu-pilno\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-pilno} \B b\ .zoi.\ gi la'oi .\B a.\ pilno la'oi .\B b.

\paragraph{English}
A proof of \B a \OpP{cu-pilno} \B b exists iff \B a uses \B b.

\begin{code}
postulate _cu-pilno_ : Prenu → Ctaipe-Bangu → Set
\end{code}

\section{le prenu / The Prenu}

\subsection{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.\ du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu cusku dei je cu co'e

\paragraph{English}
\AgdaPostulate{la-varik} is the VARIK which is American, is a mathematician, communicates/expresses/writes the current sentence, and does whatnot.

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{le bangu / The Languages}

\subsection{la'o zoi.\ \F{la'oi-Agda}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la'oi-Agda}\ .zoi.\ du la'oi .Agda.

\paragraph{English}
\F{la'oi-Agda} is Agda.

\begin{code}
la'oi-Agda : Ctaipe-Bangu
la'oi-Agda = record {
  leksiko = agdal;
  gerna = agdag;
  semantics = agdas
  }
  where
  postulate
    agdal : Leksiko
    agdag : Gerna
    agdas : Semantics
\end{code}

\section{le barda ja co'e je ctaipe}

\subsection{la'oi .\AgdaPostulate{pavybaupli}.}
\paragraph{la .lojban.}
ni'o ro da poi ke'a bangu zo'u ga janai la .varik.\ cu baupli da gi\ldots
\begin{itemize}
	\item ga je da slabu la .varik.\ gi
	\item ga je la .varik.\ cu nelci le gerna be da gi
	\item la .varik.\ cu jinvi lo du'u lo nu la .varik.\ cu pilno da cu filri'a lo nu la .varik.\ cu ciksi zo'e je lo ctaipe
\end{itemize}

\paragraph{English}
For all proof languages $A$, if $A$ is familiar to VARIK, then if VARIK likes the grammar of $A$, then if VARIK opines that $A$ facilitates that VARIK defines proofs and whatnot, then VARIK uses $A$.

\begin{code}
postulate
  pavypli : {z : Ctaipe-Bangu}
          → z cu-slabu la-varik
          → la-varik cu-nelci (Ctaipe-Bangu.leksiko z)
          → ctaipeckifilri'a-fa-tu'a z
          → la-varik cu-pilno z
\end{code}

\subsection{la'o zoi.\ \F{jbobau-la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi la'o zoi.\ \F{jbobau-la-varik}\ .zoi.\ bau la .lojban.\sds  .i la .varik.\ cu stidi lo nu tcidu le torveki be bau la .lojban.\ fe lo ro prenu poi ke'a baupli la .lojban.\ je cu djica lo nu ke'a jimpe fi le me'oi .Agda.\ velcki kei jenai cu jimpe fi le ctaipe

\paragraph{English}
VARIK not finds that necessary is that VARIK uses (for that VARIK explains \F{jbobau-la-varik}) English.  VARIK suggests that for all prenu $A$, if $A$ uses English, then if $A$ desires that $A$ understands about the proof, then if $A$ not understands about the Agda definition, then $A$ reads the English summary.

\begin{code}
jbobau-la-varik : la-varik cu-pilno la'oi-Agda
jbobau-la-varik = pavypli as vnal ccf
  where
  postulate
    vnal : la-varik cu-nelci_ $ Ctaipe-Bangu.leksiko la'oi-Agda
    ccf : ctaipeckifilri'a-fa-tu'a la'oi-Agda
    as : la'oi-Agda cu-slabu la-varik
\end{code}
\end{document}