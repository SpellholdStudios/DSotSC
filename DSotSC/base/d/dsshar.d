BEGIN ~DSSHAR~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~DSMORTUS~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~DSMORTUS~ 1
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~Enemy()
ActionOverride("DSMortus",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~Enemy()
ActionOverride("DSMortus",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~Enemy()
ActionOverride("DSMortus",Enemy())~ EXIT
END
