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
\newunicodechar{∀}{\ensuremath{\mathnormal\forall}}
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

\title{le ctaipe be le su'u la .varik.\ cu te selneimau fi lo nu la .varik.\ cu fanva fi le glibau fo la .lojban.\ / The Proof of that VARIK Prefers that VARIK Translates to English and from Lojban}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
\paragraph{la .lojban.}
ni'o vasru le velcki be le ctaipe be le su'u la .varik.\ cu te selneimau fi lo nu la .varik.\ cu fanva fi le glibau fo la .lojban.\ kei lo nu la .varik.\ cu cusku bau le glibau jenai cu fanva fi le glibau fo la .lojban.

\paragraph{English}
The thing contains the definition of the proof of that VARIK prefers (over that VARIK uses English and does-not translate to English and from Lojban) that VARIK translates to English and from Lojban.
\end{abstract}

\section{le torveki / The Summary}

\subsection{le me'oi .disclaimer.}
\paragraph{la .lojban.}
ni'o pilno la'oi .\texttt{subsection}.\ jenai la'oi .\texttt{paragraph}.\ ki'u le su'u le tcita be lo se ctaipe cu smimlu lo tcita be lo jufmei

\paragraph{English}
That (labels of proofs resemble labels of paragraphs) justifies using \texttt{subsection} and not \texttt{paragraph}.

\subsection{la .lojban.}
ni'o la .varik.\ cu te selneimau fi ko'a goi lo nu vo'a fanva fi le glibau fo la .lojban.\ kei fe ko'e goi lo nu vo'a cusku bau le glibau jenai cu fanva fi le glibau fo la .lojban.\ kei ni'i le su'u\ldots
\begin{itemize}
	\item ga je ko'a zmadu ko'e le ka ce'u frili vo'a kei je le ka vo'a nelci lo jalge be ce'u gi
	\item ro da zo'u ro de zo'u ga janai da de selneimau vo'a gi da zmadu de le ka ce'u frili vo'a kei je le ka vo'a nelci lo jalge be ce'u
\end{itemize}

\subsection{English}

\begin{thm}
VARIK prefers (over that VARIK uses English and does-not translate to English and from Lojban) that VARIK translates to English and from Lojban.
\end{thm}
\begin{proof}
	${}$

	$F$ is some event of that VARIK translates to English and from Lojban.

	$N$ is some event of that (VARIK uses English and does-not translate to English and from Lojban).

	For all $A$, for all $B$, if VARIK finds that the ease of $A$ exceeds the ease of $B$, then if the extent (of that VARIK likes the result of $A$) exceeds the extent (of that VARIK likes the result of $B$), then VARIK prefers (over $B$) $A$.

	VARIK finds that the ease of $F$ exceeds the ease of $N$.

	The extent (of that VARIK likes the result of $F$) exceeds the extent of that VARIK likes the result of $N$.

	Therefore, VARIK prefers (over $N$) $F$.
\end{proof}

\section{le jicmu ja co'e / The Basic}

\subsection{la'oi .\AgdaPostulate{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, \AgdaPostulate{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Fasnu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Fasnu}.\ jo cu fasnu

\paragraph{English}
For all $A$, \AgdaPostulate{Fasnu} is the type of $A$ iff $A$ is an event.

\begin{code}
postulate Fasnu : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Selkai}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Selkai}.\ jo cu se ckaji

\paragraph{English}
For all $A$, \AgdaPostulate{Selkai}\ is the type of $A$ iff $A$ is a property/quality/whatever.

\begin{code}
postulate Selkai : Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{zmadu-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{zmadu-fa} \B a \B b \B c\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ zmadu la'o zoi.\ \B b\ .zoi.\ la'o zoi.\ \B c\ .zoi.

\paragraph{English}
\newcommand\epdisp{exhibits/possesses/displays}
A proof of \AgdaPostulate{zmadu-fa} \B a \B b \B c\ exists iff the extent (of that \B a\ \epdisp\ \B c) exceeds the extent of that \B b \epdisp\ \B c.

\begin{code}
postulate zmadu-fa : ∀ {a b} → {A : Set a} → {B : Set b}
                   → A → B → Selkai → Set
\end{code}

\section{le selkai / The Properties, Qualities, or Whatever}

\subsection{la'o zoi.\ \AgdaPostulate{la-kafrilis}\ .zoi.}

\newcommand\propglis{is the property/quality/whatever which is expressed/displayed by}

\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-kafrilis}\ .zoi.\ ka ce'u frili la .varik.

\paragraph{English}
For all $A$, \AgdaPostulate{la-kafrilis} \propglis\ $A$ iff VARIK finds that $A$ is easy.

\begin{code}
postulate la-kafrilis : Selkai
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{la-kajalneis}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-kajalneis}\ .zoi.\ ka la .varik.\ cu nelci lo jalge be ce'u

\paragraph{English}
For all $A$, \AgdaPostulate{la-kajalneis} \propglis\ $A$ iff VARIK likes the result of $A$.

\begin{code}
postulate la-kajalneis : Selkai
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{la-kaselneis}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-kaselneis}\ .zoi.\ ka ce'u selnei la .varik.

\paragraph{English}
For all $A$, \AgdaPostulate{la-kaselneis} \propglis\ $A$ iff VARIK likes $A$.

\begin{code}
postulate la-kaselneis : Selkai
\end{code}

\section{le fasnu / The Events}

\newcommand\cmene{\AgdaPostulate{la-nufanvas}}
\subsection{la'o zoi.\ \cmene\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \cmene\ .zoi.\ nu la .varik.\ cu fanva fi le glibau fo la .lojban.

\paragraph{English}
\cmene\ is an event of that VARIK translates to English and from Lojban.

\begin{code}
postulate la-nufanvas : Fasnu
\end{code}

\renewcommand\cmene{\AgdaPostulate{la-nunafanvas}}
\subsection{la'o zoi.\ \cmene\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \cmene\ .zoi.\ nu la .varik.\ cu baupli le glibau jenai cu fanva fi le glibau fo la .lojban.

\paragraph{English}
\cmene\ is an event of that VARIK uses English and does-not translate to English and from Lojban.

\begin{code}
postulate la-nunafanvas : Fasnu
\end{code}

\section{la .\AgdaPostulate{frijalnei-fa}.}
\paragraph{la .lojban.}
ni'o ro da zo'u ro de zo'u da zmadu de le ka ce'u selnei la .varik.\ kei janai ke le ka ce'u frili la .varik.\ kei je le ka la .varik.\ cu nelci lo jalge be ce'u

\paragraph{English}
For all $A$, for all $B$, if VARIK finds that the ease of $A$ exceeds the ease of $B$, then if the extent (of that VARIK likes the result of $A$) exceeds the extent of that VARIK likes the result of $B$, then VARIK prefers (over $B$) $A$.

\begin{code}
postulate
  frijalnei-fa : ∀ {a b} → {A : Set a} → {B : Set b}
               → {x : A} → {z : B}
               → zmadu-fa x z la-kafrilis
               → zmadu-fa x z la-kajalneis
               → zmadu-fa x z la-kaselneis
\end{code}

\section{le srana be le su'u selneimau / The Stuff which is Relevant to the Preference}
\paragraph{la .lojban.}
ni'o la .varik.\ na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK not finds that necessary is that VARIK provides English definitions.

\begin{code}
la-fanvynelcis : zmadu-fa la-nufanvas la-nunafanvas la-kaselneis
la-fanvynelcis = frijalnei-fa la-fanvyfrilis la-fanvyjalges
  where
  postulate
    la-fanvyfrilis : zmadu-fa la-nufanvas la-nunafanvas la-kafrilis
    la-fanvyjalges : zmadu-fa la-nufanvas la-nunafanvas la-kajalneis
\end{code}
\end{document}
