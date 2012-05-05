EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("quiver02")~ THEN GOTO NewItem
END
  
APPEND WSMITH01

  IF ~~ THEN BEGIN NewItem SAY @122001
    IF ~PartyGoldLT(5000)~ THEN REPLY #70892 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #70893 DO ~SetGlobal("CDItems","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("quiver02",1)
                                                 DestroyGold(5000)
                                                 DestroyItem("quiver02")~ GOTO 56
    IF ~~ THEN REPLY #70894 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @122002
   COPY_TRANS WSMITH01 13
  END
  
  IF WEIGHT #-1 ~GlobalGT("CDCraft","ar0334",0)~ THEN BEGIN HeresYourJunk SAY #59797
    IF ~~ THEN DO ~SetGlobal("CDCraft","ar0334",0)~ EXIT
  END

END

// do cespy stuff while we're here
EXTEND_BOTTOM ~botsmith~ 68
  IF ~PartyHasItem("blun14")
      PartyHasItem("blun30b")~ THEN GOTO AddElectricTo3
  IF ~PartyHasItem("blun30d")
      PartyHasItem("blun30a")~ THEN GOTO AddPoisonTo4Electric
  IF ~PartyHasItem("blun30d")
      !PartyHasItem("blun30a")~ THEN GOTO 69
  IF ~PartyHasItem("blun14")
      PartyHasItem("blun30a")
      PartyHasItem("blun30b")~ THEN GOTO AddBothTo3
END

APPEND ~botsmith~

  IF ~~ THEN BEGIN AddBothTo3 SAY @122040
    IF ~PartyGoldLT(10000)~ THEN REPLY #70892 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #70893 DO ~SetGlobal("ItemMaker","GLOBAL",17)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("blun14",1)
                                                 DestroyItem("blun14")
                                                 TakePartyItemNum("blun30a",1)
                                                 DestroyItem("blun30a")
                                                 TakePartyItemNum("blun30b",1)
                                                 DestroyItem("blun30b")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~PartyGoldGT(4999)~ THEN REPLY @122041 DO ~SetGlobal("CDCespyItem","GLOBAL",1)
                                                  TakePartyGold(5000)
                                                  TakePartyItemNum("blun14",1)
                                                  DestroyItem("blun14")
                                                  TakePartyItemNum("blun30b",1)
                                                  DestroyItem("blun30b")
                                                  DestroyGold(5000)~ GOTO 11
    IF ~PartyGoldGT(4999)~ THEN REPLY @122042 DO ~SetGlobal("ItemMaker","GLOBAL",16)
                                                  TakePartyGold(5000)
                                                  TakePartyItemNum("blun14",1)
                                                  DestroyItem("blun14")
                                                  TakePartyItemNum("blun30a",1)
                                                  DestroyItem("blun30a")
                                                  DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #70894 GOTO 72
  END

  IF ~~ THEN BEGIN AddElectricTo3 SAY @122044
    IF ~PartyGoldLT(5000)~ THEN REPLY #70892 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #70893 DO ~SetGlobal("CDCespyItem","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("blun14",1)
                                                 DestroyItem("blun14")
                                                 TakePartyItemNum("blun30b",1)
                                                 DestroyItem("blun30b")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #70894 GOTO 72
  END

  IF ~~ THEN BEGIN AddPoisonTo4Electric SAY @122045
    IF ~PartyGoldLT(5000)~ THEN REPLY #70892 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #70893 DO ~SetGlobal("ItemMaker","GLOBAL",17)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("blun30d",1)
                                                 DestroyItem("blun30d")
                                                 TakePartyItemNum("blun30a",1)
                                                 DestroyItem("blun30a")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #70894 GOTO 72
  END

END