REPLACE ~DEMSON~


IF ~~ THEN BEGIN 119 // from: 118.0 118.0
  SAY #61092 /* ~Je ne vois personne qui soit plus digne que vous de manier la vengeresse sacrée. Entre vos mains, une telle lame frappera le mal jusqu'au coeur.~ */
  IF ~~ THEN DO ~AddexperienceParty(35000)
EraseJournalEntry(61436)
EraseJournalEntry(61437)
EraseJournalEntry(22917)
SetGlobal("PaladinPlot","GLOBAL",30)
~ JOURNAL #61438 /* ~Devoirs de la Forteresse du Paladin : l'épée sainte lame

A la requête du Très Saint Ordre du Coeur Radieux, j'ai tué le dragon rouge Firkraag et récupéré l'épée sainte lame. Maintenant sa puissante magie peut servir la cause pour laquelle elle a été créée et l'Ordre est entièrement satisfait.~ */ FLAGS 256 EXIT
END

END
