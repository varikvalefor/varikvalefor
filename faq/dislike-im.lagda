\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{hyperref}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\forall}}
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\!\lbrace}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{\rbrace\!\rbrace}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\title{le ctaipe be le su'u la .varik.\ cu tolnei ja na nelci le mu'oi glibau.\ instant messaging .glibau.\ te kibyse'u / Proofs of that VARIK Dislikes (or Not Likes) the Instant Messaging Services}
\author{la .varik.\ .VALefor.}

\begin{document}

\maketitle

\section{le me'oi .abstract.}
\paragraph{la .lojban.}
ni'o velski ko'a goi le su'o mu'oi glibau.\ instant messaging .glibau.\ te kibyse'u je cu velcki le ctaipe be le su'u la .varik.\ cu tolnei ja na nelci ko'a

\paragraph{English}
Describes some instant messaging services, A.K.A.\ ``$A$'', and contains definitions of proofs of that (VARIK dislikes $A$) or that VARIK not likes $A$.

\section{le vrici / Miscellaneous Crap}

\begin{code}
import Level
open import Function
open import Data.These
open import Relation.Nullary
\end{code}

\section{le jicmu / The Foundational Stuff}

\subsection{la'oi .\AgdaPostulate{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctiape la'oi .\AgdaPostulate{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, $A$ is a value of \AgdaPostulate{Prenu} iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.\ du la .varik.

\paragraph{English}
\AgdaPostulate{la-varik} is VARIK.

\begin{code}
postulate la-varik : Prenu
\end{code}

\subsection{la'o zoi.\ \F{\AgdaUnderscore{}cu-tolnei\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo la'o zoi.\ \B a .zoi.\ tolnei la'o zoi.\ \B b .zoi.\ gi ctaipe la'o zoi.\ \B a \OpP{cu-tolnei} \B b .zoi.

\paragraph{English}
\B a dislikes \B b iff a proof of \B a \OpP{cu-tolnei} \B b exists.

\begin{code}
postulate _cu-tolnei_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-na-nelci\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-na-nelci} \B b .zoi.\ gi la'o zoi.\ \B a .zoi.\ na nelci la'o zoi.\ \B b .zoi.

\paragraph{English}
A proof of \B a \OpP{cu-na-nelci} \B b exists iff \B a not likes \B b.

\begin{code}
postulate _cu-na-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{IMS}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{IMS}.\ jo cu mu'oi glibau.\ instant messaging .glibau.\ te kibyse'u

\paragraph{English}
For all $A$, \AgdaPostulate{IMS}\ is the type of $A$ iff $A$ is an instant messaging service.

\begin{code}
postulate IMS : Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{to'e-fingubni-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{to'e-fingubni-fa} \B a .zoi.\ gi la'o zoi.\ \B a .zoi.\ to'e fingubni

\paragraph{English}
A proof of \AgdaPostulate{to'e-fingubni-fa} \B a exists iff \B a is closed-source.

\begin{code}
postulate to'e-fingubni-fa : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{me'oi-custom-tolcru}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{me'oi-custom-tolcru} \B a .zoi.\ gi tolcru lo nu pilno lo se kibyse'u be fi la'o zoi.\ \B a .zoi.\ be'o poi ke'a me'oi .unofficial.\ ja me'oi .custom.

\paragraph{English}
A proof of \AgdaPostulate{me'oi-custom-tolcru} \B a exists iff forbids that uses a custom or unofficial client of \B a.

\begin{code}
postulate me'oi-custom-tolcru : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{me'oi-centralise}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{me'oi-centralise} \B a .zoi.\ gi me'oi .centralise.\ la'o zoi.\ \B a .zoi.

\paragraph{English}
A proof of \AgdaPostulate{me'oi-centralise} \B a exists iff \B a is centralised.

\begin{code}
postulate me'oi-centralise : IMS → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{fonxysarcu}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{fonxysarcu} \B a .zoi.\ gi ro da zo'u lo nu da pilno ko'a goi la'o zoi.\ \B a .zoi.\ cu selsa'u lo nu lo me'oi .database.\ pe ko'a cu vasru lo datni be lo fonjudri be da

\paragraph{English}
If a proof of \AgdaPostulate{fonxysarcu} \B a exists, then for all $A$, that (the database of $A$ contains information regarding the phone number of $A$) is necessary for that $A$ uses \B a.

\begin{code}
postulate fonxysarcu : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{tolcru-clanybenji}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{tolcru-clanybenji} \B a .zoi.\ gi tolcru lo nu benji lo clani je selci'a fu la'o zoi.\ \B a .zoi.

\paragraph{English}
A proof of \AgdaPostulate{tolcru-clanybenji} \B a exists iff forbids that sends via \B a lengthy text.

\begin{code}
postulate tolcru-clanybenji : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{me'oi-paywall}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{me'oi-paywall} \B a .zoi.\ gi su'o da poi ke'a pagbu la'o zoi.\ \B a .zoi.\ zo'u ro de poi ke'a pilno la'o zoi.\ \B a .zoi.\ zo'u ga naja fladra fa lo nu de da pilno gi de pleji fo da

\paragraph{English}
A proof of \AgdaPostulate{me'oi-paywall} \B a exists iff some part (of \B a) $Q$ exists such that for all users (of \B a) $K$, if legal is that $K$ uses $Q$, then $K$ pays for $Q$.

\begin{code}
postulate me'oi-paywall : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-na-mapti-lo-pixra}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-na-mapti-lo-pixra} .zoi.\ gi la'o zoi.\ \B a .zoi.\ na mapti lo nu benji lo pixra

\paragraph{English}
A proof of \B a \OpP{cu-na-mapti-lo-pixra} exists iff \B a not supports that sends images.

\begin{code}
postulate _cu-na-mapti-lo-pixra : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{narnei-ctaipe}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu pacna lo nu na sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK hopes that unnecessary is writing an English explanation.

\begin{code}
postulate narnei-ctaipe : {A : IMS}
                        → A cu-na-mapti-lo-pixra
                        → tolcru-clanybenji A
                        → la-varik cu-na-nelci A
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{tolnei-ctaipe}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu sorpa'a lo nu na sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK hopes that unnecessary is that writes an English explanation.

\begin{code}
postulate
  tolnei-ctaipe : {A : IMS}
                → These
                  (These
                    (to'e-fingubni-fa A)
                    (me'oi-custom-tolcru A)
                  )
                  (These
                    (These
                      (me'oi-centralise A)
                      (fonxysarcu A)
                    )
                    (These
                      (tolcru-clanybenji A)
                      (me'oi-paywall A)
                    )
                  )
                → la-varik cu-tolnei A
\end{code}

\section{la'oi .Discord.}

\subsection{le jicmu / The Foundational Stuff}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-diskord}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-diskord}\ .zoi.\ du la'oi .Discord.\ noi zoi zoi.\ \url{https://www.discord.com}\ .zoi. .urli ke'a

\paragraph{English}
\AgdaPostulate{la-diskord} is Discord, which is described at \url{https://www.discord.com}.

\begin{code}
postulate la-diskord : IMS
\end{code}

\subsubsection{la'oi .\AgdaPostulate{ladinafil}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{ladinafil}.\ ctaipe le su'u la'oi .Discord.\ to'e fingubni

\paragraph{English}
\AgdaPostulate{ladinafil} is a proof of that Discord is closed-source.

\begin{code}
postulate ladinafil : to'e-fingubni-fa la-diskord
\end{code}

\subsubsection{la'oi .\AgdaPostulate{diskustrol}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{diskustrol}.\ ctaipe le su'u tolcru lo nu pilno lo me'oi .custom.\ ja co'e tu'a la'oi .Discord.

\paragraph{English}
\AgdaPostulate{diskustrol} is a proof of that forbidden is using clients (of Discord) which are custom or unofficial.

\begin{code}
postulate diskustrol : me'oi-custom-tolcru la-diskord
\end{code}

\subsubsection{la'oi .\AgdaPostulate{diskentral}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{diskentral}.\ ctaipe le su'u me'oi .centralise.\ la'oi .Discord.

\paragraph{English}
\AgdaPostulate{diskentral} is a proof of that Discord is centralised.

\begin{code}
postulate diskentral : me'oi-centralise la-diskord
\end{code}

\subsubsection{la'oi .\AgdaPostulate{diskcla}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{diskcla}.\ ctaipe le su'u tolcru lo nu benji lo clani je selcil'a fu la'oi .Discord.

\paragraph{English}
\AgdaPostulate{diskcla} is a proof of that forbidden is sending via Discord lengthy texts.

\begin{code}
postulate diskcla : tolcru-clanybenji la-diskord
\end{code}

\subsubsection{la'oi .\AgdaPostulate{diskpei}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{diskpei}.\ ctaipe le su'u su'o da poi ke'a pagbu ko'a goi la'oi .Discord.\ zo'u ro de poi ke'a pilno ko'a zo'u ga naja fladra fa lo nu de da pilno gi de pleji fo da

\paragraph{English}
\AgdaPostulate{diskpei} is a proof of that some part (of Discord) $Q$ exists such that for all users (of Discord) $K$, if legal is that $K$ uses $Q$, then $K$ pays for $Q$.

\begin{code}
postulate diskpei : me'oi-paywall la-diskord
\end{code}

\subsection{le ctaipe be le su'u tolnei / The Proof of that Dislikes}

\begin{code}
tolnei-la'oi-Discord : la-varik cu-tolnei la-diskord
tolnei-la'oi-Discord = tolnei-ctaipe $ these ladistrol cenclapei
  where
  cenclapei = these (this diskentral) $ these diskcla diskpei
  ladistrol = these ladinafil diskustrol
\end{code}

\section{la'oi .Telegram.}

\subsection{le jicmu / The Foundational Stuff}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-telegram}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-telegram}\ .zoi.\ du la'oi .Telegram.\ noi ke'a se .urli zoi zoi.\ \url{https://www.telegram.org}\ .zoi.

\paragraph{English}
\AgdaPostulate{la-telegram} is Telegram, which is described at \url{https://www.telegram.org}.

\begin{code}
postulate la-telegram : IMS
\end{code}

\subsubsection{la'oi .\AgdaPostulate{tugcentra}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{tugcentra}.\ ctaipe le su'u me'oi .centralise.\ la'oi .Telegram.\

\paragraph{English}
\AgdaPostulate{tugcentra} is a proof of that Telegram is centralised.

\begin{code}
postulate tugcentra : me'oi-centralise la-telegram
\end{code}

\subsubsection{la'oi .\AgdaPostulate{tugfonxa}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{tugfonxa}.\ ctaipe le su'u tu'a lo fonjudri cu sarcu lo nu pilno la'oi .Telegram.

\paragraph{English}
\AgdaPostulate{fugfonxa} is a proof of that a telephone number is necessary for that uses Telegram.

\begin{code}
postulate tugfonxa : fonxysarcu la-telegram
\end{code}

\subsection{le ctaipe be le su'u tolnei / The Proof of that Dislikes}

\begin{code}
tolnei-la'oi-Telegram : la-varik cu-tolnei la-telegram
tolnei-la'oi-Telegram = tolnei-ctaipe $ that $ this centfon
  where
  centfon = these tugcentra tugfonxa
\end{code}

\section{la'o glibau.\ Internet Relay Chat .glibau.}

\subsection{le jicmu / The Foundational Stuff}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-irk}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-irk}\ .zoi.\ du la'o glibau.\ Internet Relay Chat .glibau.\ poi ke'a se me'oi .RFC.\ li pavomuso

\paragraph{English}
\AgdaPostulate{la-irk} is Internet Relay Chat, which is described by RFC 1459.

\begin{code}
postulate la-irk : IMS
\end{code}

\subsubsection{la'oi .\AgdaPostulate{irkypixra}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{irkypixra}.\ ctaipe le su'u la'o glibau.\ Internet Relay Chat .glibau.\ na mapti lo nu benji lo pixra

\paragraph{English}
\AgdaPostulate{irkypixra} is a proof of that Internet Relay Chat not supports that sends images.

\begin{code}
postulate irkypixra : la-irk cu-na-mapti-lo-pixra
\end{code}

\subsubsection{la'oi .\AgdaPostulate{irkyclani}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{irkyclani}.\ ctaipe le su'u tolcru lo nu benji lo clani je selci'a fo la'o glibau.\ Internet Relay Chat .glibau.

\paragraph{English}
\AgdaPostulate{irkyclani} is a proof of that forbidden is sending (via Internet Relay Chat) lengthy texts.

\begin{code}
postulate irkyclani : tolcru-clanybenji la-irk
\end{code}

\subsection{le ctaipe be le su'u na nelci / The Proof of that Not Likes}

\begin{code}
la-varik-cu-na-nelci-la-irk : la-varik cu-na-nelci la-irk
la-varik-cu-na-nelci-la-irk = narnei-nibli irkypixra irkyclani
\end{code}
\end{document}
