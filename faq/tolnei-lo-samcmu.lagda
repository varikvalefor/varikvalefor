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
\newunicodechar{ℕ}{\ensuremath{\mathbb N}}
\newunicodechar{∘}{\ensuremath{\mathnormal\circ}}
\newunicodechar{∀}{\ensuremath{\mathnormal\forall}}
\newunicodechar{∃}{\ensuremath{\mathnormal\exists}}
\newunicodechar{≡}{\ensuremath{\mathnormal\equiv}}
\newunicodechar{⊤}{\ensuremath{\mathnormal\top}}
\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{→}{\ensuremath{\mathnormal\rightarrow}}
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{₂}{\ensuremath{\mathnormal{_2}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\title{le ctaipe be le su'u la .varik.\ cu tolnei lo samcmu / Proofs of that VARIK Dislikes Operating Systems}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o so'i da poi ke'a samcmu zo'u vasru le velcki be le ctaipe be le su'u la .varik.\ cu tolnei da be'o poi ke'a srana zo'e je le krinu / Many operating systems $A$ exist such that the thing contains a definition of a proof (of that VARIK dislikes $A$) which is relevant to justifications and whatnot.
\end{abstract}

\section{le vrici / The Miscellaneous}

\begin{code}
open import Data.Fin
  using (
    zero
  )
open import Function
  using (
    _∘_;
    _$_
  )
open import Data.List
  using (
    lookup;
    List;
    _∷_;
    []
  )
open import Data.String
  using (
    String
  )
open import Data.Product
  using (
    _,_;
    ∃
  )
open import Relation.Nullary
  using (
    ¬_
  )
open import Relation.Binary.PropositionalEquality
  using (
    _≡_;
    refl
  )
\end{code}

\section{le torveki / The Summary}

\subsection{ko'a goi la'o zoi.\ Microsoft Windows Vista .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a kei kei kei je le su'u jitfa fa le du'u ro da poi ke'a prenu zo'u ro de poi ke'a fukpi ko'a je cu se ponse da zo'u de curmi lo ro nu da gasnu lo srana be po'o da je de

\paragraph{English}
``$A$'' denotes Microsoft Windows Vista.  That (VARIK dislikes $A$) is justified by that false is that for all prenu $B$, for all copies (of $A$) $C$, for all events (which pertain only to $B$ and $C$) $D$, $A$ permits that $B$ causes $D$.  Additionally, that (VARIK dislikes $A$) is justified by that VARIK opines that frequent is that $A$ crashes.

\subsection{ko'a goi la'o zoi.\ Microsoft Windows 11 .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
That (VARIK dislikes Microsoft Windows 11) is justified by that VARIK dislikes the tools which facilitate configuring Microsoft Windows 11.

\subsection{ko'a goi la'oi .Ubuntu.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
That (VARIK dislikes the tools which facilitate configuring Ubuntu) justifies that VARIK dislikes Ubuntu.

\subsection{la'oi .OpenBSD.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\paragraph{English}
That (VARIK dislikes OpenBSD) is justified by that VARIK opines that frequent is that OpenBSD crashes.

\subsection{ko'a goi ka'oi .Haiku.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a ki'u le su'u tolcru lo nu su'o da poi ke'a me ko'a samcmu zo'u ko'a goi lo prenu cu cmisau da ca lo nu cmisau ko'a fa lo na du be ko'a

\paragraph{English}
That (VARIK dislikes Haiku) is justified by that forbidden is that some Haiku system $A$ exists such that some prenu $B$ exists such that some prenu (which is not $B$) $C$ exists such that that $B$ is signed in on $A$ is contemporaneous with that $C$ is signed in on $A$.

\section{le jicmu / The Basic}

\subsection{la'oi .\D{Skamyklesi}.}
\paragraph{la .lojban.}
ni'o lo ro ctaipe be la'oi .\D{Skamyklesi}.\ cu co'e ja velski lo klesi be lo'i skami
.i co'e ja skicu\ldots
\begin{enumerate}
	\item le si'o jbuskami kei fa'u
	\item le si'o samfonxa kei
\end{enumerate}
fo\ldots
\begin{enumerate}
	\item la'o zoi.\ \AgdaInductiveConstructor{lo-jbuskami}\ .zoi.\ fa'u
	\item la'o zoi.\ \AgdaInductiveConstructor{lo-samfonxa}\ .zoi.
\end{enumerate}

\paragraph{English}
Values of \D{Skamyklesi} are descriptions of subsets of the set of computers.
\AgdaInductiveConstructor{lo-jbuskami} is a description (or whatever) of the desktop computer.  \AgdaInductiveConstructor{lo-samfonxa} is a description (or whatever) of the smartphone.


\begin{code}
data Skamyklesi : Set
  where
  lo-jbuskami : Skamyklesi
  lo-samfonxa : Skamyklesi
\end{code}

\subsection{la'oi .\AgdaRecord{Samcmu}.}
\paragraph{la .lojban.}
ni'o ga jo ko'a goi la'oi .\B{a}.\ ctaipe la'oi .\AgdaRecord{Samcmu}.\ gi ga je ko'a samcmu gi\ldots
\begin{itemize}
	\item ga je la'o zoi.\ \AgdaField{Samcmu.cmene} \B a\ .zoi.\ cmene ko'a gi
	\item la'o zoi.\ \AgdaField{Samcmu.skamyklesi} \B a\ .zoi.\ co'e ja velski lo klesi be lo'i ro skami lo ka ce'u se mapti ko'a
\end{itemize}

\paragraph{English}
\AgdaRecord{Samcmu} is the type of \B a iff (\AgdaField{Samcmu.cmene} \B a is the name of \B a, and \AgdaField{Samcmu.skamyklesi} \B a is a description (or whatever) of the computer which is compatible with \B a).

\begin{code}
record Samcmu : Set
  where
  field
    cmene : String
    skamyklesi : List Skamyklesi
\end{code}

\subsection{la'oi .\AgdaPostulate{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, \AgdaPostulate{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.\ du la .varik.\ poi ke'a se gugde le merko zi'o je cu cmacypre je cu tolnei lo skami je cu seljda le cizra je cu xamsku lo mabla

\paragraph{English}
\AgdaPostulate{la-varik} is the VARIK which is an American, is a mathematician, dislikes computers, follows a religion which is weird, and communicates jokes which fuckin' suck.

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{le bridi / The Predicates}

\subsection{la'o zoi.\ \AgdaPostulate{fingubni-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{fingubni-fa} \B a\ .zoi.\ gi la'oi .\B{a}.\ fingubni

\paragraph{English}
A proof of \AgdaPostulate{fingubni-fa} \B a exists iff \B a is free and open-source.

\begin{code}
postulate fingubni-fa : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-tolnei\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-tolnei} \B b\ .zoi.\ gi la'oi .\B{a}.\ tolnei la'oi .\B{b}.

\paragraph{English}
A proof of \B a \OpP{cu-tolnei} \B b exists iff \B a dislikes \B b.

\begin{code}
postulate _cu-tolnei_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{tolcru-lo-nu-spogau-kei-fa}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{tolcru-lo-nu-spogau-kei-fa} \B a .zoi.\ gi ko'a goi la'oi .\B{a}.\ troci pe'a ru'e lo nu tolcru lo nu vimcu lo co'e ja datnyvei poi tu'a ke'a sarcu lo nu ko'a tolpo'u

\paragraph{English}
A proof of \AgdaPostulate{tolcru-lo-nu-spogau-kei-fa} \B a\ exists iff \B a\ ``attempts'' that forbidden is removing files which are necessary for that \B a\ correctly functions.

\begin{code}
postulate tolcru-lo-nu-spogau-kei-fa : Samcmu → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{plivlipa-fa} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{plivlipa-fa} \B a\ .zoi.\ gi ro da poi ke'a prenu zo'u ro de poi ke'a samcmu zo'u ro de xi re poi ke'a fukpi de je cu se ponse la'oi .\B{a}.\ zo'u ro di poi ke'a fasnu je poi da je de xi re du lo ro se srana be ke'a zo'u de curmi lo ro nu da gasnu di

\paragraph{English}
A proof of \AgdaPostulate{plivlipa-fa} \B a\ exists iff for all prenu $A$, for all operating systems $B$, for all things (which are copies of $B$ and are owned by $A$) $C$, for all events (which are relevant only to $A$ and $C$) $D$, if $A$ owns $C$, then $B$ permits that $A$ causes $D$.

\begin{code}
postulate plivlipa-fa : Samcmu → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{\AgdaUnderscore{}cu-cafnysamfliji'i}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-cafnysamfliji'i} \B b\ .zoi.\ gi la'oi .\B{a}.\ jinvi lo du'u cafne fa lo nu samfli ri'a tu'a la'oi .\B b.

\paragraph{English}
A proof of \B a \OpP{cu-cafnysamfliji'i} \B b\ exists iff \B a\ opines that frequent is that \B b\ crashes.

\begin{code}
postulate _cu-cafnysamfliji'i_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-tcimi'etolnei\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-tcimi'etolnei} \B b .zoi.\ gi la'oi .\B{a}.\ tolnei lo tutci be lo nu tcimi'e la'oi .\B{b}.

\paragraph{English}
A proof of \B a \OpP{cu-tcimi'etolnei} \B b\ exists iff \B a\ dislikes the tools which facilitate configuring \B b.

\begin{code}
postulate _cu-tcimi'etolnei_ : Prenu → Samcmu → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-pavyplico'e} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B x \OpP{cu-pavyplico'e} .zoi.\ gi curmi lo nu lo pa co'e cu cmisau lo me la'oi .\B x.\ skami kei je ku'i cu tolcru lo nu su'o da poi ke'a me la'oi .\B x.\ skami zo'u su'o de poi ke'a prenu zo'u su'o di poi ke'a prenu jenai cu du de zo'u de cmisau da ca lo nu di cmisau da

\paragraph{English}
A proof of \B g \OpP{cu-pavyplico'e} exists iff a thing permits that (1 thing logs in to a \B g computer)\ldots but forbids that some \B g computer $x$ exists such that some user $B$ exists such that some user (which is not $B$) $C$ exists such that contemporaneous with that ($B$ is signed in on \B g) is that $C$ is signed in on \B g.

\begin{code}
postulate _cu-pavyplico'e : Samcmu → Set
\end{code}

\section{le fancu / The Functions}

\subsection{la'oi .\AgdaPostulate{narvlipa}.}
\paragraph{la .lojban.}
ni'o la .varik.\ na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK does-not opine that necessary is writing an English explanation.

\begin{code}
postulate narvlipa : {x : Samcmu}
                   → tolcru-lo-nu-spogau-kei-fa x
                   → ¬ (plivlipa-fa x)
\end{code}

\subsection{la'oi .\AgdaPostulate{vlipytolnei}.}
\paragraph{la .lojban.}
ni'o la .varik.\ na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK does-not opine that necessary is writing an English explanation.

\begin{code}
postulate vlipytolnei : {x : Samcmu}
                      → ¬ (plivlipa-fa x)
                      → la-varik cu-tolnei x
\end{code}

\subsection{la'oi .\AgdaPostulate{samflitolnei}.}
\paragraph{la .lojban.}
ni'o la .varik.\ na jinvi le du'u sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK does-not opine that necessary is writing an English explanation.

\begin{code}
postulate samflitolnei : {x : Samcmu}
                       → la-varik cu-cafnysamfliji'i x
                       → la-varik cu-tolnei x
\end{code}

\subsection{la'oi .\AgdaPostulate{tcimi'etolnei}.}
\paragraph{la .lojban.}
ni'o ro da poi ke'a samcmu zo'u la .varik.\ cu tolnei da janai lo tutci ja proga ja co'e be lo nu tcimi'e da

\paragraph{English}
For all operating systems $A$, if VARIK dislikes the tools/programs/things which facilitate configuring $A$, then VARIK dislikes $A$.

\begin{code}
postulate tcimi'etolnei : {x : Samcmu}
                        → la-varik cu-tcimi'etolnei x
                        → la-varik cu-tolnei x
\end{code}

\subsection{la'oi .\AgdaPostulate{pavyplico'etolnei}.}
\paragraph{la .lojban.}
ni'o ro da zo'u ga naja la .varik.\ cu tolnei da gi ga je da samcmu lo jbuskami gi ctaipe lo me'oi .\AgdaPostulate{\AgdaUnderscore{}cu-pavyplico'e}.\footnote{.i pilno le me'oi .Agda.\ co'e ki'u le su'u la .varik.\ cu toldji lo nu rapli fa lo nu la .varik.\ cu ciksi\ldots kei kei kei je le su'u la .varik.\ cu te cadga fi lo nu jimpe fi la'oi .Agda.\ fa lo troci be le ka ce'u jimpe fi la'oi .\AgdaPostulate{pavyplico'etolnei}.}\ be da

\paragraph{English}
If \B g is an operating system for desktop computers, then if a proof of \AgdaPostulate{\AgdaUnderscore{}cu-pavyplico'e} \B g\footnote{Using the Agda thing is justified by that VARIK is disinclined to repeatedly define.  Additionally, using the Agda thing is justified by that VARIK opines (or whatever \{VERB\}) that things which attempt to understand \AgdaPostulate{pavyplico'etolnei} should understand Agda.} exists, then VARIK dislikes \B g.

\begin{code}
postulate
  pavyplico'etolnei : {x : Samcmu}
                    → let sak = Samcmu.skamyklesi x in
                      ∃ $ _≡_ lo-jbuskami ∘ lookup sak
                    → x cu-pavyplico'e
                    → la-varik cu-tolnei x
\end{code}

\section{le samcmu}

\subsection{ko'a goi la'o glibau.\ Microsoft Windows Vista .glibau.\ po'u la'o zoi.\ \F{la-vista}\ .zoi.}

\begin{code}
module WindowsVista where
\end{code}

\subsubsection{la'o zoi.\ \F{la-vista}\ .zoi.}
\paragraph{la .lojban.}
ni'o ko'a du la'o glibau.\ Microsoft Windows Vista .glibau.\ poi ke'a se ciksi la'oi .Microsoft.\ je poi ca le rononoze moi ku co'e ja gubgau le velcki be ke'a

\paragraph{English}
\F{la-vista} is the Microsoft Windows Vista which is defined by Microsoft and is ``published'' circa 2007.

\begin{code}
  la-vista : Samcmu
  la-vista = record {
    cmene = "Microsoft Windows Vista";
    skamyklesi = lo-jbuskami ∷ []
    }
\end{code}

\subsubsection{la'oi .\AgdaPostulate{vistynarfingubni}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{vistynarfingubni}.\ ctaipe le su'u ko'a na fingubni

\paragraph{English}
\AgdaPostulate{vistynarfingubni} is a proof of that Microsoft Windows Vista is not a thing which is free and open-source.

\begin{code}
  postulate vistynarfingubni : ¬ (fingubni-fa la-vista)
\end{code}

\subsubsection{la'oi .\AgdaPostulate{vistytolspocru}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{vistytolspocru}.\ ctaipe le su'u ko'a troci pe'a ru'e lo nu ko'a tolcru lo nu lo pilno be ko'a cu vimcu lo datnyvei poi tu'a ke'a sarcu lo nu ko'a tolpo'u

\paragraph{English}
\AgdaPostulate{vistytolspocru} is a proof of that Microsoft Windows Vista, a.k.a.\ ``$A$'', ``attempts'' that $A$ forbids that the user of $A$ removes files which are necessary for that $A$ correctly functions.

\begin{code}
  postulate vistytolspocru : tolcru-lo-nu-spogau-kei-fa la-vista
\end{code}

\subsubsection{la'oi .\AgdaPostulate{vistycafnysamfli}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{vistymasno}.\ ctaipe le su'u la .varik.\ cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\paragraph{English}
\AgdaPostulate{vistymasno} is a proof of that VARIK opines that frequent is that Microsoft Windows Vista crashes.

\begin{code}
  postulate vistymasno : la-varik cu-cafnysamfliji'i la-vista
\end{code}

\subsubsection{la'o zoi.\ \F{vistytolnei₁}\ .zoi.}
\paragraph{la .lojban.}

\begin{code}
  vistytolnei₁ : la-varik cu-tolnei la-vista
  vistytolnei₁ = vlipytolnei $ narvlipa vistytolspocru
\end{code}

\subsubsection{la'o zoi.\ \F{vistytolnei₂}\ .zoi.}

\begin{code}
  vistytolnei₂ : la-varik cu-tolnei la-vista
  vistytolnei₂ = samflitolnei vistymasno
\end{code}

\subsection{ko'a goi la'o zoi.\ Microsoft Windows 11 .zoi.\ po'u la'o zoi.\ \F{la-parparuin}\ .zoi.}

\begin{code}
module Windows11 where
\end{code}

\subsubsection{la'o zoi.\ \F{la-parparuin}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-parparuin}\ .zoi.\ du la'o zoi.\ Microsoft Windows 11 .zoi.\ poi ke'a se ciksi la'oi .Microsoft.\ je poi le renorepa moi ca le nu gubgau ke'a

\paragraph{English}
\F{la-parparuin} is the Microsoft Windows 11 which is defined by Microsoft and is released circa 2021.

\begin{code}
  la-parparuin : Samcmu
  la-parparuin = record {
    cmene = "Microsoft Windows 11";
    skamyklesi = lo-jbuskami ∷ []
    }
\end{code}

\subsubsection{la'oi .\AgdaPostulate{parpartcimi'etolnei}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{parpartcimi'etolnei}.\ ctaipe le su'u la .varik. cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
\AgdaPostulate{parpartcimi'etolnei} is a proof of that VARIK dislikes the tools which facilitate configuring Microsoft Windows 11.

\begin{code}
  postulate parpartcimi'etolnei : la-varik cu-tcimi'etolnei la-parparuin
\end{code}

\subsubsection{la'o zoi.\ \F{parpartolnei₁}\ .zoi.}

\begin{code}
  parpartolnei₁ : la-varik cu-tolnei la-parparuin
  parpartolnei₁ = tcimi'etolnei parpartcimi'etolnei
\end{code}

\subsection{ko'a goi la'oi .Ubuntu.\ po'u la'o zoi.\ \F{la-ubuntus}\ .zoi.}

\begin{code}
module LinuxUbuntu where
\end{code}

\subsubsection{la'o zoi.\ \F{la-ubuntus}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-ubuntus}\ .zoi.\ du la'oi .Ubuntu.\ poi ke'a mu'oi glibau.\ Linux distribution .glibau.

\paragraph{English}
\F{la-ubuntus} is Ubuntu, which is a Linux distribution.

\begin{code}
  la-ubuntus : Samcmu
  la-ubuntus = record {
    cmene = "Ubuntu";
    skamyklesi = lo-jbuskami ∷ []
    }
\end{code}

\subsubsection{la'oi .\AgdaPostulate{buntcimi'etcitolnei}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{buntcimi'etolnei}.\ ctaipe le su'u la .varik.\ cu tolnei lo tutci be lo nu tcimi'e ko'a

\paragraph{English}
\AgdaPostulate{buntcimi'etolnei} is a proof of that VARIK dislikes the tools which facilitate configuring Ubuntu.

\begin{code}
  postulate buntcimi'etolnei : la-varik cu-tcimi'etolnei la-ubuntus
\end{code}

\subsubsection{la'o zoi.\ \F{buntolnei₁}\ .zoi.}

\begin{code}
  buntolnei₁ : la-varik cu-tolnei la-ubuntus
  buntolnei₁ = tcimi'etolnei buntcimi'etolnei
\end{code}

\subsection{ko'a goi la'oi .OpenBSD.}

\begin{code}
module OpenBSD where
\end{code}

\subsubsection{la'o zoi.\ \F{la-openbysydys}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-openbysydys}\ .zoi.\ du ko'a

\paragraph{English}
\F{la-openbysydys} is OpenBSD.

\begin{code}
  la-openbysydys : Samcmu
  la-openbysydys = record {
    cmene = "OpenBSD";
    skamyklesi = lo-jbuskami ∷ []
    }
\end{code}

\subsubsection{la'o zoi.\ \AgdaPostulate{openbysydys-samfli}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{openbysydys-samfli}\ .zoi.\ ctaipe le su'u la .varik. cu jinvi le du'u cafne fa lo nu samfli ri'a tu'a ko'a

\paragraph{English}
\AgdaPostulate{openbysydys-samfli} is a proof of that VARIK opines that frequent is that OpenBSD crashes.

\begin{code}
  postulate openbysydys-samfli : la-varik cu-cafnysamfliji'i la-openbysydys
\end{code}

\subsubsection{la'o zoi.\ \F{obstolnei₁}\ .zoi.}

\begin{code}
  obstolnei₁ : la-varik cu-tolnei la-openbysydys
  obstolnei₁ = samflitolnei openbysydys-samfli
\end{code}

\subsection{ko'a goi la'oi .Haiku.}

\begin{code}
module Haiku where
\end{code}

\subsubsection{la'o zoi.\ \F{la-xaikus} .zoi.}
\paragraph{la .lojban.}
ni'o ko'a du la'o zoi.\ \F{la-xaikus} .zoi.

\paragraph{English}
Haiku is \F{la-xaikus}.

\begin{code}
  la-xaikus : Samcmu
  la-xaikus = record {
    cmene = "Haiku";
    skamyklesi = lo-jbuskami ∷ []
    }
\end{code}

\subsubsection{la'oi .\AgdaPostulate{xaikypavyplico'e}.}
\paragraph{la .lojban.}
ni'o ranji fa le nu la .varik. cu toldji lo nu rapli fa lo nu ciksi

\paragraph{English}
That (VARIK is reluctant to repeatedly define) continues.

\begin{code}
  postulate xaikypavyplico'e : la-xaikus cu-pavyplico'e
\end{code}

\subsubsection{la'oi .\F{xaikytolnei₁}.}

\begin{code}
  xaikytolnei₁ : la-varik cu-tolnei la-xaikus
  xaikytolnei₁ = pavyplico'etolnei (zero , refl) xaikypavyplico'e
\end{code}
\end{document}
