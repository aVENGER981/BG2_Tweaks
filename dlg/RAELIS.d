REPLACE ~RAELIS~


IF WEIGHT #8 ~Global("PlanarPrison","GLOBAL",1)
Dead("Haerdalis")
AreaCheck("AR0516")
~ THEN BEGIN 71 // from:
  SAY #39922 /* ~Vous nous connaissez depuis si peu de temps, et cependant vous avez payé notre liberté de votre sang. Mon enfant, mon ami, c'est une dette dont je ne pourrai jamais m'acquitter...~ */
  IF ~~ THEN DO ~EraseJournalEntry(4685)
EraseJournalEntry(46846)
EraseJournalEntry(46847)
EraseJournalEntry(46848)
EraseJournalEntry(46849)
EraseJournalEntry(46850)
EraseJournalEntry(46851)
AddXPObject(Player1,44000)
AddXPObject(Player2,44000)
AddXPObject(Player3,44000)
AddXPObject(Player4,44000)
AddXPObject(Player5,44000)
AddXPObject(Player6,44000)
~ JOURNAL #47761 /* ~Sauver Raelis et Haer'Dalis de la prison planaire.

Ce ne fut pas simple, mais Raelis et sa troupe, y compris Haer'Dalis, ont été libérés de la prison planaire dans laquelle ils étaient enfermés. Raelis et sa troupe ont fui l'endroit, mais sa magie était assez puissante pour ouvrir un autre conduit et nous ramener chez nous.~ */ FLAGS 256 GOTO 61
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
~ THEN DO ~EraseJournalEntry(4685)
EraseJournalEntry(46846)
EraseJournalEntry(46847)
EraseJournalEntry(46848)
EraseJournalEntry(46849)
EraseJournalEntry(46850)
EraseJournalEntry(46851)
AddXPObject(Player1,44000)
AddXPObject(Player2,44000)
AddXPObject(Player3,44000)
AddXPObject(Player4,44000)
AddXPObject(Player5,44000)
AddXPObject(Player6,44000)
~ JOURNAL #47761 /* ~Sauver Raelis et Haer'Dalis de la prison planaire.

Ce ne fut pas simple, mais Raelis et sa troupe, y compris Haer'Dalis, ont été libérés de la prison planaire dans laquelle ils étaient enfermés. Raelis et sa troupe ont fui l'endroit, mais sa magie était assez puissante pour ouvrir un autre conduit et nous ramener chez nous.~ */ FLAGS 256 GOTO 23
END

IF ~~ THEN BEGIN 72 // from:
  SAY #50218 /* ~C'est une question plutôt maladroite, mon enfant. Il est très malséant d'imposer des exigences à des gens désespérés. Néanmoins, nous pourrons peut-être parvenir à un accord.~ */
  IF ~~ THEN GOTO 73
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
~ THEN GOTO 77
END

END
