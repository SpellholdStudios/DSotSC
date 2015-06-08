BEGIN ~THORFJ~

IF ~HappinessLT(Myself,0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~True()
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~LeaveParty()
SetDialog("ThorfP")
~ EXIT
END
