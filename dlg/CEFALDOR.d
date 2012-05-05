REPLACE ~CEFALDOR~


IF ~~ THEN BEGIN 2 // from: 20.0 8.0 7.0 1.0 0.0 20.0 8.0 7.0 1.0 0.0
  SAY #9616 /* ~Dans ces bois, je me sens plus fort que jamais. Aucun mal ne peut m'atteindre ici. Un tel lien est désapprouvé car il se nourrit de l'énergie de la terre mais mère nature m'abreuve pour que je puisse combattre pour elle.~ [CEFALD07] */
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
InParty("Cernd")
!Dead("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
//See("Cernd")
~ THEN REPLY #9619 /* ~Les rituels de l'Ascension s'appliquent toujours ici. Cernd va te défier pour reprendre le pouvoir.~ */ EXTERN ~CERNDJ~ 69
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
InParty("Jaheira")
!Dead("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
//See("Jaheira")
~ THEN REPLY #9620 /* ~Les rituels anciens gouvernent toujours cet endroit ! En tant que Druide, Jaheira a le droit de te défier !~ */ EXTERN ~JAHEIRAJ~ 94
  IF ~See(PLAYER1)
!StateCheck(PLAYER1,STATE_SLEEPING)
~ THEN REPLY #9621 /* ~Les rituels de l'Ascension s'appliquent toujours ! Je te défie pour le contrôle de ces lieux. Tel est mon droit !~ */ GOTO 13
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
See(PLAYER1)
!StateCheck(PLAYER1,STATE_SLEEPING)
~ THEN REPLY #9622 /* ~Je me battrais contre toi, je me battrais contre vous tous.~ */ GOTO 3
  IF ~Global("CerndFightObserve","GLOBAL",0)~ THEN REPLY #9623 /* ~Nous pouvons peut-être passer un accord ? Un pacte pour les vies de ceux de Franc-Marché ?~ */ GOTO 5
  IF ~Class(Player2,DRUID_ALL)
!Name("Jaheira",Player2)
!Name("Cernd",Player2)
//!Dead(PLAYER2)
See(PLAYER2)
!StateCheck(PLAYER2,STATE_SLEEPING)
~ THEN REPLY #9948 /* ~Il y en a une autre parmi nous qui pourrait te défier selon les vieux rituels. Une druide nommée <PLAYER2>.~ */ GOTO 22
  IF ~Class(Player3,DRUID_ALL)
!Name("Jaheira",Player3)
!Name("Cernd",Player3)
//!Dead(PLAYER3)
See(PLAYER3)
!StateCheck(PLAYER3,STATE_SLEEPING)
~ THEN REPLY #9952 /* ~Il y en a une autre parmi nous qui pourrait te défier selon les vieux rituels. Une druide nommée <PLAYER3>.~ */ GOTO 23
  IF ~Class(Player4,DRUID_ALL)
!Name("Jaheira",Player4)
!Name("Cernd",Player4)
//!Dead(PLAYER4)
See(PLAYER4)
!StateCheck(PLAYER4,STATE_SLEEPING)
~ THEN REPLY #9953 /* ~Il y en a une autre parmi nous qui pourrait te défier selon les vieux rituels. Une druide nommée <PLAYER4>.~ */ GOTO 24
  IF ~Class(Player5,DRUID_ALL)
!Name("Jaheira",Player5)
!Name("Cernd",Player5)
//!Dead(PLAYER5)
See(PLAYER5)
!StateCheck(PLAYER5,STATE_SLEEPING)
~ THEN REPLY #9954 /* ~Il y en a une autre parmi nous qui pourrait te défier selon les vieux rituels. Une druide nommée <PLAYER5>.~ */ GOTO 25
  IF ~Class(Player6,DRUID_ALL)
!Name("Jaheira",Player6)
!Name("Cernd",Player6)
//!Dead(PLAYER6)
See(PLAYER6)
!StateCheck(PLAYER6,STATE_SLEEPING)
~ THEN REPLY #9955 /* ~Il y en a une autre parmi nous qui pourrait te défier selon les vieux rituels. Une druide nommée <PLAYER6>.~ */ GOTO 26
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
!InParty("Cernd")
!Dead("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
See("Cernd")
~ THEN REPLY #38457 /* ~Les rituels de l'Ascension s'appliquent toujours ici. Cernd va te défier pour reprendre le pouvoir.~ */ EXTERN ~CERND~ 60
END

IF ~NumTimesTalkedTo(0)
Global("DruidFight","AR1901",0)
~ THEN BEGIN 6 // from:
  SAY #9850 /* ~Eh bien, qu'avons-nous là ? Une idiote venu entraver la juste puissance de la nature ? Risible. Dites ce que vous avez à dire puis nous pourrons débarrasser la terre de votre vile engeance.~ [CEFALD02] */
  IF ~~ THEN REPLY #9865 /* ~Pourquoi les druides attaquent-ils tous ceux qui entrent dans les bois ? Ce n'est pas notre rôle ! Où est l'équilibre dans tout cela ?~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)~ GOTO 0
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
~ THEN REPLY #9866 /* ~Pourquoi les druides attaquent-ils tous ceux qui entrent dans les bois ? Ce n'est pas le rôle des druides !~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)~ GOTO 7
  IF ~Global("TalkedToCernd","GLOBAL",1)
OR(4)
!InParty("Cernd")
Dead("Cernd")
StateCheck("Cernd",STATE_SLEEPING)
!See("Cernd")
~ THEN REPLY #9867 /* ~Cernd saurait ce qui a changé ici et pourquoi tu gouvernes de cette manière.~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)~ GOTO 8
  IF ~InParty("Cernd")
!Dead("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
See("Cernd")
~ THEN REPLY #9868 /* ~Cernd saurait ce qui a changé ici et pourquoi tu gouvernes de cette manière.~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)~ GOTO 9
  IF ~InParty("Jaheira")
!Dead("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
See("Jaheira")
~ THEN REPLY #10096 /* ~Nous avons des questions à propos des druides. Tout cela touche profondément Jaheira et elle exige des réponses.~ */ DO ~SetGlobal("TalkedFaldor1","GLOBAL",1)~ GOTO 10
END

END
