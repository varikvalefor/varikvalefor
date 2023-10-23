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
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\!\lbrace}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{\rbrace\!\rbrace}}}
\newunicodechar{ₗ}{\ensuremath{\mathnormal{_l}}}
\newunicodechar{ₛ}{\ensuremath{\mathnormal{_s}}}
\newunicodechar{ᵥ}{\ensuremath{\mathnormal{_v}}}
\newunicodechar{∸}{\ensuremath{\mathnormal\dotdiv}}
\newunicodechar{∧}{\ensuremath{\mathnormal{\land}}}
\newunicodechar{≡}{\ensuremath{\mathnormal\equiv}}
\newunicodechar{ᵇ}{\ensuremath{\mathnormal{^\mathrm{b}}}}
\newunicodechar{≟}{\ensuremath{\mathnormal{\stackrel{?}{=}}}}
\newunicodechar{≤}{\ensuremath{\mathnormal{\leq}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\title{le ctaipe be le su'u la .varik.\ cu baupli la .lojban.\ / The Proof of that VARIK uses Lojban}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o vasru le velcki be le ctaipe be le su'u la .varik.\ cu baupli la .lojban.\ kei be'o poi ke'a srana le krinu je zo'e / Contains the explanation of the proof (of that VARIK uses Lojban) which is relevant to the justification and whatnot.
\end{abstract}

\section{le torveki / The Summary}

\subsection{le me'oi .disclaimer.}
\paragraph{la .lojban.}
ni'o le su'u pilno la'oi .\texttt{subsection}.\ jenai la'oi .\texttt{paragraph}.\ cu se krinu le su'u le tcita be lo se ctaipe cu smimlu lo tcita be lo jufmei

\paragraph{English}
That (labels of proofs resemble labels of paragraphs) justifies that uses \texttt{subsection} and not \texttt{paragraph}.

\subsection{la .lojban.}
ni'o la .varik.\ cu baupli la .lojban.\ ni'i le su'u\ldots
\begin{itemize}
	\item ga je la .lojban.\ cu slabu la .varik.\ gi
	\item ga je la .lojban.\ cu na tonga bangu gi
	\item ga je la .varik.\ cu ka'e vlaba'u lo valsi be fi la .lojban.\ gi
	\item ga je la .varik.\ cu nelci le gerna be la .lojban.\ gi
	\item ga je gerna pavysmu fa lo ro jufra be fi la .lojban.\ gi
	\item ga je la .varik.\ cu jinvi le du'u tu'a la .lojban.\ cu filri'a lo nu ciksi ja skicu lo pluja fo lo sampu je drani\ gi
	\item ro da poi ke'a bangu zo'u ga naja ga je da slabu la .varik.\ gi ga je da na tonga bangu gi ga je la .varik.\ cu ka'e vlaba'u lo valsi be fi da gi ga je la .varik.\ cu nelci le gerna be da gi ga je gerna pavysmu fa lo ro jufra be fi da gi ga je la .varik.\ cu jinvi lo du'u tu'a da filri'a lo nu ciksi ja skicu lo pluja fo lo sampu je drani gi la .varik.\ cu baupli da
\end{itemize}

\subsection{English}
\begin{thm}
	VARIK uses Lojban.
\end{thm}
\begin{proof}
	${}$

	Lojban is familiar to VARIK.

	Lojban is not a tonal language.

	VARIK is capable of that VARIK pronounces the words of Lojban.

	VARIK likes the grammar of Lojban.

	Syntactically unambiguous are all sentences which ``fit'' the grammar of Lojban.

	VARIK opines that Lojban facilitates that simply and correctly describes (or explains) the complex.

	For all languages $A$, if $A$ is familiar to VARIK, then if $A$ is not a tonal language, then if VARIK is capable of that VARIK pronounces the words of $A$, then if VARIK likes the grammar of $A$, then if syntactically unambiguous are all sentences which ``fit'' the grammar of $A$, then if VARIK opines that $A$ facilitates that simply and correctly explains (or describes) the complex, then VARIK uses $A$.

	Therefore, VARIK uses Lojban.
\end{proof}

\section{le vrici / The Miscellaneous}

\begin{code}
open import Function
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
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Semantics}.\ jo cu me'oi .semantics.  .i cumki fa lo nu cumki fa lo nu xagzengau le velcki be bau la .lojban.

\paragraph{English}
For all $A$, \AgdaPostulate{Semantics} is the type of $A$ iff $A$ is a semantics.

\begin{code}
postulate Semantics : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Leksiko}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Leksiko}.\ jo cu leksiko

\paragraph{English}
For all $A$, \AgdaPostulate{Leksiko} is the type of $A$ iff $A$ is a lexicon/vocabulary/whatever.

\begin{code}
postulate Leksiko : Set
\end{code}

\subsection{la'oi .\AgdaRecord{Bangu}.}
\paragraph{la .lojban.}
ni'o ga jo ko'a goi la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\AgdaRecord{Bangu}.\ gi\ldots
\begin{itemize}
	\item ga je ko'a bangu gi
	\item ga je la'o zoi.\ \F{Bangu.leksiko} \B a\ .zoi.\ leksiko ko'a gi
	\item ga je la'o zoi.\ \F{Bangu.gerna} \B a\ .zoi.\ gerna ko'a gi
	\item la'o zoi.\ \F{Bangu.semantics} \B a\ .zoi.\ me'oi .semantics.\ ko'a
\end{itemize}

\paragraph{English}
For all \B a, \F{Bangu} is the type of \B a iff (\B a is a language, \F{Bangu.leksiko} \B a is the lexicon/vocabulary/whatever of \B a, \F{Bangu.gerna} \B a is the grammar of \B a, and \F{Bangu.semantics} \B a is the semantics of \B a).

\begin{code}
record Bangu : Set
  where
  field
    leksiko : Leksiko
    gerna : Gerna
    semantics : Semantics
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{togbau-fa} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{togbau-fa} \B a\ .zoi.\ gi la'o zoi.\ \B a .zoi.\ tonga bangu

\paragraph{English}
A proof of \AgdaPostulate{togbau-fa} \B a exists iff \B a is a tonal language.

\begin{code}
postulate togbau-fa : Bangu → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-vlaba'u-kakne\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-vlaba'u-kakne} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ ka'e vlaba'u lo valsi be fi la'o zoi.\ \B b .zoi.

\paragraph{English}
A proof of \B a \OpP{cu-vlaba'u-kakne} \B b exists iff \B a is capable of that \B a pronounces the words of \B b.

\begin{code}
postulate _cu-vlaba'u-kakne_ : Prenu → Leksiko → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{sapydrackifilri'a-fa-tu'a}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{sapydrackifilri'a-fa-tu'a} \B a\ .zoi.\ gi la .varik.\ cu jinvi ja co'e lo du'u tu'a la'o zoi.\ \B a\ .zoi.\ filri'a lo nu ciksi ja skicu lo pluja fo lo drani je sampu

\paragraph{english}
A proof of \AgdaPostulate{sapydrackifilri'a-fa-tu'a} \B a exists iff VARIK opines (or whatever \{V\}) that \B a facilitates that simply and correctly explains (or describes) the complex.

\begin{code}
postulate sapydrackifilri'a-fa-tu'a : Bangu → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{gernypavysmu}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{gernypavysmu-fa} \B a\ .zoi.\ gi lo jufra be fi la'o zoi.\ \B a .zoi.\ cu gerna pavysmu

\paragraph{English}
A proof of \AgdaPostulate{gernypavysmu-fa} \B a exists iff all sentences which are grammatical with regard to \B a are syntactically unambiguous.

\begin{code}
postulate gernypavysmu-fa : Gerna → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-slabu\AgdaUnderscore} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-slabu} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ slabu la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \OpP{cu-slabu} \B b exists iff \B a is familiar to \B b.

\begin{code}
postulate _cu-slabu_ : ∀ {a} → {A : Set a} → A → Prenu → Set
\end{code}

\subsection{la'o zoi.\ \F{\AgdaUnderscore{}cu-nelci\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-nelci} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ nelci la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \OpP{cu-nelci} \B b exists iff \B a likes \B b.

\begin{code}
postulate _cu-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\AgdaUnderscore{}cu-baupli\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-baupli} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ baupli la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \OpP{cu-baupli} \B b exists iff \B a uses \B b.

\begin{code}
postulate _cu-baupli_ : Prenu → Bangu → Set
\end{code}

\section{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}

\subsection{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{-la-varik}\ .zoi.\ du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu ciska dei je cu co'e

\paragraph{English}
\AgdaPostulate{la-varik} is the VARIK which is American, is a mathematician, writes the current sentence, and whatnot \{V\}.

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{la'o zoi.\ \F{la-lojban}\ .zoi.}

\subsection{la'o zoi.\ \AgdaPostulate{le-lojban-leksiko}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{le-lojban-leksiko}\ .zoi.\ leksiko la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\AgdaPostulate{le-lojban-leksiko} is the lexicon/vocabulary/whatever of the Lojban which is used by VARIK.

\begin{code}
postulate le-lojban-leksiko : Leksiko
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{le-lojban-gerna}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{le-lojban-gerna}\ .zoi.\ gerna la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\AgdaPostulate{le-lojban-gerna} is the grammar of the Lojban which is used by VARIK.

\begin{code}
postulate le-lojban-gerna : Gerna
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{le-lojban-me'oi-semantics}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{le-lojban-me'oi-semantics}\ .zoi.\ me'oi .semantics.\ la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\AgdaPostulate{le-lojban-me'oi-semantics} is the semantics of the Lojban which is used by VARIK.

\begin{code}
postulate le-lojban-me'oi-semantics : Semantics
\end{code}

\subsection{la'o zoi.\ \F{la-lojban}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-lojban}\ .zoi.\ jbobau la .varik.

\paragraph{English}
\F{la-lojban} is the Lojban which is used by VARIK.

\begin{code}
la-lojban : Bangu
la-lojban = record {
  leksiko = le-lojban-leksiko;
  gerna = le-lojban-gerna;
  semantics = le-lojban-me'oi-semantics
  }
\end{code}

\section{le barda ja co'e je ctaipe}

\subsection{la'oi .\AgdaPostulate{jbonartogbau}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{jbonartogbau}.\ ctaipe le su'u la .lojban.\ cu na tonga bangu

\paragraph{English}
\AgdaPostulate{jbonartogbau} is a proof of that Lojban is not a tonal language.

\begin{code}
postulate jbonartogbau : ¬ (togbau-fa la-lojban)
\end{code}

\subsection{la'oi .\AgdaPostulate{jbogernypavysmu}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{jbogernypavysmu}.\ ctaipe le su'u gerna pavysmu fa lo ro te gerna be fi la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\AgdaPostulate{jbogernypavysmu} is a proof of that syntactically unambiguous are all sentences which ``fit'' the grammar of the Lojban which is used by VARIK.

\begin{code}
postulate jbogernypavysmu : gernypavysmu-fa le-lojban-gerna
\end{code}

\subsection{la'oi .\AgdaPostulate{ozvraka'e}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{ozvraka'e}.\ ctaipe le su'u la .varik.\ cu se frili lo nu la .varik.\ cu vlaba'u lo valsi be fi lo se leksiko be le leksiko be la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\AgdaPostulate{ozvraka'e} is a proof of that easy for VARIK is that VARIK pronounces the words of the lexicon/vocabulary/whatever of the Lojban which is used by VARIK.

\begin{code}
postulate ozvraka'e : la-varik cu-vlaba'u-kakne (Bangu.leksiko la-lojban)
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{jboslabu}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{jboslabu}.\ ctaipe le su'u la .lojban.\ cu slabu la .varik.

\paragraph{English}
\AgdaPostulate{jboslabu} is a proof of that Lojban is familiar to VARIK.

\begin{code}
postulate jboslabu : la-lojban cu-slabu la-varik
\end{code}

\subsection{la'oi .\AgdaPostulate{pavybaupli}.}
\paragraph{la .lojban.}
ni'o ro da poi ke'a bangu zo'u ga janai\ldots
\begin{itemize}
	\item la .varik.\ cu baupli da gi
	\item ga je la .varik.\ cu ka'e vlaba'u lo valsi be da gi\ldots
	\begin{itemize}
		\item ga je da slabu la .varik.\ gi
		\item ga je da na tonga bangu gi
		\item ga je la .varik.\ cu nelci le gerna be da gi
		\item ga je gerna pavysmu fa lo ro jufra be fi da gi
		\item la .varik.\ cu jinvi lo du'u tu'a da filri'a lo nu ciksi ja skicu lo pluja fo lo sampu je drani
	\end{itemize}
\end{itemize}

\paragraph{English}
For all languages $A$, if $A$ is familiar to VARIK, then if $A$ is not a tonal language, then if VARIK is capable of that VARIK pronounces the words of $A$, then if VARIK likes the grammar of $A$, then if syntactically unambiguous are all sentences which ``fit'' the grammar of $A$, then if VARIK opines that $A$ facilitates that simply and correctly explains (or describes) the complex, then VARIK uses $A$.

\begin{code}
postulate
  pavybaupli : {z : Bangu}
             → z cu-slabu la-varik
             → ¬ (togbau-fa z)
             → gernypavysmu-fa $ Bangu.gerna z
             → la-varik cu-vlaba'u-kakne (Bangu.leksiko z)
             → sapydrackifilri'a-fa-tu'a z
             → la-varik cu-nelci (Bangu.leksiko z)
             → la-varik cu-baupli z
\end{code}

\subsection{la'o zoi.\ \F{jbobau-la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi la'o zoi.\ \F{jbobau-la-varik}\ .zoi.\ bau la .lojban.  .i la .varik.\ cu stidi lo nu tcidu fi le torveki be bau la .lojban.\ fe lo ro prenu poi ke'a baupli la .lojban.\ je cu djica lo nu ke'a jimpe fi le me'oi .Agda.\ velcki kei jenai cu jimpe fi le ctaipe

\paragraph{English}
VARIK not finds that necessary is that VARIK uses (for that VARIK explains \F{jbobau-la-varik}) English.  VARIK suggests that for all prenu $A$, if $A$ uses English, then if $A$ desires that $A$ understands about the proof, then if $A$ not understands about the Agda definition, then $A$ reads the English summary.

\begin{code}
jbobau-la-varik : la-varik cu-baupli la-lojban
jbobau-la-varik = pavybaupli js jntb jbogernypavysmu ozvraka'e sdfr vnll
  where
  js = jboslabu
  jntb = jbonartogbau
  postulate
    sdfr : sapydrackifilri'a-fa-tu'a la-lojban
    vnll : la-varik cu-nelci (Bangu.leksiko la-lojban)
\end{code}
\end{document}
