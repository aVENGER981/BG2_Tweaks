REPLACE ~CECHALLE~


IF ~~ THEN BEGIN 2 // from: 1.0 1.0
  SAY #8697 /* ~L'un d'entre vous veut-il lancer le défi ? Qui se sent prêt ? Qui sera la nouvelle figure de proue de notre bosquet et assumera le titre de Grand Druide ?~ */
  IF ~Global("PlayerHasStronghold","GLOBAL",2)~ THEN REPLY #55514 /* ~Aucun d'entre nous ne veut lancer un défi pour l'instant.~ */ EXIT
  IF ~Global("GreatDruid","GLOBAL",0)
!Global("GaveTitle","LOCALS",1)~ THEN REPLY #55515 /* ~Oui. <PLAYER1> est prête à lancer le défi et à assumer la charge de Grande Druide.~ */ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut63a")
~ EXIT
  IF ~False()
Class(Player2,DRUID_ALL)
Level(Player2,14)
Global("GreatDruid","GLOBAL",0)
~ THEN REPLY #55516 /* ~Oui. <PLAYER2> est prête à lancer le défi et à assumer la charge de Grande Druide.~ */ EXIT
  IF ~False()
Class(Player3,DRUID_ALL)
Level(Player3,14)
Global("GreatDruid","GLOBAL",0)
~ THEN REPLY #55517 /* ~Oui. <PLAYER3> est prête à lancer le défi et à assumer la charge de Grande Druide.~ */ EXIT
  IF ~False()
Class(Player4,DRUID_ALL)
Level(Player4,14)
Global("GreatDruid","GLOBAL",0)
~ THEN REPLY #55518 /* ~Oui. <PLAYER4> est prête à lancer le défi et à assumer la charge de Grande Druide.~ */ EXIT
  IF ~False()
Class(Player5,DRUID_ALL)
Level(Player5,14)
Global("GreatDruid","GLOBAL",0)
~ THEN REPLY #55519 /* ~Oui. <PLAYER5> est prête à lancer le défi et à assumer la charge de Grande Druide.~ */ EXIT
  IF ~False()
Class(Player6,DRUID_ALL)
Level(Player6,14)
Global("GreatDruid","GLOBAL",0)
~ THEN REPLY #55520 /* ~Oui. <PLAYER6> est prête à lancer le défi et à assumer la charge de Grande Druide.~ */ EXIT
  IF ~Global("GreatDruid","GLOBAL",0)
!Global("GaveTitle","LOCALS",1)~ THEN REPLY #58673 /* ~Je ne suis pas encore prête pour lancer un tel défi.~ */ EXIT
  IF ~Global("GaveTitle","LOCALS",1)~ THEN REPLY #62151 /* ~L'heure n'est plus aux querelles. Je suis le Grand Druide et le Bosquet est maintenant un lieu de paix.~ */ GOTO 16
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.0
  SAY #11300 /* ~J'assume le rôle de Maître des Défis. Que ceux qui cherchent à s'élever dans l'ordre des druides viennent à moi. Quant à toi, je t'exprime nos remerciements.~ */
  IF ~Global("CerndChallenge","GLOBAL",0)
Global("PlayerHasStronghold","GLOBAL",2)~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1)
SetNumTimesTalkedTo(1)~ GOTO 5
  IF ~Global("CerndChallenge","GLOBAL",1)
Global("PlayerHasStronghold","GLOBAL",2)~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1)
SetNumTimesTalkedTo(1)~ GOTO 6
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1)
SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1)
SetNumTimesTalkedTo(1)~ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 15.0 15.0
  SAY #58737 /* ~<CHARNAME> est le Grand Druide. Sois vaillante, car la nature exigera beaucoup de toi. Deviens la représentante de l'équilibre dans tout ce que tu fais.~ */
  IF ~~ THEN DO ~AddexperienceParty(20000)
GiveItemCreate("staf19",LastTalkedToBy,0,0,0)
GiveItemCreate("ring07",LastTalkedToBy,0,0,0)
GiveGoldForce(10000)
~ EXIT
END

END
