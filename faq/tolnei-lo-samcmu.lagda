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

\title{le ctaipe be le su'u la .varik.\ cu tolnei lo samcmu}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o vasru le ctaipe be le su'u la .varik.\ cu tolnei lo samcmu be'o poi ke'a srana le krinu je zo'e
\end{abstract}

\section{le vrici}

\begin{code}
open import Level
open import Function
open import Data.List
open import Data.String
open import Relation.Nullary
\end{code}

\section{le jicmu}

\subsection{la'oi .\F{Skamyklesi}.}
ni'o lo ro ctaipe be la'oi .\F{Skamyklesi}.\ cu velski ja co'e lo klesi be lo'i skami

.i skicu ja co'e le si'o jbuskami kei fa'u le si'o samfonxa kei fo la'o zoi.\ \F{lo-jbuskami}\ .zoi.\ fa'u la'o zoi.\ \F{lo-samfonxa}\ .zoi.

\begin{code}
data Skamyklesi : Set
  where
  lo-jbuskami : Skamyklesi
  lo-samfonxa : Skamyklesi
\end{code}

\subsection{la'oi .\F{Samcmu}.}
ni'o ga jo ko'a goi la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Samcmu}.\ gi ga je ko'a samcmu gi\ldots
\begin{itemize}
	\item ga je la'o zoi.\ \F{Samcmu.cmene} \B a\ .zoi.\ cmene ko'a gi
	\item la'o zoi.\ \F{Samcmu.skamyklesi} .zoi.\ velski ja co'e lo klesi be lo'i ro skami bei lo ka ce'u se mapti ko'a
\end{itemize}

\begin{code}
record Samcmu : Set
  where
  field
    cmene : String
    skamyklesi : List Skamyklesi
\end{code}

\subsection{la'oi .\F{Prenu}.}
ni'o ro da zo'u da ctaipe la'oi .\F{Prenu}.\ jo cu prenu

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
ni'o la'o zoi.\ \F{la-varik}\ .zoi.\ du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu tolnei lo skami je cu seljda le cizra je cu xamsku lo mabla

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{le bridi}

\subsection{la'oi .\F{fingubni-fa}.}
ni'o ga jo ctaipe la'o zoi.\ \F{fingubni-fa} \B a\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ fingubni

\begin{code}
postulate fingubni-fa : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-tolnei\_}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{cu-tolnei} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ tolnei la'o zoi.\ \B b\ .zoi.

\begin{code}
postulate _cu-tolnei_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'oi .\F{tolcru-lo-nu-spogau-kei-fa}.}
ni'o ga jo ctaipe la'o zoi.\ \F{tolcru-lo-nu-spogau-kei-fa} \B a .zoi.\ gi ko'a troci pe'a ru'e lo nu tolcru lo nu vimcu lo datnyvei ja co'e poi tu'a ke'a sarcu lo nu ko'a tolpo'u

\begin{code}
postulate tolcru-lo-nu-spogau-kei-fa : Samcmu → Set
\end{code}

\subsection{la'o zoi.\ \F{plivlipa-fa} .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \F{plivlipa-fa} \B a\ .zoi.\ gi ro da poi ke'a prenu zo'u ro de poi ke'a samcmu zo'u ro de xi re poi ke'a fukpi de je cu se ponse la'o zoi.\ \B a\ .zoi.\ zo'u ro di poi ke'a fasnu je poi lo ro se srana be ke'a cu du da ja de zo'u de curmi lo ro nu da gasnu di

\begin{code}
postulate plivlipa-fa : Samcmu → Set
\end{code}

\subsection{la'oi .\F{\_cu-jinvycafnysamfli}.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{jinvycafnysamfli} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ jinvi lo du'u cafne fa lo nu samfli ri'a tu'a la'o zoi.\ \B b\ .zoi.\ samfli

\begin{code}
postulate _cu-jinvycafnysamfli_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\section{le barda ja co'e je ctaipe}

\subsection{la'oi .\F{narvlipa}.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\begin{code}
postulate narvlipa : {x : Samcmu}
                   → tolcru-lo-nu-spogau-kei-fa x
                   → ¬ (plivlipa-fa x)
\end{code}

\subsection{la'oi .\F{vlipytolnei}.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\begin{code}
postulate vlipytolnei : {x : Samcmu}
                      → ¬ (plivlipa-fa x)
                      → la-varik cu-tolnei x
\end{code}

\subsection{la'oi .\F{masnytolnei}.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\begin{code}
postulate masnytolnei : {x : Samcmu}
                      → la-varik cu-jinvycafnysamfli x
                      → la-varik cu-tolnei x
\end{code}

\section{le samcmu}

\subsection{ko'a goi la'o glibau.\ Microsoft Windows Vista .glibau.\ po'u la'o zoi.\ \F{la-vista}\ .zoi.}

\subsubsection{la'o zoi.\ \F{la-vista}\ .zoi.}
\ni'o la'o zoi.\ \F{la-vista}\ .zoi. no'u ko'a cu du la'o glibau.\ Microsoft Windows Vista .glibau.\ poi ke'a selci'a la'oi .Microsoft.\ je poi gubgau ja co'e le velcki be ke'a ca le renoreze moi

\begin{code}
la-vista : Samcmu
la-vista = record {
  cmene = "Microsoft Windows Vista";
  skamyklesi = lo-jbuskami ∷ []
  }
\end{code}

\subsubsection{la'oi .\F{vistynarfingubni}.}
ni'o la'oi .\F{vistynarfingubni}.\ ctaipe le su'u ko'a na fingubni

\begin{code}
postulate vistynarfingubni : ¬ (fingubni-fa la-vista)
\end{code}

\subsubsection{la'oi .\F{vistytolspocru}.}
ni'o la'oi .\F{vistytolspocru}.\ ctaipe le su'u ko'a troci pe'a ru'e lo nu ko'a tolcru lo nu lo pilno be ko'a cu vimcu lo datnyvei poi tu'a ke'a sarcu lo nu ko'a tolpo'u

\begin{code}
postulate vistytolspocru : tolcru-lo-nu-spogau-kei-fa la-vista
\end{code}

\subsubsection{la'oi .\F{vistycafnysamfli}.}
ni'o la'oi .\F{vistymasno}.\ ctaipe le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\begin{code}
postulate vistymasno : la-varik cu-jinvycafnysamfli la-vista
\end{code}

\subsubsection{la'o zoi.\ \F{vistytolnei₁}\ .zoi.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u jitfa fa le du'u ro da poi ke'a prenu zo'u ro de poi ke'a fukpi ko'a je cu se ponse da zo'u de curmi lo ro nu da gasnu lo srana be po'o da je de

\begin{code}
vistytolnei₁ : la-varik cu-tolnei la-vista
vistytolnei₁ = vlipytolnei $ narvlipa vistytolspocru
\end{code}

\subsubsection{la'o zoi.\ \F{vistytolnei₂}\ .zoi.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\begin{code}
vistytolnei₂ : la-varik cu-tolnei la-vista
vistytolnei₂ = masnytolnei vistymasno
\end{code}
\end{document}
