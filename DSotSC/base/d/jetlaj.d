BEGIN ~JETLAJ~

IF ~~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~DSBANSHE~ 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~DSBANSHE~ 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 DO ~LeaveParty()
EscapeArea()~ EXTERN ~DSBANSHE~ 4
  IF ~~ THEN REPLY @5 EXTERN ~DSBANSHE~ 4
END

IF WEIGHT #3 ~Dead("DSBanshe")
PartyHasItem("DSAMUL02")~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("JetlaReward","GLOBAL",1)~ EXIT
END

IF WEIGHT #0 ~!Dead("DSBanshe")
GlobalTimerExpired("Jetla","GLOBAL")
Global("JetlaSister","GLOBAL",1)~ THEN BEGIN 4
  SAY @7 
  IF ~~ THEN DO ~SetGlobal("JetlaSister","GLOBAL",2)
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #1 ~!Dead("DSBanshe")
GlobalTimerExpired("Jetla","GLOBAL")
Global("JetlaSister","GLOBAL",0)~ THEN BEGIN 5
  SAY @8 
  IF ~~ THEN DO ~SetGlobalTimer("Jetla","GLOBAL",TEN_DAYS)
SetGlobal("JetlaSister","GLOBAL",1)~ EXIT
END

IF WEIGHT #2 ~HappinessLT(Myself,0)~ THEN BEGIN 6
  SAY @9 
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

