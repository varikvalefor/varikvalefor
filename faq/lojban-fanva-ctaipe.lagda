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

\title{le ctaipe be le su'u la .varik.\ cu te selneimau fi lo nu la .varik.\ cu fanva fi le glibau fo la .lojban.\ kei fe lo nu la .varik.\ cu se glibau jenai fanva / The Proof of that VARIK Prefers (over that VARIK uses English and not Translates) that VARIK Translates to English and from Lojban}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o vasru le velcki be le ctaipe be le su'u la .varik.\ cu te selneimau fi lo nu la .varik.\ cu fanva fi le glibau fo la .lojban.\ kei lo nu la .varik.\ cu cusku bau le glibau jenai cu fanva fi le glibau fo la .lojban. / Contains the definition of the proof of that VARIK prefers (over that VARIK uses English and not translates to English and from Lojban) that VARIK translates to English and from Lojban.
\end{abstract}

\section{le torveki / The Summary}

\subsection{le me'oi .disclaimer.}
\paragraph{la .lojban.}
ni'o pilno la'oi .\texttt{subsection}.\ jenai la'oi .\texttt{paragraph}.\ ki'u le su'u le tcita be lo se ctaipe cu smimlu lo tcita be lo jufmei

\paragraph{English}
That (labels of proofs resemble labels of paragraphs) justifies that uses \texttt{subsection} and not \texttt{paragraph}.

\subsection{la .lojban.}
ni'o ko'a goi lo nu la .varik.\ cu fanva fi le glibau fo la .lojban.\ cu selneimau ko'e goi lo nu la .varik.\ cu cusku bau le glibau jenai cu fanva fi le glibau fo la .lojban.\ ni'i le su'u\ldots
\begin{itemize}
	\item ga je ro da zo'u ro de zo'u ga naja da zmadu de le ka ce'u frili la .varik.\ kei je le ka la .varik.\ cu nelci lo selri'a be ce'u gi da de selneimau la .varik.\ gi
	\item ko'a zmadu ko'e le ka ce'u frili la .varik. kei je le ka la .varik.\ cu nelci lo selri'a be ce'u
\end{itemize}

\subsection{English}

\newcommand\fanvas{VARIK translates to English and from Lojban}
\newcommand\nafanvas{VARIK uses English and not translates to English and from Lojban}

\begin{thm}
VARIK prefers (over that \nafanvas) that \fanvas.
\end{thm}
\begin{proof}
	${}$

	For all $A$, for all $B$, if VARIK finds that the ease of $A$ exceeds the ease of $B$, then if the extent (of that VARIK likes the result of $A$) exceeds the extent (of that VARIK likes the result of $B$, then VARIK prefers (over $B$) $A$.

	VARIK finds that the ease (of that \fanvas) exceeds the ease of that \nafanvas.

	The extent (of that VARIK likes the result of that \fanvas) exceeds the extent (of that VARIK likes the result of that \nafanvas.

	Therefore, VARIK prefers (that \fanvas) over that \nafanvas.
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

\subsection{la'oi .\F{Fasnu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Fasnu}.\ jo cu fasnu

\begin{code}
postulate Fasnu : Set
\end{code}

\subsection{la'oi .\F{Selckaji}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Selckaji}.\ jo cu se ckaji

\paragraph{English}
For all $A$, \F{Selckaji}\ is the type of $A$ iff $A$ is a property/quality.

\begin{code}
postulate Selckaji : Set
\end{code}

\subsection{la'o zoi.\ \F{zmadu-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{zmadu-fa} \B a \B b \B c\ .zoi.\ gi la'o zoi.\ \B a\ .zoi. zmadu la'o zoi.\ \B b\ .zoi.\ la'o zoi.\ \B c\ .zoi.

\paragraph{English}
\newcommand\epdisp{exhibits/possesses/displays}
A proof of \F{zmadu-fa} \B a \B b \B c\ exists iff the extent (of that \B a\ \epdisp\ \B c) exceeds the extent of that \B b \epdisp\ \B c.

\begin{code}
postulate zmadu-fa : ∀ {a b} → {A : Set a} → {B : Set b}
                   → A → B → Selckaji → Set
\end{code}

\section{le selckaji / The Properties/Qualities/Whatever}

\subsection{la'o zoi.\ \F{la-kafrilis}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-kafrilis}\ .zoi.\ cu ka ce'u frili la .varik.

\paragraph{English}
For all $A$, \F{la-kafrilis} is the property/quality/whatever which is expressed/displayed by $A$ iff VARIK finds that $A$ is easy.

\begin{code}
postulate la-kafrilis : Selckaji
\end{code}

\subsection{la'o zoi.\ \F{la-kajalneis}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-kajalneis}\ .zoi.\ cu ka la .varik.\ cu nelci lo jalge be ce'u

\paragraph{English}
For all $A$, \F{la-kajalneis} is the property/quality/whatever which is expressed/displayed by $A$ iff VARIK likes the result of $A$.

\begin{code}
postulate la-kajalneis : Selckaji
\end{code}

\subsection{la'o zoi.\ \F{la-kaselneis}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-kaselneis}\ .zoi.\ cu ka ce'u selnei la .varik.

\paragraph{English}
For all $A$, \F{la-kaselneis} is the property/quality/whatever which is expressed/displayed by $A$ iff VARIK likes $A$.

\begin{code}
postulate la-kaselneis : Selckaji
\end{code}

\section{le fasnu / The Events}

\newcommand\cmene{la'o zoi.\ \F{la-nufanvas}\ .zoi.}
\subsection{\cmene}
\paragraph{la .lojban.}
ni'o \cmene\ cu nu la .varik.\ cu fanva fi le glibau fo la .lojban.

\paragraph{English}
\F{la-nufanvas} is an event of that VARIK translates to English and from Lojban.

\begin{code}
postulate la-nufanvas : Fasnu
\end{code}

\subsection{la'o zoi.\ \F{la-nunafanvas}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-nunafanvas}\ .zoi.\ nu la .varik.\ cu se glibau jenai cu fanva fi le glibau fo la .lojban.

\paragraph{English}
\F{la-nunafanvas} is an event of that VARIK uses English and not translates to English and from Lojban.

\begin{code}
postulate la-nunafanvas : Fasnu
\end{code}

\section{la .\F{frijalnei-fa}.}
\paragraph{la .lojban.}
ni'o ro da zo'u ro de zo'u da zmadu de le ka ce'u frili la .varik.\ kei je le ka la .varik.\ cu nelci lo jalge be ce'u kei naja le ka ce'u selnei la .varik.

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
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK not finds that necessary is that VARIK provides English definitions.

\begin{code}
postulate
  la-fanvafrilis : zmadu-fa la-nufanvas la-nunafanvas la-kafrilis
  la-fanvajalges : zmadu-fa la-nufanvas la-nunafanvas la-kajalneis

la-fanvynelcis : zmadu-fa la-nufanvas la-nunafanvas la-kaselneis
la-fanvynelcis = frijalnei-fa la-fanvafrilis la-fanvajalges
\end{code}
\end{document}
