REPLACE ~BHOISIG~


IF WEIGHT #2 ~InPartySlot(LastTalkedToBy,0)
ReputationGT(Player1,14)
Alignment(Player1,MASK_GENEUTRAL)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY #28278 /* ~Bienvenue. Je savais bien que vous viendriez. Votre visage respire la bonté, et je ne doutais pas de vous.~ */
  IF ~~ THEN GOTO 8
END

IF WEIGHT #3 ~InPartySlot(LastTalkedToBy,0)
ReputationLT(Player1,15)
Alignment(Player1,MASK_GENEUTRAL)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY #28280 /* ~Je pensais que vous ne viendriez pas. J'ai entendu parler de vous. Vous ne semblez pas être très bonne ou loyale, mais cela suffira.~ */
  IF ~~ THEN GOTO 8
END

IF WEIGHT #4 ~Global("PlayerHasStronghold","GLOBAL",2)
InPartySlot(LastTalkedToBy,0)
ReputationGT(Player1,14)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY #28281 /* ~Bien, vous êtes venue. Sachez que je ne vous accorderai que la confiance que vous saurez gagner. Même une bonne réputation comme la vôtre doit être confirmée par des actes.~ */
  IF ~~ THEN GOTO 10
END

IF WEIGHT #5 ~Global("PlayerHasStronghold","GLOBAL",2)
InPartySlot(LastTalkedToBy,0)
ReputationLT(Player1,15)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY #28282 /* ~Il était temps ! Tout d'abord, je dois vous informer que je suis au courant de votre réputation. Mais je n'en ai cure. Vous serez jugée en fonction de vos actes et de vos résultats.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 30 // from: 26.1 24.3 26.1 24.3
  SAY #28370 /* ~Des adorateurs de spectateur, presque sous les yeux de Helm ? Vous nous avez rendu un fier service en détruisant cette secte. Nous enverrons des prêtres pour exorciser ce lieu.~ */
  IF ~~ THEN GOTO 31
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN GOTO 32
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
~ THEN GOTO 32
END

IF WEIGHT #8 ~Global("BeholderPlot","GLOBAL",2)
Global("JoinHelm","GLOBAL",0)
Class(Player1,CLERIC_ALL)~ THEN BEGIN 42 // from:
  SAY #28388 /* ~Vous venez de laisser passer une chance qui ne se représentera pas. Qu'il en soit ainsi ! Mais vous serez toujours la bienvenue ici, même si vous n'êtes pas des nôtres. Au revoir...~ */
  IF ~OR(3)
!Global("Chapter","GLOBAL",6)
Global("OisigDecided","LOCALS",1)
Dead("c6bodhi")~ THEN EXIT
  IF ~Global("Chapter","GLOBAL",6)
Global("OisigDecided","LOCALS",0)
!Dead("c6bodhi")~ THEN REPLY #53268 /* ~Je suis venue te demander l'aide d'Helm pour une affaire très importante, Sentinelle Suprême.~ */ GOTO 58
END

IF WEIGHT #11 ~Global("BeholderPlot","GLOBAL",2)
!Class(Player1,CLERIC_ALL)~ THEN BEGIN 59 // from:
  SAY #53271 /* ~Qu'Helm vous protège et vous garde du danger dans vos futures entreprises. Maintenant... excusez-moi, mais j'ai beaucoup à faire.~ */
  IF ~OR(3)
!Global("Chapter","GLOBAL",6)
Global("OisigDecided","LOCALS",1)
Dead("c6bodhi")~ THEN EXIT
  IF ~Global("Chapter","GLOBAL",6)
Global("OisigDecided","LOCALS",0)
!Dead("c6bodhi")~ THEN REPLY #53272 /* ~Je suis venue te demander l'aide d'Helm pour une affaire très importante, Sentinelle Suprême.~ */ GOTO 58
END

END
