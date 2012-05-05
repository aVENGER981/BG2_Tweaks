BEGIN ~MULTIG~

// this is what we say if we are kicked out and waiting around
IF ~Global("Waiting","LOCALS",1)
    !InParty(Myself)~ THEN BEGIN wait SAY #13347
  IF ~~ THEN REPLY @107002 DO ~SetGlobal("Waiting","LOCALS",0)
                              JoinParty()~ EXIT
  IF ~~ THEN REPLY #27251 EXIT
END

// this is what we say when we were just recently kicked out
IF ~Global("Waiting","LOCALS",0)
    !InParty(Myself)~ THEN BEGIN left SAY #43200 // It has been a pleasure adventuring with you. Well met, and farewell.
  IF ~~ THEN REPLY #27251 DO ~SetGlobal("Waiting","LOCALS",1)~ EXIT // wait here
  IF ~~ THEN REPLY @107002 DO ~JoinParty()~ EXIT    // #74098, doesn't exist in SoA: "Please rejoin the party."
  IF ~GlobalLT("Chapter","GLOBAL",8)
      !AreaCheck("AR0406")~ THEN REPLY #49701 DO ~SetGlobal("Waiting","LOCALS",1)
                                                  EscapeAreaMove("AR0406",689,1127,0)~ EXIT // Copper Coronet
  IF ~!GlobalLT("Chapter","GLOBAL",8)
      !AreaCheck("AR4500")
      !AreaCheck("AR4000")
      !AreaCheck("AR6200")~ THEN REPLY @107003 DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
                                                   SetGlobal("Waiting","LOCALS",1)
                                                   Wait(2)
                                                   MoveBetweenAreas("AR4500",[2552.1445],2)~ EXIT // pocket plane
END

// how did we ever get here?
IF ~InParty(Myself)
    Gender(Myself,MALE)~ THEN BEGIN boy SAY #11082
  IF ~~ THEN EXIT
END

// how did we ever get here?
IF ~InParty(Myself)
    Gender(Myself,FEMALE)~ THEN BEGIN girl SAY #11119
  IF ~~ THEN EXIT
END


