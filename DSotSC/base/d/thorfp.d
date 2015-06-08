BEGIN ~THORFP~

IF ~HappinessLT(Myself,0)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()
~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END
