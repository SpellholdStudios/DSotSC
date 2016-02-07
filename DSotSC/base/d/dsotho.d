BEGIN ~DSOTHO~

IF ~PartyHasItem("DSMISC02")
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~TakePartyItem("DSMISC02")
SetGlobalTimer("MakeMace","GLOBAL",FIVE_DAYS)
SetGlobal("OthoMace","GLOBAL",1)~ JOURNAL @90600 EXIT
END

IF ~GlobalTimerExpired("MakeMace","GLOBAL")
Global("OthoMace","GLOBAL",1)
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~GiveItem("DSMACE01",LastTalkedToBy)
SetGlobal("OthoMace","GLOBAL",2)
~ JOURNAL @90601 EXIT
END

IF ~!GlobalTimerExpired("MakeMace","GLOBAL")
Global("OthoMace","GLOBAL",1)
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("OthoMace","GLOBAL",0)
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 4
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("OthoMace","GLOBAL",2)
!PartyHasItem("DSHAMM01")
AreaCheck("%Beregost_ThunderhammerSmithy%")~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN EXIT
END

IF ~GlobalLT("FindTearlac","GLOBAL",1)
~ THEN BEGIN 8
  SAY @9
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @23
  IF ~~ THEN DO ~SetGlobal("FindTearlac","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @90602 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 12
  IF ~~ THEN REPLY @27 GOTO 10
END

IF ~!PartyHasItem("DSHAMM01")
Global("FindTearlac","GLOBAL",1)
~ THEN BEGIN 14
  SAY @28
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("DSHAMM01")
~ THEN BEGIN 15
  SAY @29
  IF ~~ THEN DO ~EraseJournalEntry(@90602)
EraseJournalEntry(@90700)
AddexperienceParty(1700)
ReputationInc(1)
TakePartyItem("DSHAMM01")
EscapeArea()
~ SOLVED_JOURNAL @90603 EXIT
END
