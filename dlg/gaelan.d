EXTEND_BOTTOM ~GAELAN~ 0 
  IF ~~ THEN REPLY #20906 /* ~Yes, show me to your home.~ */ DO ~SetGlobalTimer("ImoenDream1","GLOBAL",ONE_DAY)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Cut42a")~ EXIT
END

EXTEND_BOTTOM ~GAELAN~ 21
  IF ~~ THEN REPLY #20988 /* ~Very well, I'll be back with the money.~ */ DO ~SetGlobal("GaelanMove","GLOBAL",4)~ GOTO 39
END

