REPLACE ~HPRELATE~


IF WEIGHT #7 /* Triggers after states #: 13 21 22 23 31 64 even though they appear after this state */
~ReputationGT(LastTalkedToBy,9)
OR(2)
Dead("c6bodhi")
!Global("Chapter","GLOBAL",6)~ THEN BEGIN 11 // from:
  SAY #28044 /* ~Bienvenue au très noble Ordre du Coeur radieux, jeune <MANWOMAN>. Je suis le Prélat Wessalen. Ne vous écartez jamais des sentiers de la justice, de l'honneur et du devoir.~ */
  IF ~~ THEN GOTO 24
END

IF WEIGHT #8 /* Triggers after states #: 13 21 22 23 31 64 even though they appear after this state */
~ReputationLT(LastTalkedToBy,10)
OR(2)
Dead("c6bodhi")
!Global("Chapter","GLOBAL",6)~ THEN BEGIN 12 // from:
  SAY #28050 /* ~Comment osez-vous revenir ici, imbécile ? Partez immédiatement !~ */
  IF ~~ THEN GOTO 24
END

IF WEIGHT #1 ~InPartySlot(LastTalkedToBy,0)
Global("HelpedGarren","GLOBAL",1)
Global("PaladinOrder","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY #36746 /* ~J'ai beaucoup entendu parler de vos exploits, <CHARNAME>. Vous avez fait du bon travail alors que vous n'aviez pas de protecteur. Garren ne m'a dit que du bien de vous et vous a recommandée auprès de moi.~ */
  IF ~~ THEN GOTO 14
END

IF WEIGHT #3 /* Triggers after states #: 64 even though they appear after this state */
~Global("PaladinOrder","GLOBAL",1)
OR(2)
Dead("c6bodhi")
!Global("Chapter","GLOBAL",6)~ THEN BEGIN 21 // from:
  SAY #36770 /* ~J'attends avec impatience le récit de vos exploits. Je suis certain que vous ne trahirez pas notre foi.~ */
  IF ~~ THEN GOTO 24
END

IF WEIGHT #4 /* Triggers after states #: 64 even though they appear after this state */
~Global("PaladinOrder","GLOBAL",2)
OR(2)
Dead("c6bodhi")
!Global("Chapter","GLOBAL",6)~ THEN BEGIN 22 // from:
  SAY #36778 /* ~Il est extrêmement regrettable que vous ne daignez pas rejoindre notre Ordre ; vous auriez été un très bon atout. Mais je suis convaincu que vous continuerez à servir la cause de la vertu.~ */
  IF ~~ THEN GOTO 24
END

IF WEIGHT #5 /* Triggers after states #: 64 even though they appear after this state */
~Global("PaladinOrder","GLOBAL",3)
OR(2)
Dead("c6bodhi")
!Global("Chapter","GLOBAL",6)~ THEN BEGIN 23 // from:
  SAY #36779 /* ~Vous avez déshonoré l'Ordre et tout ce qu'il représente. Suivez la voie qu'il vous plaira mais sachez que personne ici ne vous aidera.~ */
  IF ~~ THEN GOTO 24
END

IF WEIGHT #6 /* Triggers after states #: 64 even though they appear after this state */
~Global("Chapter","GLOBAL",6)
!Dead("c6bodhi")
!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 31 // from:
  SAY #53007 /* ~Salutations, <GABBER>. Si <CHARNAME> est avec vous, j'aimerais lui parler... <PRO_HESHE> est le porte-parole de votre groupe, n'est-ce pas ?~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 64 even though they appear after this state */
~Global("Chapter","GLOBAL",6)
InPartySlot(LastTalkedToBy,0)
Global("PaladinOrder","GLOBAL",1)
Global("OrderFightBodhi","GLOBAL",0)
!Dead("c6bodhi")~ THEN BEGIN 32 // from:
  SAY #53008 /* ~<CHARNAME>... Je suis ravi d'accueillir un membre de l'Ordre de retour parmi nous. Vous avez l'air en pleine forme. Avez-vous une requête à me soumettre ?~ */
  IF ~Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY #53011 /* ~En effet. Je dois combattre une horde de vampires très puissants dans cette ville et j'aimerais solliciter l'aide de l'Ordre.~ */ GOTO 35
  IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY #53016 /* ~En effet. Je dois combattre une horde de vampires très puissants dans cette ville et j'aimerais solliciter l'aide de l'Ordre.~ */ GOTO 36
  IF ~~ THEN REPLY #53014 /* ~Non, pas pour le moment.~ */ GOTO 37
END

IF WEIGHT #10 /* Triggers after states #: 64 even though they appear after this state */
~Global("Chapter","GLOBAL",6)
InPartySlot(LastTalkedToBy,0)
!Global("PaladinOrder","GLOBAL",1)
ReputationGT(LastTalkedToBy,9)
Global("OrderFightBodhi","GLOBAL",0)
!Dead("c6bodhi")~ THEN BEGIN 33 // from:
  SAY #53009 /* ~Ah, <CHARNAME>... Je vous salue au nom du très noble Ordre du Coeur radieux. Soyez la bienvenue en ces lieux. Avez-vous une requête à me soumettre ?~ */
  IF ~Global("WorkingForBodhi","GLOBAL",0)~ THEN REPLY #53015 /* ~En effet. J'ai l'intention de combattre une horde de vampires très puissants dans cette ville et j'aimerais solliciter l'aide de l'Ordre.~ */ GOTO 35
  IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY #53017 /* ~En effet. J'ai l'intention de combattre une horde de vampires très puissants dans cette ville et j'aimerais solliciter l'aide de l'Ordre.~ */ GOTO 36
  IF ~~ THEN REPLY #53020 /* ~Non, pas pour le moment.~ */ GOTO 37
END

IF WEIGHT #11 /* Triggers after states #: 64 even though they appear after this state */
~Global("Chapter","GLOBAL",6)
InPartySlot(LastTalkedToBy,0)
!Global("PaladinOrder","GLOBAL",1)
ReputationLT(LastTalkedToBy,10)
Global("OrderFightBodhi","GLOBAL",0)
!Dead("c6bodhi")~ THEN BEGIN 34 // from:
  SAY #53010 /* ~<CHARNAME>. C'est avec la lame de mon épée que je salue une vipère telle que vous ! Donnez-moi une seule bonne raison pour que je ne vous tue pas sur-le-champ !~ */
  IF ~Global("WorkingForBodhi","GLOBAL",0)
CheckStatGT(Player1,14,CHR)~ THEN REPLY #53021 /* ~Nous avons un ennemi commun. J'ai l'intention de combattre une horde de vampires très puissants dans cette ville et j'aimerais solliciter l'aide de l'Ordre.~ */ GOTO 38
  IF ~Global("WorkingForBodhi","GLOBAL",1)
CheckStatGT(Player1,14,CHR)~ THEN REPLY #53022 /* ~Nous avons un ennemi commun. J'ai l'intention de combattre une horde de vampires très puissants dans cette ville et j'aimerais solliciter l'aide de l'Ordre.~ */ GOTO 39
  IF ~Global("WorkingForBodhi","GLOBAL",0)
CheckStatLT(Player1,15,CHR)~ THEN REPLY #53023 /* ~Mon ennemi est une puissante sorcière vampire, ici, à Athkatla et je viens vous offrir le privilège de vous joindre à moi pour l'éliminer.~ */ GOTO 40
  IF ~Global("WorkingForBodhi","GLOBAL",1)
CheckStatLT(Player1,15,CHR)~ THEN REPLY #53024 /* ~Mon ennemi est une puissante sorcière vampire, ici, à Athkatla et je viens vous offrir le privilège de vous joindre à moi pour l'éliminer.~ */ GOTO 43
  IF ~~ THEN REPLY #53025 /* ~Ne me menacez pas, vieil homme. Vous pourriez le regretter.~ */ GOTO 41
  IF ~~ THEN REPLY #53026 /* ~Une raison ? Eh bien que pensez-vous de celle-là : je pars ? J'espère que vous êtes très fier de vous et de votre... accueil, vieil homme.~ */ GOTO 42
END

IF WEIGHT #12 /* Triggers after states #: 64 even though they appear after this state */
~Global("Chapter","GLOBAL",6)
Global("OrderFightBodhi","GLOBAL",1)
!Dead("c6bodhi")~ THEN BEGIN 62 // from:
  SAY #53107 /* ~L'Ordre combattra ces vampires à vos côtés, <GABBER>. Rendez-vous au cimetière et entrez dans la crypte de cette sorcière... Les paladins vous y rejoindront.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 64 even though they appear after this state */
~Global("Chapter","GLOBAL",6)
Global("OrderFightBodhi","GLOBAL",2)~ THEN BEGIN 63 // from:
  SAY #53109 /* ~Je vous le répète, l'Ordre ne vous apportera aucune aide. Quittez ces lieux et allez racontez vos mensonges à d'autres !~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Global("Chapter","GLOBAL",6)
Global("OrderFightBodhi","GLOBAL",1)
Dead("c6bodhi")~ THEN BEGIN 64 // from:
  SAY #53240 /* ~L'alliance de nos forces a été plus que fructueuse ! Et aujourd'hui, nous avons fait un grand pas en avant dans notre lutte contre le mal... Les vaillants paladins, morts pour cette cause, seront longtemps pleurés. <CHARNAME>, je suis fier de vous ; vous avez fait du bon travail.~ */
  IF ~~ THEN EXIT
END

END
