BEGIN IKMORPH

IF ~True()~ ikmorph
  SAY @0
   ++ @1 + male
   ++ @2 + female
END

IF ~~ male
  SAY @3
   ++ @4 + male_human
   ++ @5 + male_elf
   ++ @6 + male_gnome
   ++ @7 + male_halfling
   ++ @8 + male_dwarf
   ++ @9 + male_halforc
END

IF ~~ female
  SAY @3
   ++ @4 + female_human
   ++ @5 + female_elf
   ++ @6 + female_gnome
   ++ @7 + female_halfling
   ++ @8 + female_dwarf
   ++ @9 + female_halforc
END

IF ~~ male_human
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_MALE_HUMAN))~ + male_human_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_MALE_HUMAN))~ + male_human_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_MALE_HUMAN))~ + male_human_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_MALE_HUMAN))~ + male_human_thief
END

IF ~~ female_human
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_FEMALE_HUMAN))~ + female_human_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_FEMALE_HUMAN))~ + female_human_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_FEMALE_HUMAN))~ + female_human_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_FEMALE_HUMAN))~ + female_human_thief
END

IF ~~ male_elf
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_MALE_ELF))~ + male_elf_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_MALE_ELF))~ + male_elf_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_MALE_ELF))~ + male_elf_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_MALE_ELF))~ + male_elf_thief
END

IF ~~ female_elf
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_FEMALE_ELF))~ + female_elf_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_FEMALE_ELF))~ + female_elf_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_FEMALE_ELF))~ + female_elf_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_FEMALE_ELF))~ + female_elf_thief
END

IF ~~ male_gnome
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_MALE_GNOME))~ + male_gnome_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_MALE_GNOME))~ + male_gnome_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_MALE_GNOME))~ + male_gnome_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_MALE_GNOME))~ + male_gnome_thief
END

IF ~~ female_gnome
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_FEMALE_GNOME))~ + female_gnome_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_FEMALE_GNOME))~ + female_gnome_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_FEMALE_GNOME))~ + female_gnome_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_FEMALE_GNOME))~ + female_gnome_thief
END

IF ~~ male_halfling
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_MALE_HALFLING))~ + male_halfling_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_MALE_HALFLING))~ + male_halfling_cleric
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_MALE_HALFLING))~ + male_halfling_thief
END

IF ~~ female_halfling
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_FEMALE_HALFLING))~ + female_halfling_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_FEMALE_HALFLING))~ + female_halfling_cleric
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_FEMALE_HALFLING))~ + female_halfling_thief
END

IF ~~ male_dwarf
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_MALE_DWARF))~ + male_dwarf_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_MALE_DWARF))~ + male_dwarf_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_MALE_DWARF))~ + male_dwarf_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_MALE_DWARF))~ + male_dwarf_thief
END

IF ~~ female_dwarf
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_FEMALE_DWARF))~ + female_dwarf_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_FEMALE_DWARF))~ + female_dwarf_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_FEMALE_DWARF))~ + female_dwarf_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_FEMALE_DWARF))~ + female_dwarf_thief
END

IF ~~ male_halforc
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_MALE_HALFORC))~ + male_halforc_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_MALE_HALFORC))~ + male_halforc_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_MALE_HALFORC))~ + male_halforc_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_MALE_HALFORC))~ + male_halforc_thief
END

IF ~~ female_halforc
  SAY @10
   ++ @11 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(FIGHTER_FEMALE_HALFORC))~ + female_halforc_fighter
   ++ @12 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(CLERIC_FEMALE_HALFORC))~ + female_halforc_cleric
   ++ @13 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(MAGE_FEMALE_HALFORC))~ + female_halforc_mage
   ++ @14 DO ~ActionOverride(LastSummonerOf(Myself),Polymorph(THIEF_FEMALE_HALFORC))~ + female_halforc_thief
END

IF ~~ male_human_fighter
  SAY @15
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_human_cleric
  SAY @16
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_human_mage
  SAY @17
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_human_thief
  SAY @18
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_human_fighter
  SAY @19
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_human_cleric
  SAY @20
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_human_mage
  SAY @21
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_human_thief
  SAY @22
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_elf_fighter
  SAY @23
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_elf_cleric
  SAY @24
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_elf_mage
  SAY @25
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_elf_thief
  SAY @26
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_elf_fighter
  SAY @27
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_elf_cleric
  SAY @28
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_elf_mage
  SAY @29
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_elf_thief
  SAY @30
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_gnome_fighter
  SAY @31
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_gnome_cleric
  SAY @32
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_gnome_mage
  SAY @33
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_gnome_thief
  SAY @34
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_gnome_fighter
  SAY @35
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_gnome_cleric
  SAY @36
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_gnome_mage
  SAY @37
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_gnome_thief
  SAY @38
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_halfling_fighter
  SAY @39
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_halfling_cleric
  SAY @40
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_halfling_thief
  SAY @41
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_halfling_fighter
  SAY @42
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_halfling_cleric
  SAY @43
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_halfling_thief
  SAY @44
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_dwarf_fighter
  SAY @45
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_dwarf_cleric
  SAY @46
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_dwarf_mage
  SAY @47
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_dwarf_thief
  SAY @48
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_dwarf_fighter
  SAY @49
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_dwarf_cleric
  SAY @50
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_dwarf_mage
  SAY @51
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_dwarf_thief
  SAY @52
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_halforc_fighter
  SAY @53
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_halforc_cleric
  SAY @54
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_halforc_mage
  SAY @55
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ male_halforc_thief
  SAY @56
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_halforc_fighter
  SAY @57
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_halforc_cleric
  SAY @58
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_halforc_mage
  SAY @59
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ female_halforc_thief
  SAY @60
  IF ~~ DO ~DestroySelf()~ EXIT
END
