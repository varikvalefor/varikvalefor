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

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound

\title{le ctaipe be le su'u la .varik.\ cu cimoi prenu pe'a cusku / The Proof of that VARIK Communicates in the Third Person}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o vasru le velcki be le ctaipe be le su'u la .varik.\ cu cimoi prenu pe'a cusku / Contains the definition of the proof of that VARIK communicates in the third person.
\end{abstract}

\section{le torveki / The Summary}
\subsection{le me'oi .disclaimer.}
\paragraph{la .lojban.}
ni'o pilno la'oi .\texttt{subsection}.\ jenai la'oi .\texttt{paragraph}.\ ki'u le su'u lo tcita be lo se ctaipe cu smimlu lo tcita be lo jufmei

\paragraph{English}
That (labels of proofs resemble labels of paragraphs) justifies that uses \texttt{subsection} and not \texttt{paragraph}.

\subsection{la .lojban.}
ni'o la .varik.\ cu cimoi prenu pe'a cusku ni'i le su'u\ldots
\begin{itemize}
	\item ga je ro da zo'u ga naja ga je da cusku lo bridi jufra gi me'oi .minimise.\ da le ka mu'oi glibau.\ referential ambiguity .glibau.\ lo selsku be ce'u gi da cimoi prenu pe'a cusku gi
	\item ga je la .varik.\ cu bridi jufra cusku gi
	\item me'oi .minimise.\ la .varik.\ le ka mu'oi glibau.\ referential ambiguity .glibau.\ lo selsku be ce'u
\end{itemize}

\subsection{English}
\begin{thm}
	VARIK communicates in the third person.
\end{thm}
\begin{proof}
	${}$

	For all $A$, if $A$ communicates via predicate-based sentences, then if minimised is the extent of that referentially ambiguous are the things which are written/spoken by $A$, then $A$ communicates in the third person.

	VARIK communicates via predicate-based sentences.

	Minimised is the extent of that referentially ambiguous are the things which are written/spoken by VARIK.

	Therefore, VARIK communicates in the third person.
\end{proof}

\section{le vrici / The Miscellaneous}

\begin{code}
open import Function
open import Relation.Nullary
  using (
    ¬_
  )
\end{code}

\section{le jicmu / The Basic}

\subsection{la'oi .\F{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, \F{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\section{le prenu / The Prenu}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-varik}\ .zoi.\ du la .varik.\ .VALefor.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu cusku dei je cu nelci le .else poi la'o glibau.\ Limp Bizkit .glibau.\ zbasu ke'a xi re

\paragraph{English}
\F{la-varik} is the VARIK VALEFOR which is an American, is a mathematician, writes the current sentence, and likes the songs which are created by Limp Bizkit.

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{le bridi / The Predicates}

\subsection{la'o zoi.\ \F{nargaubasyvla-cusku-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{nargaubasyvla-cusku-fa}\ \B a\ .zoi.\ gi lo su'o nu la'o zoi.\ \B a\ .zoi.\ cusku lo nargaubasyvla cu na nu la'o zoi.\ \B a\ .zoi.\ sitsku

\paragraph{English}
A proof of \F{nargaybasyvla-cusku-fa}\ \B a\ exists iff some event of that \B a\ uses nargaubasyvla is not an event of that \B a\ quotes.

\begin{code}
postulate nargaubasyvla-cusku-fa : Prenu → Set
\end{code}

\subsection{la'o zoi.\ \F{pamoi-prenu-cusku-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{pamoi-prenu-cusku-fa}\ \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ pamoi prenu pe'a cusku

\paragraph{English}
A proof of \F{pamoi-prenu-cusku-fa}\ \B a\ exists iff \B a\ communicates in the first person.

\begin{code}
postulate pamoi-prenu-cusku-fa : Prenu → Set
\end{code}

\subsection{la'o zoi.\ \F{remoi-prenu-cusku-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{remoi-prenu-cusku-fa}\ \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ remoi prenu pe'a cusku

\paragraph{English}
A proof of \F{remoi-prenu-cusku-fa}\ \B a\ exists iff \B a\ communicates in the second person.

\begin{code}
postulate remoi-prenu-cusku-fa : Prenu → Set
\end{code}

\subsection{la'o zoi.\ \F{cimoi-prenu-cusku-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{cimoi-prenu-cusku-fa}\ \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ cimoi prenu pe'a cusku

\paragraph{English}
A proof of \F{cimoi-prenu-cusku-fa}\ \B a\ exists iff \B a\ communicates in the third person.

\begin{code}
postulate cimoi-prenu-cusku-fa : Prenu → Set
\end{code}

\subsection{la'o zoi.\ \F{jufra-cusku-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{jufra-cusku-fa}\ \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ cusku lo bridi jufra

\paragraph{English}
A proof of \F{jufra-cusku-fa}\ \B a\ exists iff \B a\ communicates via predicate-based sentences.

\begin{code}
postulate jufra-cusku-fa : Prenu → Set
\end{code}

\section{le fancu / The Functions}

\subsection{la'o zoi.\ \F{mleskutolvrici-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{mleskutolvrici-fa}\ \B a\ .zoi.\ gi me'oi .minimise.\ la'o zoi.\ \B a\ .zoi.\ le ka mu'oi glibau.\ referential ambiguity .glibau.\ lo selsku be ce'u

\paragraph{English}
A proof of \F{mleskutolvrici-fa}\ \B a\ exists iff minimised is the extent of that referentially ambiguous are the things which are written/spoken by \B a.

\begin{code}
postulate mleskutolvrici-fa : Prenu → Set
\end{code}

\subsection{la'oi .\F{mleskunargaubasyvla}.}
\paragraph{la .lojban.}
ni'o ro da zo'u ga janai da cusku lo nargaubasyvla naja cu sitsku gi me'oi .minimise.\ la'o zoi.\ \B a\ .zoi.\ le ka mu'oi glibau.\ referential ambiguity .glibau.\ lo selsku be ce'u

\paragraph{English}
For all $A$, if minimised is the extent of that referentially ambiguous are the things which are written/spoken by $A$, then every event (of that $A$ uses nargaubasyvla) is an event of that $A$ quotes.

\begin{code}
postulate
  mleskunargaubasyvla : {z : Prenu}
                      → mleskutolvrici-fa z
                      → ¬ (nargaubasyvla-cusku-fa z)
\end{code}

\subsection{la'o zoi.\ \F{nargaubasyvla-cusku}\ .zoi.}
\paragraph{la .lojban.}
ni'o ro da poi ke'a prenu zo'u ga naja ga je da cusku lo bridi jufra gi da cusku lo nargaubasyvla naja cu sitsku gi da cimoi prenu pe'a cusku

\paragraph{English}
For all prenu $A$, if $A$ communicates via predicate-based sentences, then if every event (of that $A$ uses nargaubasyvla) is an event of that $A$ quotes, then $A$ communicates in the ``third person''.

\begin{code}
postulate
  nargaubasyvla-cusku : {z : Prenu}
                      → jufra-cusku-fa z
                      → ¬ (nargaubasyvla-cusku-fa z)
                      → cimoi-prenu-cusku-fa z
\end{code}

\section{le ctaipe / The Proof}
\paragraph{la .lojban.}
ni'o le me'oi .section.\ cu vasru le velcki be ko'a goi le ctaipe bei bau la'oi .Agda.  .i la .varik.\ cu na jinvi le du'u sarcu fa lo nu la .varik.\ cu ciksi ko'a bau la .lojban.

\paragraph{English}
The section contains the Agda definition of the proof\@.  VARIK not opines that necessary is that VARIK provides an English explanation of the Agda definition of the proof.

\begin{code}
postulate le-suvmlesmu : mleskutolvrici-fa la-varik
postulate le-suvjufsku : jufra-cusku-fa la-varik

le-suvnarpli : ¬ (nargaubasyvla-cusku-fa la-varik)
le-suvnarpli = mleskunargaubasyvla le-suvmlesmu

la-cimois : cimoi-prenu-cusku-fa la-varik
la-cimois = nargaubasyvla-cusku le-suvjufsku le-suvnarpli
\end{code}
\end{document}
