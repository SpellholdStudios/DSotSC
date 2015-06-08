BEGIN ~SKEEZP~

IF WEIGHT #1 ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 DO ~SetGlobal("%KICKED_OUT%","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF WEIGHT #0 ~HappinessLT(Myself,0)
Global("%KICKED_OUT%","LOCALS",0)~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

