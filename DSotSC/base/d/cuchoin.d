BEGIN ~CUCHOIN~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobalTimer("CuChoin","GLOBAL",SIX_DAYS)
RevealAreaOnMap("DSC010")
JoinParty()~ UNSOLVED_JOURNAL @90000 EXIT
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("CuChoinneach","GLOBAL",2)
ActionOverride("BUBBA",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN DO ~RevealAreaOnMap("DSC010")
SetGlobal("CuChoinneach","GLOBAL",2)
ActionOverride("BUBBA",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @6 DO ~SetGlobalTimer("CuChoin","GLOBAL",SIX_DAYS)
RevealAreaOnMap("DSC010")
JoinParty()~ UNSOLVED_JOURNAL @90000 EXIT
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 5
END
