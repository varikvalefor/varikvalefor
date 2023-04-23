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

\title{le nibli be le su'u la .varik.\ cu tolnei le mu'oi glibau.\ instant messaging .glibau.\ te kibyse'u / Proofs of that VARIK Dislikes the Instant Messaging Services}
\author{la .varik.\ .VALefor.}

\begin{document}

\maketitle

\section{le me'oi .abstract.}
\paragraph{la .lojban.}
ni'o velski ko'a goi le su'o mu'oi glibau.\ instant messaging .glibau.\ te kibyse'u je cu vasru le ctaipe be le su'u la .varik.\ cu tolnei ko'a

\paragraph{English}
Describes some instant messaging services, A.K.A.\ ``$A$'', and contains proofs of that VARIK dislikes $A$.

\section{le vrici / Miscellaneous Crap}

\begin{code}
import Level
open import Function
open import Data.These
open import Relation.Nullary

\end{code}

\section{le jicmu / The Foundational Stuff}

\subsection{la'oi .\F{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctiape la'oi .\F{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, $A$ is a value of \F{Prenu} iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'o zoi.\ \F{la-varik} .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-varik} .zoi.\ cu sinxa la .varik.

\paragraph{English}
\F{la-varik} represents VARIK.

\begin{code}
postulate la-varik : Prenu
\end{code}

\subsection{la'o zoi.\ \F{\_cu-tolnei\_} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo la'o zoi.\ \B a .zoi.\ tolnei la'o zoi.\ \B b .zoi.\ gi ctaipe la'o zoi.\ \B a \Sym{cu-tolnei} \B b .zoi.

\paragraph{English}
\B a dislikes \B b iff a proof of \B a \Sym{cu-tolnei} \B b exists.

\begin{code}
postulate _cu-tolnei_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'oi .\F{IMS}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\F{IMS}.\ jo cu mu'oi glibau.\ instant messaging .glibau.\ te kibyse'u

\paragraph{English}
For all $A$, $A$ is a value of \F{IMS} iff $A$ is an instant messaging service.

\begin{code}
postulate IMS : Set
\end{code}

\subsection{la'o zoi.\ \F{to'e-fingubni-fa} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{to'e-fingubni-fa} \B a .zoi.\ gi la'o zoi.\ \B a .zoi.\ to'e fingubni

\paragraph{English}
A proof of \F{to'e-fingubni-fa} \B a exists iff \B a is closed-source.

\begin{code}
postulate to'e-fingubni-fa : IMS → Set
\end{code}

\subsection{la'o zoi.\ \F{me'oi-custom-tolcru} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{me'oi-custom-tolcru} \B a .zoi.\ gi tolcru lo nu pilno lo te kibyse'u be fi la'o zoi.\ \B a .zoi.\ be'o poi tu'a ke'a me'oi .unofficial.\ ja me'oi .\F{custom}.

\paragraph{English}
A proof of \F{me'oi-custom-tolcru} \B a exists iff forbids that uses a custom or unofficial client of \B a.

\begin{code}
postulate me'oi-custom-tolcru : IMS → Set
\end{code}

\subsection{la'o zoi.\ \F{me'oi-centralise} .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{me'oi-centralise} \B a .zoi.\ gi me'oi .centralise.\ la'o zoi.\ \B a .zoi.

\paragraph{English}
A proof of \F{me'oi-centralise} \B a exists iff \B a is centralised.

\begin{code}
postulate me'oi-centralise : IMS → Set
\end{code}

\subsection{la'oi .\F{fonxysarcu}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{fonxysarcu} \B a .zoi.\ gi ro da zo'u lo nu da pilno ko'a goi la'o zoi.\ \B a .zoi.\ cu selsa'u lo nu ko'a djuno fi lo fonjudri be da

\paragraph{English}
If a proof of \F{fonxysarcu} \B a exists, then for all $A$, that ($A$ gives to \B a information regarding the phone number of $A$) is necessary for that $A$ uses \B a.

\begin{code}
postulate fonxysarcu : IMS → Set
\end{code}

\subsection{la'o zoi.\ \F{tolnei-nibli} .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu sorpa'a lo nu na sarcu fa lo nu .lojban.\ ciksi

\paragraph{le glibau.}
VARIK hopes that unnecessary is that writes an English explanation.

\begin{code}
postulate
  tolnei-nibli : {A : IMS}
               → These
                 (These
                   (to'e-fingubni-fa A)
                   (me'oi-custom-tolcru A)
                 )
                 (These
                   (me'oi-centralise A)
                   (fonxysarcu A)
                 )
               → la-varik cu-tolnei A
\end{code}

\section{la'oi .\F{Discord}.}

\subsection{le jicmu / The Foundational Stuff}

\subsubsection{la'o zoi.\ \F{la-diskord} .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-diskord} .zoi.\ sinxa ja co'e la'oi .Discord.\ noi ke'a se .urli zoi zoi.\ \url{https://www.discord.com} .zoi.

\paragraph{English}
\F{la-diskord} represents or whatever \{V\} Discord, which is described at \url{https://www.discord.com}.

\begin{code}
postulate la-diskord : IMS
\end{code}

\subsubsection{la'oi .\F{ladinafil}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{ladinafil}.\ ctaipe le du'u la'oi .Discord.\ to'e fingubni

\paragraph{English}
\F{ladinafil} is a proof of that Discord is closed-source.

\begin{code}
postulate ladinafil : to'e-fingubni-fa la-diskord
\end{code}

\subsubsection{la'oi .\F{diskustrol}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{diskustrol}.\ ctaipe le du'u tolcru lo nu pilno lo me'oi .custom.\ ja co'e tu'a la'oi .Discord.

\paragraph{English}
\F{diskustrol} is a proof of that forbids that uses custom or unofficial clients of Discord.

\begin{code}
postulate diskustrol : me'oi-custom-tolcru la-diskord
\end{code}

\subsubsection{la'oi .\F{diskentral}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{diskentral}.\ ctaipe le du'u me'oi .centralise.\ la'oi .Discord.

\paragraph{English}
\F{diskentral} is a proof of that Discord is centralised.

\begin{code}
postulate diskentral : me'oi-centralise la-diskord
\end{code}

\subsection{le nibli be le su'u tolnei / The Proof of that Dislikes}

\begin{code}
tolnei-la'oi-Discord : la-varik cu-tolnei la-diskord
tolnei-la'oi-Discord = tolnei-nibli $ these ladi $ this diskentral
  where
  ladi = these ladinafil diskustrol
\end{code}

\section{la'oi .Telegram.}

\subsection{le jicmu / The Foundational Stuff}

\subsubsection{la'o zoi.\ \F{la-telegram} .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-telegram} .zoi.\ sinxa ja co'e la'oi .Telegram.\ noi ke'a se .urli zoi zoi.\ \url{https://www.telegram.org} .zoi.

\paragraph{English}
\F{la-telegram} represents or whatever \{V\} Telegram, which is described at \url{https://www.telegram.org}.

\begin{code}
postulate la-telegram : IMS
\end{code}

\subsubsection{la'oi .\F{tugcentra}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{tugcentra}.\ ctaipe le su'u me'oi .centralise.\ la'oi .Telegram.\

\paragraph{English}
\F{tugcentra} is a proof of that Telegram is centralised.

\begin{code}
postulate tugcentra : me'oi-centralise la-telegram
\end{code}

\subsubsection{la'oi .\F{tugfonxa}.}
\paragraph{la .lojban.}
ni'o la'oi .\F{tugfonxa}.\ ctaipe le su'u tu'a lo fonjudri cu sarcu lo nu pilno la'oi .Telegram.

\paragraph{English}
\F{fugfonxa} is a proof of that a telephone number is necessary for that uses Telegram.

\begin{code}
postulate tugfonxa : fonxysarcu la-telegram
\end{code}

\subsection{le nibli be le su'u tolnei / The Proof of that Dislikes}

\begin{code}
tolnei-la'oi-Telegram : la-varik cu-tolnei la-telegram
tolnei-la'oi-Telegram = tolnei-nibli $ that $ centfon
  where
  centfon = these tugcentra tugfonxa
\end{code}
\end{document}
