BEGIN ~SKEEZJ~

IF ~HappinessLT(Myself,0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

