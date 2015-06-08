BEGIN ~DSLENNAN~

IF ~PartyHasItem("DSAMUL02")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~AddexperienceParty(3000)
ReputationInc(1)
TakePartyItem("DSAMUL02")
GiveItem("DSMISC02",LastTalkedToBy(Myself))
EscapeArea()
~ JOURNAL @5 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~AddexperienceParty(2000)
TakePartyItem("DSAMUL02")
GiveItem("DSMISC02",LastTalkedToBy(Myself))
EscapeArea()
~ JOURNAL @7 EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN EXIT
END
