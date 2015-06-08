BEGIN ~DSMEGAN~

IF ~NumberOfTimesTalkedTo(0)
AreaCheck("%Nashkel%")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN REPLY @8 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Megacut")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~AreaCheck("%Nashkel_ManorHouse_L2%")~ THEN BEGIN 5
  SAY @11 
  IF ~~ THEN EXIT
END
