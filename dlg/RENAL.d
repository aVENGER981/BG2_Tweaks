REPLACE ~RENAL~


IF ~~ THEN BEGIN 7 // from: 5.0 5.0
  SAY #21210 /* ~Pour être bref, Gaelan vous a recommandé et j'ai confiance en lui. J'ai besoin de mercenaires pour accomplir une tâche particulière et vous êtes le seul à pouvoir faire ça.~ */
  IF ~~ THEN REPLY #21211 /* ~Pourquoi avez-vous besoin de moi ? Pourquoi ne pas prendre un de vos voleurs pour faire ça ?~ */ GOTO 13
  IF ~~ THEN REPLY #21212 /* ~Quel genre de paiement faudrait-il trouver pour cette tâche ?~ */ GOTO 15
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN REPLY #21233 /* ~Quel genre de paiement faudrait-il trouver pour cette tâche ?~ */ GOTO 18
  IF ~~ THEN REPLY #21213 /* ~De quel genre de travail parlez-vous ?~ */ GOTO 20
  IF ~~ THEN REPLY #21214 /* ~Je n'ai aucune envie de travailler pour les voleurs de l'Ombre. Désolée.~ */ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 55.0 55.0
  SAY #21228 /* ~Quelqu'un en qui j'ai confiance, comme vous-même par exemple.~ */
  IF ~~ THEN REPLY #21229 /* ~Pourquoi ? Que voudriez-vous que je fasse exactement ?~ */ GOTO 20
  IF ~~ THEN REPLY #21230 /* ~Je vois. Et combien me paierait-on pour vous rendre un service pareil ?~ */ GOTO 15
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN REPLY #21234 /* ~Je vois. Et combien je serais payé pour vous rendre un service pareil ?~ */ GOTO 18
  IF ~~ THEN REPLY #21231 /* ~Très bien, j'en ai assez entendu. Je veux bien vous rendre ce service.~ */ GOTO 27
  IF ~~ THEN REPLY #21232 /* ~Bon, vous croyez à tort. Je n'ai aucune envie de faire ça.~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 42.0 42.0
  SAY #21252 /* ~Vous allez devoir rassurer Mae'Var évidemment. Il ne va savoir qui vous êtes mais j'ai confiance en vous. Qu'en pensez-vous ?~ */
  IF ~~ THEN REPLY #21253 /* ~Pourquoi n'envoyez-vous pas un de vos hommes pour faire ça ?~ */ GOTO 13
  IF ~~ THEN REPLY #21254 /* ~A quel genre de récompense faut-il que je m'attende?~ */ GOTO 15
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN REPLY #21255 /* ~A quel genre de récompense faut-il que je m'attende?~ */ GOTO 18
  IF ~~ THEN REPLY #21256 /* ~Très bien, je vais le faire.~ */ GOTO 27
  IF ~~ THEN REPLY #21257 /* ~Non, je n'ai aucune envie de travailler pour vous.~ */ GOTO 25
END

IF WEIGHT #8 /* Triggers after states #: 49 95 100 101 108 109 even though they appear after this state */
~Global("RenalJob","GLOBAL",0)
Global("PCComesForth","LOCALS",0)~ THEN BEGIN 31 // from:
  SAY #21264 /* ~Je vous salue <CHARNAME>. Vous avez changé d'avis encore une fois au sujet de ma proposition, pas vrai ?~ */
  IF ~~ THEN REPLY #21265 /* ~Que vouliez-vous que je recommence ?~ */ GOTO 20
  IF ~~ THEN REPLY #21266 /* ~Je me demande pourquoi l'un de vos hommes ne veut pas le faire à votre place.~ */ GOTO 13
  IF ~~ THEN REPLY #21267 /* ~Je me demande quelle récompense vous aurez pour cette tâche.~ */ GOTO 15
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN REPLY #21268 /* ~Je me demande quelle récompense vous aurez pour cette tâche.~ */ GOTO 18
  IF ~~ THEN REPLY #21269 /* ~Non, je ne l'ai pas.~ */ GOTO 32
END

IF WEIGHT #12 /* Triggers after states #: 49 95 100 101 108 109 even though they appear after this state */
~OR(2)
Global("RenalJob","GLOBAL",2)
Global("RenalJob","GLOBAL",3)
Dead("MaeVar")
~ THEN BEGIN 48 // from:
  SAY #21320 /* ~Toutes mes félicitations <CHARNAME>. Vos exploits sont déjà arrivés à mes oreilles, évidemment. Bien joué ! Votre récompense est méritée !~ [RENAL10] */
  IF ~~ THEN DO ~SetGlobal("RenalJob","GLOBAL",4)
EraseJournalEntry(34194)
EraseJournalEntry(34198)
EraseJournalEntry(34201)
EraseJournalEntry(34205)
EraseJournalEntry(34207)
EraseJournalEntry(34211)
EraseJournalEntry(34217)
EraseJournalEntry(34218)
EraseJournalEntry(34220)
EraseJournalEntry(34232)
EraseJournalEntry(34233)
EraseJournalEntry(34234)
EraseJournalEntry(34235)
EraseJournalEntry(34236)
EraseJournalEntry(34237)
EraseJournalEntry(34238)
EraseJournalEntry(34239)
EraseJournalEntry(34240)
EraseJournalEntry(34241)
EraseJournalEntry(34243)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("RenalJob","GLOBAL",4)
~ JOURNAL #47538 /* ~Trouver la preuve de la trahison de Mae'Var.

Mae'Var a été assassiné, comme le voulait Renal Bloodscalp. Un crime de plus à mettre sur l'intégrité des Voleurs de l'Ombre, je pense...~ */ FLAGS 256 GOTO 60
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN DO ~SetGlobal("RenalJob","GLOBAL",4)
EraseJournalEntry(34194)
EraseJournalEntry(34198)
EraseJournalEntry(34201)
EraseJournalEntry(34205)
EraseJournalEntry(34207)
EraseJournalEntry(34211)
EraseJournalEntry(34217)
EraseJournalEntry(34218)
EraseJournalEntry(34220)
EraseJournalEntry(34232)
EraseJournalEntry(34233)
EraseJournalEntry(34234)
EraseJournalEntry(34235)
EraseJournalEntry(34236)
EraseJournalEntry(34237)
EraseJournalEntry(34238)
EraseJournalEntry(34239)
EraseJournalEntry(34240)
EraseJournalEntry(34241)
EraseJournalEntry(34243)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("RenalJob","GLOBAL",4)~ JOURNAL #47538 /* ~Trouver la preuve de la trahison de Mae'Var.

Mae'Var a été assassiné, comme le voulait Renal Bloodscalp. Un crime de plus à mettre sur l'intégrité des Voleurs de l'Ombre, je pense...~ */ FLAGS 256 GOTO 59
END

IF ~~ THEN BEGIN 82 // from: 81.0 80.0 81.0 80.0
  SAY #32888 /* ~C'est bon de vous avoir de nouveau parmi nous. Votre guilde est approuvée à nouveau, prenez-en soin cette fois.~ */
  IF ~~ THEN DO ~SetGlobalTimer("JosterReturn","GLOBAL",SIX_DAYS)
SetGlobal("JosterLeave","GLOBAL",1)
SetGlobal("PGFailed","GLOBAL",0)
EraseJournalEntry(55542)
EraseJournalEntry(55538)
EraseJournalEntry(55543)~ EXIT
END

END
