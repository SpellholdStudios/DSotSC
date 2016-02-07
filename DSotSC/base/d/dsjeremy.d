BEGIN ~DSJEREMY~

IF ~NumberOfTimesTalkedTo(0)
Global("TalkedJeremy","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
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
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 2
  IF ~~ THEN REPLY @15 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @16
  IF ~~ THEN DO ~SetGlobal("TalkedJeremy","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @90300 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 8
  IF ~~ THEN REPLY @20 GOTO 10
END

IF ~!Global("DragonDead","GLOBAL",1)
~ THEN BEGIN 6
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("DragonDead","GLOBAL",1)
Global("JeremyPay","GLOBAL",0)
~ THEN BEGIN 7
  SAY @22
  IF ~~ THEN DO ~ReputationInc(2)
EscapeArea()
~ UNSOLVED_JOURNAL @90301 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @24
  IF ~~ THEN DO ~SetGlobal("TalkedJeremy","GLOBAL",1)
EscapeArea()
~ UNSOLVED_JOURNAL @90300 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @26
  IF ~~ THEN DO ~SetGlobal("JeremyPay","GLOBAL",1)
SetGlobal("TalkedJeremy","GLOBAL",1)
~ UNSOLVED_JOURNAL @90300 EXIT
END

IF ~Global("DragonDead","GLOBAL",1)
Global("JeremyPay","GLOBAL",1)
Global("RelicReturned","GLOBAL",0)
~ THEN BEGIN 11
  SAY @22
  IF ~~ THEN DO ~GivePartyGold(5000)
EscapeArea()
~ UNSOLVED_JOURNAL @90301 EXIT
END

IF ~Global("DragonDead","GLOBAL",1)
Global("JeremyPay","GLOBAL",1)
~ THEN BEGIN 12
  SAY @22
  IF ~~ THEN DO ~GivePartyGold(5000)
EscapeArea()
~ JOURNAL @90301 EXIT
END
