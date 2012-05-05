REPLACE_STATE_TRIGGER BHARVAL 0
~NumTimesTalkedTo(0)
Global("BeholderPlot","GLOBAL",0)~

REPLACE ~BHARVAL~


IF WEIGHT #1 ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,14)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #28008 /* ~Vous voilà. Je savais que vous viendriez. Vous avez l'aspect d'une servante de la bonne cause, d'une <MANWOMAN> charitable et de bonne foi.~ */
  IF ~~ THEN GOTO 4
END

IF WEIGHT #2 ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_GOOD)
ReputationLT(Player1,15)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #28033 /* ~Je m'inquiétais de votre venue. Votre réputation n'est pas très claire. Malgré tout, vous avez l'aspect d'une servante de la lumière, d'une <MANWOMAN> charitable.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 29 // from: 24.1 22.3 24.1 22.3
  SAY #28196 /* ~Un culte de Tyrannoeil à Athkatla ? Vous nous avez rendu un plus grand service que je ne m'y attendais. Je vais envoyer tous les prêtres dont je peux me passer pour aller aider les survivants.~ */
  IF ~~ THEN GOTO 30
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN GOTO 62
END

END
