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

\newunicodechar{∀}{\ensuremath{\mathnormal{\forall}}}

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

.i ji'a la .varik.\ te selneimau lo nu la .varik.\ cu cimoi prenu pe'a cusku kei lo nu la .varik.\ cu ke pamoi ja remoi ke'e prenu pe'a cusku kei ni'i le su'u\ldots
\begin{itemize}
	\item ga je ro da zo'u ro de zo'u da zmadu de le ka ce'u selnei la .varik.\ kei janai le ka ce'u frili la .varik.\ kei je bo le ka la .varik.\ cu nandu lo jalge be ce'u gi
        \item lo nu la .varik.\ cu cimoi prenu pe'a cusku cu zmadu lo nu la .varik.\ cu ke pamoi ja remoi ke'e prenu pe'a cusku kei le ka ce'u frili la .varik.\ kei je le ka la .varik.\ cu nelci lo jalge be ce'u
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

\begin{thm}
	VARIK prefers (over that (VARIK communicates in the first person) and that VARIK communicates in the second person) that VARIK communicates in the third person.
\end{thm}
\begin{proof}
	${}$

	``$f_1$'' is some event of that VARIK communicates in the first person.

	``$f_2$'' is some event of that VARIK communicates in the second person.

	``$f_3$'' is some event of that VARIK communicates in the third person.

	For all $A$, for all $B$, if VARIK finds that the ease of $A$ exceeds the ease of $B$, then if the extent (of that VARIK likes the result of $A$) exceeds the extent of that VARIK likes the result of $B$, then VARIK prefers (over $B$) $A$.

	VARIK finds that the ease of $f_3$ exceeds the ease of $f_1$ and the ease of $f_2$.

	The extent (of that VARIK likes the result of $f_3$) exceeds the extent (of that VARIK likes the result of $f_1$) and the extent of that VARIK likes the result of $f_1$.

	Therefore, VARIK prefers (over $f_1$ and $f_2$) $f_3$.
\end{proof}

\section{le vrici / The Miscellaneous}

\begin{code}
open import Function
open import Data.Product
  using (
    _×_;
    _,_
  )
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

\section{le fasnu / The Events}

\newcommand\fsn{\AgdaPostulate{la-pamoicuskus}}
\subsection{la'o zoi.\ \fsn\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \fsn\ .zoi.\ nu la .varik.\ cu pamoi prenu pe'a cusku

\paragraph{English}
\fsn\ is an event of that VARIK communicates in the first person.

\begin{code}
postulate la-pamoicuskus : Set
\end{code}

\renewcommand\fsn{\AgdaPostulate{la-remoicuskus}}
\subsection{la'o zoi.\ \fsn\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \fsn\ .zoi.\ nu la .varik.\ cu remoi prenu pe'a cusku

\paragraph{English}
\fsn\ is an event of that VARIK communicates in the second person.

\begin{code}
postulate la-remoicuskus : Set
\end{code}

\renewcommand\fsn{\AgdaPostulate{la-cimoicuskus}}
\subsection{la'o zoi.\ \fsn\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \fsn\ .zoi.\ nu la .varik.\ cu cimoi prenu pe'a cusku

\paragraph{English}
\fsn\ is an event of that VARIK communicates in the third person.

\begin{code}
postulate la-cimoicuskus : Set
\end{code}

\section{le se ckaji / The Properties}

\renewcommand\fsn{\AgdaPostulate{la-kafrilis}}
\subsection{la'o zoi.\ \fsn\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \fsn \B a\ .zoi.\ ka ce'u frili la'oi .\B{a}.

\begin{code}
postulate la-kafrilis : Prenu → Set
\end{code}

\renewcommand\fsn{\AgdaPostulate{la-kajalneis}}
\subsection{la'o zoi.\ \fsn\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \fsn \B a\ .zoi.\ ka la'oi .\B{a}.\ nelci lo jalge be ce'u

\begin{code}
postulate la-kajalneis : Prenu → Set
\end{code}

\renewcommand\fsn{\AgdaPostulate{la-kanelcis}}
\subsection{la'o zoi.\ \fsn\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \fsn \B a\ .zoi.\ ka la'oi .\B{a}.\ nelci ce'u

\begin{code}
postulate la-kanelcis : Prenu → Set
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

\subsection{la'o zoi.\ \F{mleskutolvrici-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{mleskutolvrici-fa}\ \B a\ .zoi.\ gi me'oi .minimise.\ la'o zoi.\ \B a\ .zoi.\ le ka mu'oi glibau.\ referential ambiguity .glibau.\ lo selsku be ce'u

\paragraph{English}
A proof of \F{mleskutolvrici-fa}\ \B a\ exists iff minimised is the extent of that referentially ambiguous are the things which are written/spoken by \B a.

\begin{code}
postulate mleskutolvrici-fa : Prenu → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{zmadu-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{zmadu-fa} \B a \B b \B c\ .zoi.\ gi la'oi .\B{a}.\ zmadu la'oi .\B{b}.\ la'oi .\B{c}.

\paragraph{English}
A proof of \AgdaPostulate{zmadu-fa} \B a \B b \B c\ exists iff (\B c\ is a property/quality/whatever, and the extent (of that \B a\ exhibits/possesses/displays \B c) exceeds the extent of that \B b\ exhibits/possesses/displays \B b).
\begin{code}
postulate
  zmadu-fa : ∀ {a b c} → {A : Set a} → {B : Set b} → {C : Set c}
           → A → B → C → Set
\end{code}

\section{le fancu / The Functions}

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

\subsection{la'oi .\F{frijalnei}.}
\paragraph{la .lojban.}
ni'o ro da zo'u ro de zo'u da zmadu de le ka ce'u selnei la .varik.\ kei janai le ka ce'u frili la .varik.\ kei je bo le ka la .varik.\ cu nelci lo jalge be ce'u

\paragraph{English}
For all $A$, if VARIK finds that the ease of $A$ exceeds the ease of $B$, then if VARIK prefers (over the result of $A$) the result of $B$, then VARIK prefers (over $B$) $A$.

\begin{code}
postulate
  frijalnei : ∀ {a b} → {A : Set a} → {B : Set b}
            → {p : A} → {r : B}
            → zmadu-fa p r (la-kafrilis la-varik)
            → zmadu-fa p r (la-kajalneis la-varik)
            → zmadu-fa p r (la-kanelcis la-varik)
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

la-revycimois : (_×_
                  (zmadu-fa
                    la-cimoicuskus
                    la-pamoicuskus
                    (la-kanelcis la-varik))
                  (zmadu-fa
                    la-cimoicuskus
                    la-remoicuskus
                    (la-kanelcis la-varik)))
la-revycimois = frijalnei pif pij , frijalnei rif rij
  where
  j = la-kajalneis la-varik
  f = la-kafrilis la-varik
  postulate
    pij : zmadu-fa la-cimoicuskus la-pamoicuskus j
    pif : zmadu-fa la-cimoicuskus la-pamoicuskus f
    rij : zmadu-fa la-cimoicuskus la-remoicuskus j
    rif : zmadu-fa la-cimoicuskus la-remoicuskus f
\end{code}
\end{document}
