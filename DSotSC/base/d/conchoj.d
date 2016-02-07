BEGIN ~CONCHOJ~

IF WEIGHT #0 ~HappinessLT(Myself,0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~GlobalTimerExpired("Conchob","GLOBAL")
Global("DragonDead","GLOBAL",0)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobalTimer("Conchob1","GLOBAL",TWO_DAYS)
~ EXIT
END

IF WEIGHT #2 ~GlobalTimerExpired("Conchob1","GLOBAL")
!Dead("Salandiaxarxes")
~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END
