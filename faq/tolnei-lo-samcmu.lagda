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
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{₂}{\ensuremath{\mathnormal{_2}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound

\title{le ctaipe be le su'u la .varik.\ cu tolnei lo samcmu / Proofs of that VARIK Dislikes Operating Systems}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o vasru le velcki be le ctaipe be le su'u la .varik.\ cu tolnei lo samcmu be'o poi ke'a srana le krinu je zo'e / Contains definitions of proofs (of that VARIK dislikes operating systems) which are relevant to justifications and whatnot.
\end{abstract}

\section{le vrici / The Miscellaneous}

\begin{code}
open import Level
open import Function
open import Data.List
open import Data.String
open import Relation.Nullary
\end{code}

\section{le jicmu / The Basic}

\subsection{la'oi .\F{Skamyklesi}.}
\paragraph{la .lojban.}
ni'o lo ro ctaipe be la'oi .\F{Skamyklesi}.\ cu velski ja co'e lo klesi be lo'i skami
.i skicu ja co'e le si'o jbuskami kei fa'u le si'o samfonxa kei fo la'o zoi.\ \F{lo-jbuskami}\ .zoi.\ fa'u la'o zoi.\ \F{lo-samfonxa}\ .zoi.

\paragraph{English}
Values of \F{Skamyklesi} are descriptions of subsets of the set of computers.
\F{lo-jbuskami} is a description (or whatever) of the desktop computer.  \F{lo-samfonxa} is a description (or whatever) of the smartphone.


\begin{code}
data Skamyklesi : Set
  where
  lo-jbuskami : Skamyklesi
  lo-samfonxa : Skamyklesi
\end{code}

\subsection{la'oi .\F{Samcmu}.}
\paragraph{la .lojban.}
ni'o ga jo ko'a goi la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Samcmu}.\ gi ga je ko'a samcmu gi\ldots
\begin{itemize}
	\item ga je la'o zoi.\ \F{Samcmu.cmene} \B a\ .zoi.\ cmene ko'a gi
	\item la'o zoi.\ \F{Samcmu.skamyklesi} \B a\ .zoi.\ velski ja co'e lo klesi be lo'i ro skami bei lo ka ce'u se mapti ko'a
\end{itemize}

\paragraph{English}
\B a is a value of \F{Samcmu} iff (\F{Samcmu.cmene} \B a is the name of \B a, and \F{Samcmu.skamyklesi} \B a is a description (or whatever) of the computer which is compatible with \B a).

\begin{code}
record Samcmu : Set
  where
  field
    cmene : String
    skamyklesi : List Skamyklesi
\end{code}

\subsection{la'oi .\F{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, \F{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-varik}\ .zoi.\ du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu tolnei lo skami je cu seljda le cizra je cu xamsku lo mabla

\paragraph{English}
\F{la-varik} is the VARIK which is an American, is a mathematician, dislikes computers, follows a religion which is weird, and communicates jokes which fuckin' suck.

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{le bridi / The Predicates}

\subsection{la'oi .\F{fingubni-fa}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{fingubni-fa} \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ fingubni

\paragraph{English}
A proof of \F{fingubni-fa} \B a exists iff \B a is free and open-source.

\begin{code}
postulate fingubni-fa : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-tolnei\_}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{cu-tolnei} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ tolnei la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \Sym{cu-tolnei} \B b exists iff \B a dislikes \B b.

\begin{code}
postulate _cu-tolnei_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'oi .\F{tolcru-lo-nu-spogau-kei-fa}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{tolcru-lo-nu-spogau-kei-fa} \B a .zoi.\ gi ko'a troci pe'a ru'e lo nu tolcru lo nu vimcu lo datnyvei ja co'e poi tu'a ke'a sarcu lo nu ko'a tolpo'u

\paragraph{English}
A proof of \F{tolcru-lo-nu-spogau-kei-fa} \B a\ exists iff \B a\ ``attempts'' that forbids that removes files which are necessary for that \B a\ correctly functions.

\begin{code}
postulate tolcru-lo-nu-spogau-kei-fa : Samcmu → Set
\end{code}

\subsection{la'o zoi.\ \F{plivlipa-fa} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{plivlipa-fa} \B a\ .zoi.\ gi ro da poi ke'a prenu zo'u ro de poi ke'a samcmu zo'u ro de xi re poi ke'a fukpi de je cu se ponse la'o zoi.\ \B a\ .zoi.\ zo'u ro di poi ke'a fasnu je poi lo ro se srana be ke'a cu du da ja de zo'u de curmi lo ro nu da gasnu di

\paragraph{English}
A proof of \F{plivlipa-fa} \B a\ exists iff for all $A$ which is a prenu, for all $B$ which is an operating system, for all $C$ which is a copy of $B$ and is owned by $A$, for all $D$ which is an event and is relevant only to $A$ and $C$, $B$ permits that $A$ causes $D$.

\begin{code}
postulate plivlipa-fa : Samcmu → Set
\end{code}

\subsection{la'oi .\F{\_cu-jinvycafnysamfli}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{cu-jinvycafnysamfli} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ jinvi lo du'u cafne fa lo nu samfli ri'a tu'a la'o zoi.\ \B b\ .zoi.\ samfli

\paragraph{English}
A proof of \B a \Sym{cu-jinvycafnysamfli} \B b\ exists iff \B a\ opines that frequent is that \B b\ crashes.

\begin{code}
postulate _cu-jinvycafnysamfli_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-tcimi'etolnei\_}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{cu-tcimi'etolnei} \B b .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ tolnei lo tutci be lo nu tcimi'e la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \Sym{cu-tcimi'etolnei} \B b\ exists iff \B a\ dislikes the tools which facilitate that \B a\ configures \B b.

\begin{code}
postulate _cu-tcimi'etolnei_ : Prenu → Samcmu → Set
\end{code}

\section{le barda ja co'e je ctaipe / The Proofs which are Large or Something}

\subsection{la'oi .\F{narvlipa}.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK not opines that necessary is that VARIK writes an English explanation.

\begin{code}
postulate narvlipa : {x : Samcmu}
                   → tolcru-lo-nu-spogau-kei-fa x
                   → ¬ (plivlipa-fa x)
\end{code}

\subsection{la'oi .\F{vlipytolnei}.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK not opines that necessary is that VARIK writes an English explanation.

\begin{code}
postulate vlipytolnei : {x : Samcmu}
                      → ¬ (plivlipa-fa x)
                      → la-varik cu-tolnei x
\end{code}

\subsection{la'oi .\F{samflitolnei}.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK not opines that necessary is that VARIK writes an English explanation.

\begin{code}
postulate samflitolnei : {x : Samcmu}
                       → la-varik cu-jinvycafnysamfli x
                       → la-varik cu-tolnei x
\end{code}

\subsection{la'oi .\F{tcimi'ebratolnei}.}
\paragraph{la .lojban.}
ni'o ro da poi ke'a samcmu zo'u ga naja la .varik.\ cu tolnei lo tutci ja proga ja co'e be lo nu tcimi'e da gi la .varik.\ cu tolnei da

\paragraph{English}
For all operating systems $A$, if VARIK dislikes the tools/programs/things which facilitate that configures $A$, then VARIK dislikes $A$.

\begin{code}
postulate tcimi'ebratolnei : {x : Samcmu}
                           → la-varik cu-tcimi'etolnei x
                           → la-varik cu-tolnei x
\end{code}

\section{le samcmu}

\subsection{ko'a goi la'o glibau.\ Microsoft Windows Vista .glibau.\ po'u la'o zoi.\ \F{la-vista}\ .zoi.}

\subsubsection{la'o zoi.\ \F{la-vista}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-vista}\ .zoi. no'u ko'a cu du la'o glibau.\ Microsoft Windows Vista .glibau.\ poi ke'a selci'a la'oi .Microsoft.\ je poi gubgau ja co'e le velcki be ke'a ca le renonoze moi

\paragraph{English}
\F{la-vista} is the Microsoft Windows Vista which is written by Microsoft and is ``published'' circa 2007.

\begin{code}
la-vista : Samcmu
la-vista = record {
  cmene = "Microsoft Windows Vista";
  skamyklesi = lo-jbuskami ∷ []
  }
\end{code}

\subsubsection{la'oi .\F{vistynarfingubni}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{vistynarfingubni}.\ ctaipe le su'u ko'a na fingubni

\paragraph{English}
\F{vistynarfingubni} is a proof of that Microsoft Windows Vista is not a thing which is free and open-source.

\begin{code}
postulate vistynarfingubni : ¬ (fingubni-fa la-vista)
\end{code}

\subsubsection{la'oi .\F{vistytolspocru}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{vistytolspocru}.\ ctaipe le su'u ko'a troci pe'a ru'e lo nu ko'a tolcru lo nu lo pilno be ko'a cu vimcu lo datnyvei poi tu'a ke'a sarcu lo nu ko'a tolpo'u

\paragraph{English}
\F{vistytolspocru} is a proof of that Microsoft Windows Vista, a.k.a.\ ``$A$'', forbids that the user of $A$ removes files which are necessary for that $A$ correctly functions.

\begin{code}
postulate vistytolspocru : tolcru-lo-nu-spogau-kei-fa la-vista
\end{code}

\subsubsection{la'oi .\F{vistycafnysamfli}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{vistymasno}.\ ctaipe le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\paragraph{English}
\F{vistymasno} is a proof of that VARIK opines that frequent is that Microsoft Windows Vista crashes.

\begin{code}
postulate vistymasno : la-varik cu-jinvycafnysamfli la-vista
\end{code}

\subsubsection{la'o zoi.\ \F{vistytolnei₁}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u jitfa fa le du'u ro da poi ke'a prenu zo'u ro de poi ke'a fukpi ko'a je cu se ponse da zo'u de curmi lo ro nu da gasnu lo srana be po'o da je de

\paragraph{English}
That (VARIK dislikes Microsoft Windows Vista, a.k.a.\ ``$A$'') is justified by that false is that for all prenu $B$, for all copies (of $A$) $C$, false is that (for all events $D$ which pertain only to $B$ and $C$, $A$ permits that $B$ causes $D$).

\begin{code}
vistytolnei₁ : la-varik cu-tolnei la-vista
vistytolnei₁ = vlipytolnei $ narvlipa vistytolspocru
\end{code}

\subsubsection{la'o zoi.\ \F{vistytolnei₂}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\paragraph{English}
That (VARIK dislikes Microsoft Windows Vista) is justified by that VARIK opines that frequent is that Microsoft Windows Vista crashes.

\begin{code}
vistytolnei₂ : la-varik cu-tolnei la-vista
vistytolnei₂ = samflitolnei vistymasno
\end{code}

\subsection{ko'a goi la'o zoi.\ Microsoft Windows 11 .zoi.\ po'u la'o zoi.\ \F{la-parparuin}\ .zoi.}

\subsubsection{la'o zoi.\ \F{la-parparuin}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-parparuin}\ .zoi.\ du la'o zoi.\ Microsoft Windows 11 .zoi.\ poi ke'a selci'a la'oi .Microsoft.\ je poi le renorepa moi ca le nu gubgau ke'a

\paragraph{English}
\F{la-parparuin} is the Microsoft Windows 11 which is written by Microsoft and is released circa 2021.

\begin{code}
la-parparuin : Samcmu
la-parparuin = record {
  cmene = "Microsoft Windows 11";
  skamyklesi = lo-jbuskami ∷ []
  }
\end{code}

\subsubsection{la'oi .\F{parpartcimi'etolnei}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{parpartcimi'etolnei}.\ ctaipe le su'u la .varik. cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
\F{parpartcimi'etolnei} is a proof of that VARIK dislikes the tools which facilitate that configures Microsoft Windows 11.

\begin{code}
postulate parpartcimi'etolnei : la-varik cu-tcimi'etolnei la-parparuin
\end{code}

\subsubsection{la'o zoi.\ \F{parpartolnei₁}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
That (VARIK dislikes Microsoft Windows 11) is justified by that VARIK dislikes the tools which facilitate that configures Microsoft Windows 11.

\begin{code}
parpartolnei₁ : la-varik cu-tolnei la-parparuin
parpartolnei₁ = tcimi'ebratolnei parpartcimi'etolnei
\end{code}

\subsection{ko'a goi la'oi .Ubuntu.\ po'u la'o zoi.\ \F{la-ubuntus}\ .zoi.}

\subsubsection{la'o zoi.\ \F{la-ubuntus}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-ubuntus}\ .zoi.\ du la'oi .Ubuntu.\ poi ke'a mu'oi glibau.\ Linux distribution .glibau.

\paragraph{English}
\F{la-ubuntus} is the Ubuntu which is a Linux distribution.

\begin{code}
la-ubuntus : Samcmu
la-ubuntus = record {
  cmene = "Ubuntu";
  skamyklesi = lo-jbuskami ∷ []
  }
\end{code}

\subsubsection{la'oi .\F{buntcimi'etcitolnei}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'oi .\F{buntcimi'etolnei}.\ ctaipe le su'u la .varik.\ cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
\F{buntcimi'etolnei} is a proof of that VARIK dislikes the tools which facilitate that configures Ubuntu.

\begin{code}
postulate buntcimi'etolnei : la-varik cu-tcimi'etolnei la-ubuntus
\end{code}

\subsubsection{la'o zoi.\ \F{buntolnei₁}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
That (VARIK dislikes the tools which facilitate that configures Ubuntu) justifies that VARIK dislikes Ubuntu.

\begin{code}
buntolnei₁ : la-varik cu-tolnei la-ubuntus
buntolnei₁ = tcimi'ebratolnei buntcimi'etolnei
\end{code}

\subsection{ko'a goi la'o zoi.\ OpenBSD .zoi.}

\subsubsection{la'o zoi.\ \F{la-openbysydys}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-openbysydys}\ .zoi.\ du la'o zoi.\ OpenBSD .zoi.

\paragraph{English}
\F{la-openbysydys} is OpenBSD.

\begin{code}
la-openbysydys : Samcmu
la-openbysydys = record {
  cmene = "OpenBSD";
  skamyklesi = lo-jbuskami ∷ []
  }
\end{code}

\subsubsection{la'o zoi.\ \F{openbysydys-samfli}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{openbysydys-samfli}\ .zoi.\ ctaipe le su'u la .varik. cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\paragraph{English}
\F{openbysydys-samfli} is a proof of that VARIK opines that frequent is that OpenBSD crashes.

\begin{code}
postulate openbysydys-samfli : la-varik cu-jinvycafnysamfli la-openbysydys
\end{code}

\subsubsection{la'o zoi.\ \F{obstolnei₁}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\paragraph{English}
That (VARIK dislikes OpenBSD) is justified by that VARIK opines that frequent is that OpenBSD crashes.

\begin{code}
obstolnei₁ : la-varik cu-tolnei la-openbysydys
obstolnei₁ = samflitolnei openbysydys-samfli
\end{code}
\end{document}
