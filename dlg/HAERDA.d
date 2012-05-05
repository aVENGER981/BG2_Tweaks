REPLACE ~HAERDA~


IF ~~ THEN BEGIN 99 // from:
  SAY #191 /* ~Je sais, mademoiselle Raelis. Mon coeur est à vous pour toujours mais le devoir m'appelle. Peut-être que <CHARNAME> me laissera voyager avec lui un moment, mais malgré tout, je dois amener ce moineau au plan primaire.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 59
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN EXTERN ~RAELIS~ 21
END

IF WEIGHT #0 ~Dead("Mekrath")
Global("HaerDalisMove","GLOBAL",0)
Global("PlanarPrison","GLOBAL",0)
~ THEN BEGIN 106 // from:
  SAY #30444 /* ~Oh, ma tête... ce feu... et ces étranges idées qui m'envahissent doucement... où sont donc mes souvenirs passés ? Mais... qu'est-ce que c'est ?~ [HAERDA02] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisFree","GLOBAL",1)~ GOTO 110
END

END
