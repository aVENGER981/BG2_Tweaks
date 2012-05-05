REPLACE_STATE_TRIGGER BHNALLA 0 
~NumTimesTalkedTo(0)
Global("BeholderPlot","GLOBAL",0)~

REPLACE ~BHNALLA~

IF WEIGHT #1 ~InPartySlot(LastTalkedToBy,0)
Alignment(Player1,MASK_EVIL)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #29225 /* ~Enfin, vous êtes arrivée ! J'étais sur le point d'ordonner que l'on vous fouette pour votre lenteur mais nous n'en avons pas le temps pour l'instant.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.0
  SAY #29277 /* ~Nous enverrons quelques acolytes se charger d'éventuels survivants et nous nous assurerons que leur dernier repos ne soit pas paisible.~ */
  IF ~~ THEN GOTO 29
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN GOTO 59
END

END
