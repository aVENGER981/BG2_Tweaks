// give players a chance to decline the druid grove stronghold
EXTEND_BOTTOM CECHALLE 4
  IF ~Global("CerndChallenge","GLOBAL",0) Global("PlayerHasStronghold","GLOBAL",0) Class(Player1,DRUID_ALL)~ THEN DO ~SetGlobal("SPRITE_IS_DEADFaldorn","GLOBAL",1) SetGlobal("SPRITE_IS_DEADcefaldor","GLOBAL",1) SetNumTimesTalkedTo(1)~ GOTO CDDruidChoice
END

APPEND CECHALLE 

  IF ~~ THEN BEGIN CDDruidChoice SAY @116015 = @116016
    IF ~~                               REPLY @116017 GOTO CDGroveAccepted
    IF ~~                               REPLY @116018 GOTO CDGroveAccepted
    IF ~~                               REPLY @116019 GOTO CDGroveDeclined
    IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116020 GOTO CDGroveDeclined
    IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116021 GOTO CDGroveDeclined
  END
  
  IF ~~ THEN BEGIN CDGroveAccepted SAY @116022
    COPY_TRANS CECHALLE 7
  END
  
  IF ~~ THEN BEGIN CDGroveDeclined SAY @116023
    IF ~~ THEN GOTO 5
  END
  
END

// if no restrictions variant installed, the class check will always be true and the player will always go to the new choice states.
// if class restrictions are in place, we need to retain these class checks, though players will get a chance to decline the stronghold.
EXTEND_BOTTOM RAELIS 71
  IF ~Class(Player1,BARD_ALL)~ THEN GOTO CDRewardChoiceRaelis
END

EXTEND_BOTTOM HAERDA 99
  IF ~Class(Player1,BARD_ALL)~ THEN EXTERN RAELIS CDRewardChoiceRaelis2
END

APPEND RAELIS

  IF ~~ THEN BEGIN CDRewardChoiceRaelis SAY @116002
    IF ~~ REPLY @116003 GOTO CDJack
    IF ~~ REPLY @116004 GOTO CDJack
    IF ~~ REPLY @116005 GOTO 22
  END

  IF ~~ THEN BEGIN CDRewardChoiceRaelis2 SAY @116006 = @116007
    IF ~~ REPLY @116003 GOTO 21
    IF ~~ REPLY @116004 GOTO 21
    IF ~~ REPLY @116005 GOTO 20
  END
  
  IF ~~ THEN BEGIN CDJack SAY @116008
    COPY_TRANS RAELIS 23
  END
  
END

// give players a chance to decline the ranger stronghold
ADD_TRANS_TRIGGER UHMAY01 34 ~False()~ DO 0 // false existing reply-less trigger, other PC replies not shown
EXTEND_BOTTOM UHMAY01 34
  IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116009 GOTO CDDeclineCabin
  IF ~GlobalLT("Chapter","GLOBAL",6)~ REPLY @116010 GOTO CDDeclineCabin
  IF ~GlobalGT("Chapter","GLOBAL",5)~ REPLY @116011 GOTO CDDeclineCabin
  IF ~~                               REPLY @116012 GOTO 35
  IF ~~                               REPLY @116013 GOTO 38
END

APPEND UHMAY01

  IF ~~ THEN BEGIN CDDeclineCabin SAY @116014
    IF ~~ THEN GOTO 37
  END
  
END