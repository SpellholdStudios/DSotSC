BEGIN ~DSJAREN~

IF ~NumberOfTimesTalkedTo(0)
AreaCheck("%Beregost_BurningWizard_L1%")
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 2
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @14
  IF ~~ THEN DO ~SetGlobal("FindRelic","GLOBAL",1)
~ UNSOLVED_JOURNAL @90200 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 4
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~!PartyHasItem("DSMISC10")
AreaCheck("%Beregost_BurningWizard_L1%")
~ THEN BEGIN 6
  SAY @19
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("DSMISC10")
AreaCheck("%Beregost_BurningWizard_L1%")
~ THEN BEGIN 7
  SAY @20
  IF ~~ THEN DO ~EraseJournalEntry(@90200)
EraseJournalEntry(@90300)
EraseJournalEntry(@90301)
EraseJournalEntry(@90500)
AddexperienceParty(1300)
ReputationInc(1)
TakePartyItem("DSMISC10")
SetGlobal("RelicReturned","GLOBAL",1)
EscapeArea()
~ SOLVED_JOURNAL @90201 EXIT
END

IF ~PartyHasItem("DSMACE02")
AreaCheck("%Temple_SongoftheMorning%")
~ THEN BEGIN 8
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 9
  IF ~~ THEN REPLY @24 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @25
  IF ~~ THEN DO ~TakePartyItem("DSMACE02")
SmallWait(5)
ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT)
Wait(2)
GiveItemCreate("DSMACE03",LastTalkedToBy(Myself),1,1,0)
~ JOURNAL @90202 EXIT
END

IF ~!PartyHasItem("DSMACE02")
AreaCheck("%Temple_SongoftheMorning%")~ THEN BEGIN 10
  SAY @27
  IF ~~ THEN EXIT
END
