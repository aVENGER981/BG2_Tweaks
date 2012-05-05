EXTEND_TOP FATESP 6
  IF ~!Dead("Aerie")
      !InMyArea("Aerie")
      Global("AerieSummoned","GLOBAL",0)~ THEN REPLY @318313 DO ~SetGlobal("AerieRomanceActive","GLOBAL",2)
                                                                 SetGlobal("AerieSummoned","GLOBAL",1)
                                                                 SetGlobal("FWAerieSummonedInRomance","GLOBAL",1)~ GOTO 8
END

EXTEND_TOP FATESP 6 #2
  IF ~!Dead("Anomen")
      !InMyArea("Anomen")
      Global("AnomenSummoned","GLOBAL",0)
      !Dead("Saerk")~ THEN REPLY @318315 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)
                                             SetGlobal("AnomenSummoned","GLOBAL",1)
                                             SetGlobal("FWLGAnomenSummonedInRomance","GLOBAL",1)
                                             SetGlobal("AnomenIsKnight","GLOBAL",1)~ GOTO 8
  IF ~!Dead("Anomen")
      !InMyArea("Anomen")
      Global("AnomenSummoned","GLOBAL",0)~ THEN REPLY @318316 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)
                                                                  SetGlobal("AnomenSummoned","GLOBAL",1)
                                                                  SetGlobal("FWCNAnomenSummonedInRomance","GLOBAL",1)
                                                                  SetGlobal("AnomenIsNotKnight","GLOBAL",1)~ GOTO 8

END

EXTEND_TOP FATESP 6 #9
  IF ~!Dead("Jaheira")
      !InMyArea("Jaheira")
      Global("JaheiraSummoned","GLOBAL",0)~ THEN REPLY @318314 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",2)
                                                                   SetGlobal("JaheiraSummoned","GLOBAL",1)
                                                                   SetGlobal("FWJaheiraSummonedInRomance","GLOBAL",1)~ GOTO 8
END

EXTEND_TOP FATESP 6 #18
  IF ~!Dead("Viconia")
      !InMyArea("Viconia")
      Global("ViconiaSummoned","GLOBAL",0)~ THEN REPLY @318317 DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",2)
                                                                   SetGlobal("ViconiaSummoned","GLOBAL",1)
                                                                   SetGlobal("FWViconiaSummonedInRomance","GLOBAL",1)~ GOTO 8
END