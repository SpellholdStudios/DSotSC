BEGIN ~DSLENNAN~

IF ~PartyHasItem("DSAMUL02")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~EraseJournalEntry(@90800)
AddexperienceParty(1000)
ReputationInc(1)
TakePartyItem("DSAMUL02")
GiveItem("DSMISC02",LastTalkedToBy(Myself))
EscapeArea()
~ SOLVED_JOURNAL @90400 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~EraseJournalEntry(@90800)
AddexperienceParty(800)
TakePartyItem("DSAMUL02")
GiveItem("DSMISC02",LastTalkedToBy(Myself))
EscapeArea()
~ SOLVED_JOURNAL @90401 EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN EXIT
END
