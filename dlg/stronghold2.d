// class checks altered to be always true; playerhasstronghold removed in other d file

REPLACE_TRIGGER_TEXT ~bharval~  ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~bhnalla~  ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~borinall~ ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~cechalle~ ~Class(Player1,DRUID\(_[A-Z]+\)?)~ ~True()~
REPLACE_TRIGGER_TEXT ~cechalle~ ~LevelLT(Player1,14)~ ~~
REPLACE_ACTION_TEXT  ~cechalle~ ~ReallyForceSpell(LastTalkedToBy,GREAT_DRUID_TITLE)~ ~~

REPLACE_TRIGGER_TEXT ~cefaldor~ ~Class(Player1,DRUID\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~druidad~  ~Class(Player1,DRUID\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~garren~   ~Class(Player1,PALADIN\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~haerda~   ~Class(Player1,BARD\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~hprelate~ ~Class(Player1,PALADIN\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~lavok~    ~Class(Player1,\([A-Z]+_\)*MAGE\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~nalia~    ~Class(Player1,FIGHTER\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~naliaj~   ~Class(Player1,FIGHTER\(_[A-Z]+\)*)~ ~True()~

REPLACE_TRIGGER_TEXT ~raelis~   ~Class(Player1,BARD\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~renal~    ~Class(Player1,\([A-Z]+_\)*THIEF\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~travin~   ~Class(Player1,\([A-Z]+_\)*CLERIC\(_[A-Z]+\)?)~ ~True()~

REPLACE_TRIGGER_TEXT ~uhmay01~  ~Class(Player1,RANGER\(_[A-Z]+\)?)~ ~True()~

// misc extra dialogue tweaks
REPLACE_STATE_TRIGGER bharval 0
~NumTimesTalkedTo(0)
Global("BeholderPlot","GLOBAL",0)~

REPLACE_STATE_TRIGGER BHNALLA 0
~NumTimesTalkedTo(0)
Global("BeholderPlot","GLOBAL",0)~

REPLACE_STATE_TRIGGER bhoisig 4
~InPartySlot(LastTalkedToBy,0)
ReputationGT(Player1,14)
Alignment(Player1,MASK_GENEUTRAL)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~

REPLACE_STATE_TRIGGER bhoisig 5
~InPartySlot(LastTalkedToBy,0)
ReputationLT(Player1,15)
Alignment(Player1,MASK_GENEUTRAL)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~

REPLACE_STATE_TRIGGER bhoisig 6
~Global("PlayerHasStronghold","GLOBAL",2)
InPartySlot(LastTalkedToBy,0)
ReputationGT(Player1,14)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~

REPLACE_STATE_TRIGGER bhoisig 7
~Global("PlayerHasStronghold","GLOBAL",2)
InPartySlot(LastTalkedToBy,0)
ReputationLT(Player1,15)
Global("BeholderPlot","GLOBAL",0)
Global("NoHelpBeholder","GLOBAL",0)~

EXTEND_BOTTOM bhoisig 30
  IF ~~ THEN GOTO 31
END

REPLACE_STATE_TRIGGER bhoisig 42
~Global("BeholderPlot","GLOBAL",2)
Global("JoinHelm","GLOBAL",0)
Class(Player1,CLERIC_ALL)~

REPLACE_STATE_TRIGGER bhoisig 59
~Global("BeholderPlot","GLOBAL",2)
!Class(Player1,CLERIC_ALL)~

ADD_TRANS_ACTION demson 
BEGIN 119 END
BEGIN END
~EraseJournalEntry(22917)~
