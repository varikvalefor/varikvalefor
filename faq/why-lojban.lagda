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

\title{le ctaipe be le su'u la .varik.\ cu baupli la .lojban.}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o vasru le velcki be le ctaipe be le su'u la .varik.\ cu baupli la .lojban.\ kei be'o poi ke'a srana le krinu je zo'e
\end{abstract}

\section{le torveki}
ni'o la .varik.\ cu baupli la .lojban.\ ni'i le su'u\ldots
\begin{itemize}
	\item ga je la. varik.\ cu ka'e vlaba'u lo valsi be la .lojban.\ gi
	\item ga je la .varik.\ cu nelci le gerna be la .lojban.\ gi
	\item ga je gerna pavysmu fa lo ro jufra be fi la .lojban.\ gi
	\item ga je la .varik.\ cu jinvi le du'u tu'a la .lojban.\ cu filri'a lo nu ciksi ja skicu lo pluja fo lo sampu je drani\ gi
	\item ro da poi ke'a bangu zo'u ga naja ga je la .varik.\ cu ka'e vlaba'u lo valsi be da gi ga je la .varik.\ cu nelci le gerna be da gi ga je gerna pavysmu fa lo ro jufra be fi da gi ga je la .varik.\ cu jinvi le du'u tu'a da filri'a lo nu ciksi ka skicu lo pluja fo lo sampu je drani gi la .varik.\ cu baupli da
\end{itemize}

\section{le vrici}

\begin{code}
open import Function
\end{code}

\section{le jicmu ja co'e}

\subsection{la'oi .\F{Prenu}.}
ni'o ro da zo'u da ctaipe la'oi .\F{Prenu}.\ jo cu prenu

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\F{Gerna}.}
ni'o ro da zo'u da ctaipe la'oi .\F{Gerna}.\ jo cu gerna

\begin{code}
postulate Gerna : Set
\end{code}

\subsection{la'oi .\F{Semantics}.}
ni'o ro da zo'u da ctaipe la'oi .\F{Semantics}.\ jo cu me'oi .semantics.  .i cumki fa lo nu cumki fa lo nu xagzengau le velcki be bau la .lojban.

\begin{code}
postulate Semantics : Set
\end{code}

\subsection{la'oi .\F{Leksiko}.}
ni'o ro da zo'u da ctaipe la'oi .\F{Leksiko}.\ jo cu leksiko

\begin{code}
postulate Leksiko : Set
\end{code}

\subsection{la'oi .\F{Bangu}.}
ni'o ga jo ko'a goi la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Bangu}.\ gi\ldots
\begin{itemize}
	\item ga je ko'a bangu gi
	\item ga je la'o zoi.\ \F{Bangu.leksiko} \B a\ .zoi.\ leksiko ko'a gi
	\item ga je la'o zoi.\ \F{Bangu.gerna} \B a\ .zoi.\ gerna ko'a gi
	\item la'o zoi.\ \F{Gerna.semantics} \B a\ .zoi.\ me'oi .semantics.\ ko'a
\end{itemize}

\begin{code}
record Bangu : Set
  where
  field
    leksiko : Leksiko
    gerna : Gerna
    semantics : Semantics
\end{code}

\subsection{la'o zoi.\ \F{vlaba'u-kakne}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \F{cu-vlaba'u-kakne} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ kakne lo nu la'o zoi.\ \B a\ .zoi.\ vlaba'u lo valsi be fi la'o zoi.\ \B b .zoi.

\begin{code}
postulate _cu-vlaba'u-kakne_ : Prenu → Leksiko → Set
\end{code}

\subsection{la'o zoi.\ \F{sapydrackifilri'a-fa-tu'a}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \F{sapydrackifilri'a-fa-tu'a} \B a\ .zoi.\ gi la .varik.\ cu jinvi ja co'e lo du'u tu'a la'o zoi.\ \B a\ .zoi.\ cu filri'a lo nu ciksi ja skicu lo pluja fo lo drani je sampu

\begin{code}
postulate sapydrackifilri'a-fa-tu'a : Bangu → Set
\end{code}

\subsection{la'oi .\F{gernypavysmu}.}
ni'o ga jo ctaipe la'o zoi.\ \F{gernypavysmu-fa} \B a\ .zoi.\ gi lo jufra be fi la'o zoi.\ \B a .zoi.\ cu gerna pavysmu

\begin{code}
postulate gernypavysmu-fa : Gerna → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-nelci\_}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \F{cu-nelci} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ nelci la'o zoi.\ \B b\ .zoi.

\begin{code}
postulate _cu-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-baupli\_}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \F{cu-baupli} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ baupli la'o zoi.\ \B b\ .zoi.

\begin{code}
postulate _cu-baupli_ : Prenu → Bangu → Set
\end{code}

\section{le velcki be la'o zoi.\ \F{la-varik}\ .zoi.}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
ni'o la'o zoi.\ \F{-la-varik}\ .zoi.\ cu du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu ciska dei je cu co'e

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{la'o zoi.\ \F{la-lojban}\ .zoi.}

\subsection{la'o zoi.\ \F{le-lojban-leksiko}\ .zoi.}

\begin{code}
postulate le-lojban-leksiko : Leksiko
\end{code}

\subsection{la'o zoi.\ \F{le-lojban-gerna}\ .zoi.}
ni'o la'o zoi.\ \F{le-lojban-gerna}\ .zoi.\ gerna la .lojban.\ poi ke'a selpli la .varik.

\begin{code}
postulate le-lojban-gerna : Gerna
\end{code}

\subsection{la'o zoi.\ \F{le-lojban-me'oi-semantics}\ .zoi.}

\begin{code}
postulate le-lojban-me'oi-semantics : Semantics
\end{code}

\subsection{la'o zoi.\ \F{la-lojban}\ .zoi.}
ni'o la'o zoi.\ \F{la-lojban}\ .zoi.\ cu du la .lojban.\ poi ke'a selpli la .varik.

\begin{code}
la-lojban : Bangu
la-lojban = record {
  leksiko = le-lojban-leksiko;
  gerna = le-lojban-gerna;
  semantics = le-lojban-me'oi-semantics
  }
\end{code}

\section{le barda ja co'e je ctaipe}

\subsection{la'oi .\F{jbogernypavysmu}.}
ni'o la'oi .\F{jbogernypavysmu}.\ ctaipe le su'u gerna pavysmu fa lo ro te gerna be fi la .lojban.\ poi ke'a selpli la .varik.

\begin{code}
postulate jbogernypavysmu : gernypavysmu-fa le-lojban-gerna
\end{code}

\subsection{la'oi .\F{ozvraka'e}.}
ni'o la'oi .\F{ozvraka'e}.\ ctaipe le su'u la .varik.\ cu se frili lo nu la .varik. cu vlaba'u lo valsi be le leksiko be la .lojban.\ poi ke'a selpli la .varik.

\begin{code}
postulate ozvraka'e : la-varik cu-vlaba'u-kakne (Bangu.leksiko la-lojban)
\end{code}

\subsection{la'oi .\F{pavybaupli}.}
ni'o ro da poi ke'a bangu zo'u ga naja\ldots
\begin{itemize}
	\item ga je la .varik.\ cu ka'e vlaba'u lo valsi be da gi\ldots
	\begin{itemize}
		\item ga je la .varik.\ cu nelci le gerna be da gi
		\item ga je gerna pavysmu fa lo ro jufra be fi da gi
		\item ga je la .varik.\ cu jinvi le du'u tu'a da filri'a lo nu ciksi ka skicu lo pluja fo lo sampu je drani gi
	\end{itemize}
	\item la .varik.\ cu baupli da
\end{itemize}

\begin{code}
postulate
  pavybaupli : {z : Bangu}
             → gernypavysmu-fa $ Bangu.gerna z
             → la-varik cu-vlaba'u-kakne (Bangu.leksiko z)
             → sapydrackifilri'a-fa-tu'a z
             → la-varik cu-nelci (Bangu.leksiko z)
             → la-varik cu-baupli z
\end{code}

\subsection{la'o zoi.\ \F{jbobau-la-varik}\ .zoi.}
ni'o la'o zoi.\ \F{jbobau-la-varik}\ .zoi.\ ctaipe le su'u la .varik.\ cu baupli la .lojban.\ poi ke'a selpli la .varik.  .i cumki fa lo nu vimcu lo'u poi ke'a selpli la .varik.\ le'u

\begin{code}
jbobau-la-varik : la-varik cu-baupli la-lojban
jbobau-la-varik = pavybaupli jbogernypavysmu ozvraka'e sdfr vnll
  where
  postulate
    sdfr : sapydrackifilri'a-fa-tu'a la-lojban
    vnll : la-varik cu-nelci (Bangu.leksiko la-lojban)
\end{code}
\end{document}
