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
\newunicodechar{ℕ}{\ensuremath{\mathbb{N}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\forall}}
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
\newunicodechar{ᵇ}{\ensuremath{^\mathrm{b}}}
\newunicodechar{≟}{\ensuremath{\stackrel{?}{=}}}
\newunicodechar{≤}{\ensuremath{\mathnormal{\leq}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound

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
ni'o pilno la'oi .\texttt{subsection}.\ jenai la'oi .\texttt{paragraph}.\ ki'u le su'u le tcita be lo se ctaipe cu smimlu lo tcita be lo jufmei

\paragraph{English}
That (labels of proofs resemble labels of paragraphs) justifies that uses \texttt{subsection} and not \texttt{paragraph}.

\subsection{la .lojban.}
ni'o la .varik.\ cu baupli la .lojban.\ ni'i le su'u\ldots
\begin{itemize}
        \item ga je la .lojban.\ cu na tonga bangu gi
	\item ga je la. varik.\ cu ka'e vlaba'u lo valsi be fi la .lojban.\ gi
	\item ga je la .varik.\ cu nelci le gerna be la .lojban.\ gi
	\item ga je gerna pavysmu fa lo ro jufra be fi la .lojban.\ gi
	\item ga je la .varik.\ cu jinvi le du'u tu'a la .lojban.\ cu filri'a lo nu ciksi ja skicu lo pluja fo lo sampu je drani\ gi
	\item ro da poi ke'a bangu zo'u ga naja ga je da na tonga bangu gi ga je la .varik.\ cu ka'e vlaba'u lo valsi be fi da gi ga je la .varik.\ cu nelci le gerna be da gi ga je gerna pavysmu fa lo ro jufra be fi da gi ga je la .varik.\ cu jinvi le du'u tu'a da filri'a lo nu ciksi ka skicu lo pluja fo lo sampu je drani gi la .varik.\ cu baupli da
\end{itemize}

\subsection{English}
\begin{thm}
	VARIK uses Lojban.
\end{thm}
\begin{proof}
	${}$

	Lojban is not a tonal language.

	VARIK is capable of that VARIK pronounces the words of Lojban.

	VARIK likes the grammar of Lojban.

	Syntactically unambiguous are all sentences which ``fit'' the grammar of Lojban.

	VARIK opines that Lojban facilitates that simply and correctly describes (or explains) the complex.

	For all languages $A$, if $A$ is not a tonal language, then if VARIK is capable of that VARIK pronounces the words of $A$, then if VARIK likes the grammar of $A$, then if syntactically unambiguous are all sentences which ``fit'' the grammar of $A$, then if VARIK opines that $A$ facilitates that simply and correctly describes the complex, then VARIK uses $A$.

	Therefore, VARIK uses Lojban.
\end{proof}


\section{le vrici / The Miscellaneous}

\begin{code}
open import Function
open import Relation.Nullary
\end{code}

\section{le jicmu ja co'e / The Basic}

\subsection{la'oi .\F{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, \F{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\F{Gerna}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Gerna}.\ jo cu gerna

\paragraph{English}
For all $A$, \F{Gerna} is the type of $A$ iff $A$ is a grammar.

\begin{code}
postulate Gerna : Set
\end{code}

\subsection{la'oi .\F{Semantics}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Semantics}.\ jo cu me'oi .semantics.  .i cumki fa lo nu cumki fa lo nu xagzengau le velcki be bau la .lojban.

\paragraph{English}
For all $A$, \F{Semantics} is the type of $A$ iff $A$ is a semantics.

\begin{code}
postulate Semantics : Set
\end{code}

\subsection{la'oi .\F{Leksiko}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Leksiko}.\ jo cu leksiko

\paragraph{English}
For all $A$, \F{Leksiko} is the type of $A$ iff $A$ is a lexicon/vocabulary/whatever.

\begin{code}
postulate Leksiko : Set
\end{code}

\subsection{la'oi .\F{Bangu}.}
\paragraph{la .lojban.}
ni'o ga jo ko'a goi la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Bangu}.\ gi\ldots
\begin{itemize}
	\item ga je ko'a bangu gi
	\item ga je la'o zoi.\ \F{Bangu.leksiko} \B a\ .zoi.\ leksiko ko'a gi
	\item ga je la'o zoi.\ \F{Bangu.gerna} \B a\ .zoi.\ gerna ko'a gi
	\item la'o zoi.\ \F{Gerna.semantics} \B a\ .zoi.\ me'oi .semantics.\ ko'a
\end{itemize}

\paragraph{English}
For all \B a, \F{Bangu} is the type of \B a iff (\B a is a grammar, and \F{Bangu.leksiko} \B a is the lexicon/vocabulary/whatever of \B a, and \F{Bangu.gerna} \B a is the grammar of \B a, and \F{Gerna.semantics} \B a is the semantics of \B a).

\begin{code}
record Bangu : Set
  where
  field
    leksiko : Leksiko
    gerna : Gerna
    semantics : Semantics
\end{code}

\subsection{la'o zoi.\ \F{togbau-fa} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{togbau-fa} \B a\ .zoi.\ gi la'o zoi.\ \B a .zoi.\ tonga bangu

\paragraph{English}
A proof of \F{togbau-fa} \B a exists iff \B a is a tonal language.

\begin{code}
postulate togbau-fa : Bangu → Set
\end{code}

\subsection{la'o zoi.\ \F{vlaba'u-kakne}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \F{cu-vlaba'u-kakne} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ kakne lo nu la'o zoi.\ \B a\ .zoi.\ vlaba'u lo valsi be fi la'o zoi.\ \B b .zoi.

\paragraph{English}
A proof of \B a \F{cu-vlaba'u-kakne} \B b exists iff \B a is capable of that \B a pronounces the words of \B b.

\begin{code}
postulate _cu-vlaba'u-kakne_ : Prenu → Leksiko → Set
\end{code}

\subsection{la'o zoi.\ \F{sapydrackifilri'a-fa-tu'a}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{sapydrackifilri'a-fa-tu'a} \B a\ .zoi.\ gi la .varik.\ cu jinvi ja co'e lo du'u tu'a la'o zoi.\ \B a\ .zoi.\ cu filri'a lo nu ciksi ja skicu lo pluja fo lo drani je sampu

\paragraph{english}
A proof of \F{sapydrackifilri'a-fa-tu'a} \B a exists iff VARIK opines (or whatever \{V\}) that \B a facilitates that simply and correctly explains (or describes) the complex.

\begin{code}
postulate sapydrackifilri'a-fa-tu'a : Bangu → Set
\end{code}

\subsection{la'oi .\F{gernypavysmu}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{gernypavysmu-fa} \B a\ .zoi.\ gi lo jufra be fi la'o zoi.\ \B a .zoi.\ cu gerna pavysmu

\paragraph{English}
A proof of \F{gernypavysmu-fa} \B a exists iff all sentences of \B a are syntactically unambiguous.

\begin{code}
postulate gernypavysmu-fa : Gerna → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-nelci\_}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \F{cu-nelci} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ nelci la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \F{cu-nelci} \B b exists iff \B a likes \B b.

\begin{code}
postulate _cu-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-baupli\_}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \F{cu-baupli} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ baupli la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \F{cu-baupli} \B b exists iff \B a uses \B b.

\begin{code}
postulate _cu-baupli_ : Prenu → Bangu → Set
\end{code}

\section{le velcki be la'o zoi.\ \F{la-varik}\ .zoi.\ / The Definition of \F{la-varik}}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{-la-varik}\ .zoi.\ cu du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu ciska dei je cu co'e

\paragraph{English}
\F{la-varik} is the VARIK which is American, is a mathematician, writes the current sentence, and whatnot \{V\}.

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{la'o zoi.\ \F{la-lojban}\ .zoi.}

\subsection{la'o zoi.\ \F{le-lojban-leksiko}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{le-lojban-leksiko}\ .zoi.\ leksiko la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\F{le-lojban-leksiko} is the lexicon/vocabulary/whatever of the Lojban which is used by VARIK.

\begin{code}
postulate le-lojban-leksiko : Leksiko
\end{code}

\subsection{la'o zoi.\ \F{le-lojban-gerna}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{le-lojban-gerna}\ .zoi.\ gerna la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\F{le-lojban-gerna} is the grammar of the Lojban which is used by VARIK.

\begin{code}
postulate le-lojban-gerna : Gerna
\end{code}

\subsection{la'o zoi.\ \F{le-lojban-me'oi-semantics}\ .zoi.}

\begin{code}
postulate le-lojban-me'oi-semantics : Semantics
\end{code}

\subsection{la'o zoi.\ \F{la-lojban}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-lojban}\ .zoi.\ cu du la .lojban.\ poi ke'a se baupli la .varik.

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

\subsection{la'oi .\F{jbonartogbau}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{jbonartogbau}.\ ctaipe le su'u la .lojban.\ cu na tonga bangu

\paragraph{English}
\F{jbonartogbau} is a proof of that Lojban is not a tonal language.

\begin{code}
postulate jbonartogbau : ¬ (togbau-fa la-lojban)
\end{code}

\subsection{la'oi .\F{jbogernypavysmu}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{jbogernypavysmu}.\ ctaipe le su'u gerna pavysmu fa lo ro te gerna be fi la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\F{jbogernypavysmu} is a proof of that syntactically unambiguous are all sentences which ``fit'' the grammar of the Lojban which is used by VARIK.

\begin{code}
postulate jbogernypavysmu : gernypavysmu-fa le-lojban-gerna
\end{code}

\subsection{la'oi .\F{ozvraka'e}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{ozvraka'e}.\ ctaipe le su'u la .varik.\ cu se frili lo nu la .varik. cu vlaba'u lo valsi be fi lo se leksiko be le leksiko be la .lojban.\ poi ke'a se baupli la .varik.

\paragraph{English}
\F{ozvraka'e} is a proof of that easy for VARIK is that VARIK pronounces the words of the lexicon/vocabulary/whatever of the Lojban which is used by VARIK.

\begin{code}
postulate ozvraka'e : la-varik cu-vlaba'u-kakne (Bangu.leksiko la-lojban)
\end{code}

\subsection{la'oi .\F{pavybaupli}.}
\paragraph{la .lojban.}
ni'o ro da poi ke'a bangu zo'u ga naja\ldots
\begin{itemize}
	\item ga je la .varik.\ cu ka'e vlaba'u lo valsi be da gi\ldots
	\begin{itemize}
                \item ga je da na tonga bangu gi
		\item ga je la .varik.\ cu nelci le gerna be da gi
		\item ga je gerna pavysmu fa lo ro jufra be fi da gi
		\item ga je la .varik.\ cu jinvi le du'u tu'a da filri'a lo nu ciksi ka skicu lo pluja fo lo sampu je drani gi
	\end{itemize}
	\item la .varik.\ cu baupli da
\end{itemize}

\paragraph{English}
For all languages $A$, if $A$ is not a tonal language, then if VARIK is capable of that VARIK pronounces the words of $A$, then if VARIK likes the grammar of $A$, then if syntactically unambiguous are all sentences which ``fit'' the grammar of $A$, then if VARIK opines that $A$ facilitates that simply and correctly explains (or describes) the complex, then VARIK uses $A$.

\begin{code}
postulate
  pavybaupli : {z : Bangu}
             → ¬ (togbau-fa z)
             → gernypavysmu-fa $ Bangu.gerna z
             → la-varik cu-vlaba'u-kakne (Bangu.leksiko z)
             → sapydrackifilri'a-fa-tu'a z
             → la-varik cu-nelci (Bangu.leksiko z)
             → la-varik cu-baupli z
\end{code}

\subsection{la'o zoi.\ \F{jbobau-la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{jbobau-la-varik}\ .zoi.\ ctaipe le su'u la .varik.\ cu baupli la .lojban.\ poi ke'a se baupli la .varik.  .i cumki fa lo nu vimcu lo'u poi ke'a se baupli la .varik.\ le'u

\paragraph{English}
\F{jbobau-la-varik} is a proof of that VARIK uses the Lojban which is used by VARIK.  Possible is that omits ``which is used by VARIK''.

\begin{code}
jbobau-la-varik : la-varik cu-baupli la-lojban
jbobau-la-varik = pavybaupli jntb jbogernypavysmu ozvraka'e sdfr vnll
  where
  jntb = jbonartogbau
  postulate
    sdfr : sapydrackifilri'a-fa-tu'a la-lojban
    vnll : la-varik cu-nelci (Bangu.leksiko la-lojban)
\end{code}
\end{document}
