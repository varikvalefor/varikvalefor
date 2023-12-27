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
\newunicodechar{∘}{\ensuremath{\mathnormal\circ}}
\newunicodechar{∀}{\ensuremath{\mathnormal\forall}}
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\!\lbrace}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{\rbrace\!\rbrace}}}

\newcommand\sds{\spacefactor\sfcode`.\ \space}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\title{le ctaipe be le su'u la .varik.\ cu tolnei ja na nelci le mu'oi glibau.\ instant messaging .glibau.\ se kibyse'u / Proofs of that VARIK Dislikes (or Not Likes) the Instant Messaging Services}
\author{la .varik.\ .VALefor.}

\begin{document}

\maketitle

\section{le me'oi .abstract.}
\paragraph{la .lojban.}
ni'o su'o da poi ke'a mu'oi glibau.\ instant messaging .glibau.\ se kibyse'u zo'u velski da je cu velcki lo ctaipe be lo su'u la .varik.\ cu tolnei janai nelci da

\paragraph{English}
Some instant messaging services $A$ exist such that the thing contains a description (of $A$) and a proof of that (VARIK dislikes $A$) or that VARIK not likes $A$.

\section{le torveki / The Summary}

\subsection{la'oi .Discord.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a goi la'oi .Discord.\ ki'u le su'u ko'a to'e fingubni je le su'u me'oi .centralise.\ ko'a kei je le su'u me'oi .paywall.\ lo su'o pagbu be ko'a kei je le su'u tolcru lo nu benji lo clani je lerseltcidu fu ko'a kei kei je le su'u ga je tolcru lo nu pilno lo se kibyse'u be fi ko'a be'o poi ke'a me'oi .unofficial.\ ja me'oi .custom.\ gi la .varik.\ cu tolnei le ro se kibyse'u be fi ko'a be'o poi lo zbasu be ko'a cu curmi lo nu pilno ke'a 

\paragraph{English}
That (VARIK dislikes Discord) is justified by that (Discord is closed-source), that (Discord is centralised), that (paywalled are some parts of Discord), that (forbidden is sending (via Discord) lengthy text), and that (VARIK dislikes all clients (of Discord) which are official, and forbidden is using a client (of Discord) which is custom or unofficial, and VARIK dislikes all clients (of Discord) which are official).

\subsection{la'oi .Telegram.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei ko'a goi la'oi .Telegram.\ ki'u le su'u me'oi .centralise.\ ko'a kei je le su'u tu'a lo fonjudri cu sarcu lo nu pilno ko'a

\paragraph{English}
That (VARIK dislikes Telegram) is justified by that (Telegram is closed-source) and that a phone number is necessary for using Telegram.

\subsection{la'oi .Signal.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu tolnei la'oi ko'a goi la'oi .Signal.\ ki'u le su'u me'oi .centralise.\ ko'a kei je le su'u tu'a lo fonjudri cu sarcu lo nu pilno ko'a

\paragraph{English}
That (VARIK dislikes Signal) is justified by that (Signal is centralised) and that a phone number is necessary for using Signal.

\subsection{la'oi .IRC.}
\paragraph{la .lojban.}
ni'o le su'u la .varik.\ na nelci ko'a goi la'oi .IRC.\ cu se krinu le su'u ko'a na mapti lo nu benji lo pixra\sds  .i ji'a la .varik.\ cu tolnei ko'a ki'u le su'u tolcru lo nu benji lo clani je lerseltcidu fu ko'a

\paragraph{English}
That (VARIK not likes IRC) is justified by that IRC not supports sending images.  Additionally, that (VARIK dislikes IRC) is justified by that forbidden is sending (via IRC) lengthy text.

\section{le vrici / Miscellaneous Crap}

\begin{code}
import Level
open import Function
open import Data.Maybe
  using (
    nothing;
    Maybe;
    just
  )
open import Data.These
  using (
    These;
    these;
    that;
    this
  )
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

\section{le jicmu / The Foundational}

\subsection{la'oi .\AgdaPostulate{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctiape la'oi .\AgdaPostulate{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, $A$ is a value of \AgdaPostulate{Prenu} iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{IMS}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{IMS}.\ jo cu mu'oi glibau.\ instant messaging .glibau.\ se kibyse'u

\paragraph{English}
For all $A$, \AgdaPostulate{IMS}\ is the type of $A$ iff $A$ is an instant messaging service.

\begin{code}
postulate IMS : Set
\end{code}

\subsection{la'oi .\AgdaPostulate{Zauselkibyse'u}.}
\paragraph{la .lojban.}
ni'o ro da zo'u ga jo da ctaipe la'o zoi.\ \AgdaPostulate{Zauselkibyse'u} \B x\ .zoi.\ gi ga je kibyse'u da ko'a goi la'o zoi.\ \B x\ .zoi.\ gi lo co'e ja zbasu be ko'a cu na troci lo nu tolcru lo nu kibyse'u da ko'a

\paragraph{English}
For all $A$, \AgdaPostulate{Zauselkibyse'u} \B x is the type of $A$ iff ($A$ is a client of \B x, and the thing (which creates (or whatever \{VERB\}) \B x) not attempts to forbid that $A$ is a client of \B x).

\begin{code}
postulate Zauselkibyse'u : IMS → Set
\end{code}

\section{le prenu / The Prenu}
\subsection{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.\ du la .varik.

\paragraph{English}
\AgdaPostulate{la-varik} is VARIK.

\begin{code}
postulate la-varik : Prenu
\end{code}

\section{le bridi / The Predicates}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-tolnei\AgdaUnderscore}\ .zoi.}
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
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{me'oi-custom-tolcru} \B a .zoi.\ gi ro da poi kibyse'u ke'a ko'a goi la'o zoi.\ \B a\ .zoi.\ jenai cu se zbasu lo zbasu be ko'a zo'u tolcru lo nu pilno da

\paragraph{English}
A proof of \AgdaPostulate{me'oi-custom-tolcru} \B a exists iff for all clients (of \B a) (which are not created by the creator of \B a) $x$, forbidden is using $x$.

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
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{tolcru-clanybenji} \B a .zoi.\ gi tolcru lo nu benji lo clani je lerselticdu fu la'o zoi.\ \B a .zoi.

\paragraph{English}
A proof of \AgdaPostulate{tolcru-clanybenji} \B a exists iff forbidden is sending (via \B a) lengthy text.

\begin{code}
postulate tolcru-clanybenji : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{me'oi-paywall}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{me'oi-paywall} \B a .zoi.\ gi su'o da poi ke'a pagbu la'o zoi.\ \B a .zoi.\ zo'u ro de poi ke'a pilno la'o zoi.\ \B a .zoi.\ zo'u ga janai de pleji fo da gi fladra fa lo nu de da pilno gi

\paragraph{English}
A proof of \AgdaPostulate{me'oi-paywall} \B a exists iff some part (of \B a) $Q$ exists such that for all users (of \B a) $K$, if legal is that $K$ uses $Q$, then $K$ pays for $Q$.

\begin{code}
postulate me'oi-paywall : IMS → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-na-mapti-lo-pixra}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-na-mapti-lo-pixra} .zoi.\ gi la'o zoi.\ \B a .zoi.\ na mapti lo nu benji lo pixra

\paragraph{English}
A proof of \B a \OpP{cu-na-mapti-lo-pixra} exists iff \B a not supports sending images.

\begin{code}
postulate _cu-na-mapti-lo-pixra : IMS → Set
\end{code}

\section{le fancu / The Functions}

\subsection{la'o zoi.\ \AgdaPostulate{narnei-ctaipe}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu pacna lo nu na sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK hopes that unnecessary is writing an English explanation.

\begin{code}
postulate narnei-ctaipe : {A : IMS}
                        → A cu-na-mapti-lo-pixra
                        → la-varik cu-na-nelci A
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{tolnei-ctaipe}\ .zoi.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu pacna lo nu na sarcu fa lo nu ciksi bau la .lojban.

\paragraph{English}
VARIK hopes that unnecessary is writing an English explanation.

\begin{code}
postulate
  tolnei-ctaipe : {A : IMS}
                → (These
                    (These
                      (to'e-fingubni-fa A)
                      (_×_
                        (me'oi-custom-tolcru A)
                        (Maybe
                          -- | ni'o na fegli fa lo jalge
                          -- be lo nu le degja'o lerfu
                          -- cu zvati ma
                          ((x : Zauselkibyse'u A) →
                           la-varik cu-tolnei x))))
                    (These
                      (These
                        (me'oi-centralise A)
                        (fonxysarcu A))
                      (These
                        (tolcru-clanybenji A)
                        (me'oi-paywall A))))
                → la-varik cu-tolnei A
\end{code}

\subsubsection{le krinu be tu'a le me'oi .\D{Maybe}.\ co'e / The Justification of the \D{Maybe} Thing}
\paragraph{la .lojban.}
ni'o le su'u la .varik.\ cu pilno le me'oi .\D{Maybe}.\ jenai me'oi .\D{These}.\ co'e ki'u le su'u ga je la .varik.\ cu djica ko'a goi lo nu frili fa lo nu cusku lo se du'u la .varik.\ cu tolnei lo ro co'e gi ro da poi ke'a sutra benji kubyse'u zo'u ga janai la .varik.\ cu tolnei da gi ga ba'e je tolcru lo nu pilno lo me'oi .custom.\ ja me'oi .unofficial.\ je ke se kibyse'u be fi da ke'e gi la .varik.\ cu tolnei lo ro co'e\sds  .i ko'a sarcu naje ku'i cu filri'a lo nu .indika lo du'u la .varik.\ cu ba'e mutce lo ka ce'u tolnei

\paragraph{English}
That (VARIK uses the \D{Maybe} thing) is justified by that VARIK desires that easy is expressing/stating that VARIK dislikes all what's-its \{PN\}.  That (easy is expressing/stating that VARIK dislikes) is unnecessary but facilitates indicating that VARIK \emph{very} dislikes.  That (VARIK not uses a \D{These} thing is justified by that for all instant messaging services $A$, if (forbidden is using a client (of $A$) which is custom or unofficial, \emph{and} VARIK dislikes all what's-its \{PN\}), then VARIK dislikes $A$.

\subsection{le su'u pluja / That the Thing is Complex}
\paragraph{la .lojban.}
ni'o xu ko'a goi la'o zoi.\ \AgdaPostulate{tolnei-ctaipe} .zoi.\ banzuka le ka ce'u pluja kei lo nu nandu fa lo nu jimpe fi lo me ko'a ctaipe\sds  .i la .varik.\ cu djica curmi lo nu pinka

\paragraph{English}
The extent (of that \AgdaPostulate{tolnei-ctaipe} is complex) is sufficient for that difficult is understanding the \AgdaPostulate{tolnei-ctaipe} proofs?  VARIK welcomes commenting.

\section{la'oi .Discord.}

\begin{code}
module LaDiskord where
\end{code}

\subsection{le jicmu / The Foundational Stuff}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-diskord}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-diskord}\ .zoi.\ du la'oi .Discord.\ noi zoi zoi.\ \url{https://www.discord.com}\ .zoi.\ .urli zo'e pe ke'a

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
\AgdaPostulate{diskcla} is a proof of that forbidden is sending (via Discord) lengthy texts.

\begin{code}
  postulate diskcla : tolcru-clanybenji la-diskord
\end{code}

\subsubsection{la'oi .\AgdaPostulate{diskpei}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{diskpei}.\ ctaipe le su'u su'o da poi ke'a pagbu ko'a goi la'oi .Discord.\ zo'u ro de poi ke'a pilno ko'a zo'u ga janai da pleji fo da gi fladra fa lo nu de da pilno

\paragraph{English}
\AgdaPostulate{diskpei} is a proof of that some part (of Discord) $Q$ exists such that for all users (of Discord) $K$, if legal is that $K$ uses $Q$, then $K$ pays for $Q$.

\begin{code}
  postulate diskpei : me'oi-paywall la-diskord
\end{code}

\subsubsection{la'oi .\AgdaPostulate{diselkibyse'u}}
\paragraph{la .lojban.}
ni'o xu cadga fa lo nu ciksi bau la .lojban.

\paragraph{English}
Necessary is writing an English explanation?

\begin{code}
  postulate diselkibyse'u : (x : Zauselkibyse'u la-diskord)
                          → la-varik cu-tolnei x
\end{code}

\subsection{le ctaipe be le su'u tolnei / The Proof of Disliking}

\begin{code}
  la-tolneic : la-varik cu-tolnei la-diskord
  la-tolneic = tolnei-ctaipe $ these ladistrol cenclapei
    where
    cenclapei = these (this diskentral) $ these diskcla diskpei
    ladistrol = these ladinafil $ diskustrol , just diselkibyse'u
\end{code}

\section{la'oi .Telegram.}

\begin{code}
module LaTelegram where
\end{code}

\subsection{le jicmu / The Foundational}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-telegram}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-telegram}\ .zoi.\ du la'oi .Telegram.\ poi ke'a se velski le se .urli be zoi zoi.\ \url{https://www.telegram.org}\ .zoi.

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

\subsection{le ctaipe be le su'u tolnei / The Proof of Disliking}

\begin{code}
  la-tolneic : la-varik cu-tolnei la-telegram
  la-tolneic = tolnei-ctaipe $ that $ this centfon
    where
    -- | ni'o cumki fa lo nu le pa lerpinsle cu basti
    -- le'i re lerpinsle  .i ku'i cumki fa lo nu tu'a
    -- la'oi .centfon. filri'a lo nu jimpe
    --
    -- .i lakne fa lo nu jmina naja cu vimcu le pinka
    centfon = these tugcentra tugfonxa
\end{code}

\section{la'oi .Signal.}

\begin{code}
module LaSignal where
\end{code}

\subsection{le jicmu / The Foundational}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-signal}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-signal}\ .zoi.\ du la'oi .Signal.\ poi ke'a se velski le se .urli be zoi .urli.\ \url{https://www.signal.org}\ .urli.

\paragraph{English}
\AgdaPostulate{la-signal} is Signal, which is described at \url{https://www.signal.org}.

\begin{code}
  postulate la-signal : IMS
\end{code}

\subsubsection{la .\AgdaPostulate{sigcent}.}
\paragraph{la .lojban.}
ni'o la .\AgdaPostulate{sigcent}.\ cu ctaipe le su'u me'oi .centralise.\ la'oi .Signal.

\paragraph{English}
\AgdaPostulate{sigcent} is a proof of that Signal is centralised.

\begin{code}
  postulate sigcent : me'oi-centralise la-signal
\end{code}

\subsubsection{la .\AgdaPostulate{sigfon}.}
\paragraph{la .lojban.}
ni'o la .\AgdaPostulate{sigcent}.\ cu ctaipe le su'u tu'a lo fonjudri cu sarcu lo nu pilno la'oi .Signal.

\paragraph{English}
\AgdaPostulate{sigcent} is a proof of that a phone number is necessary for using Signal.

\begin{code}
  postulate sigfon : fonxysarcu la-signal
\end{code}

\subsection{le ctaipe be le su'u tolnei / The Proof of Disliking}

\begin{code}
  sigtolneis : la-varik cu-tolnei la-signal
  sigtolneis = tolnei-ctaipe $ that $ this $ these sigcent sigfon
\end{code}

\section{la'oi .Revolt.}

\begin{code}
module LaRevolt where
\end{code}

\subsection{le jicmu / The Foundational}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-revolt}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-revolt}\ .zoi.\ du la'oi .Revolt.\ poi ke'a se velski le se .urli be zoi .urli.\ \url{https://revolt.chat}\ .urli.

\paragraph{English}
\AgdaPostulate{la-revolt} is Revolt, which is described at \url{https://revolt.chat}.

\begin{code}
  postulate la-revolt : IMS
\end{code}

\subsubsection{la .\AgdaPostulate{revent}.}
\paragraph{la .lojban.}
ni'o la .\AgdaPostulate{revent}.\ cu ctaipe le su'u me'oi .centralise.\ la'oi .Revolt.

\paragraph{English}
\AgdaPostulate{revent} is a proof of that Revolt is centralised.

\begin{code}
  postulate revent : me'oi-centralise la-revolt
\end{code}

\subsection{le ctaipe be le su'u tolnei / The Proof of Disliking}

\begin{code}
  revtolneis : la-varik cu-tolnei la-revolt
  revtolneis = tolnei-ctaipe $ that $ this $ this revent
\end{code}

\section{la'o glibau.\ Internet Relay Chat .glibau.}

\begin{code}
module LaIrk where
\end{code}

\subsection{le jicmu / The Foundational}

\subsubsection{la'o zoi.\ \AgdaPostulate{la-irk}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-irk}\ .zoi.\ du la'o glibau.\ Internet Relay Chat .glibau.\ poi li pavomuso me'oi .RFC.\ ke'a

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
ni'o la'oi .\AgdaPostulate{irkyclani}.\ ctaipe le su'u tolcru lo nu benji lo clani je lerseltcidu fo la'o glibau.\ Internet Relay Chat .glibau.

\paragraph{English}
\AgdaPostulate{irkyclani} is a proof of that forbidden is sending (via Internet Relay Chat) lengthy texts.

\begin{code}
  postulate irkyclani : tolcru-clanybenji la-irk
\end{code}

\subsection{le ctaipe be le su'u na nelci / The Proof of that Not Likes}

\begin{code}
  la-narneic : la-varik cu-na-nelci la-irk
  la-narneic = narnei-ctaipe irkypixra
\end{code}

\subsection{le ctaipe be le su'u tolnei / The Proof of Disliking}

\begin{code}
  la-tolneic : la-varik cu-tolnei la-irk
  la-tolneic = tolnei-ctaipe $ that $ that $ this irkyclani
\end{code}
\end{document}
