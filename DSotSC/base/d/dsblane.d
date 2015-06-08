BEGIN ~DSBLANE~

IF ~NumberOfTimesTalkedTo(0)
AreaCheck("%Temple_Vestibule%")
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~!NumberOfTimesTalkedTo(0)
AreaCheck("%Temple_Vestibule%")
~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~AreaCheck("%Beregost%")
~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("TalkedBlane","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("TalkedBlane","GLOBAL",1)
EscapeArea()
~ EXIT
END
