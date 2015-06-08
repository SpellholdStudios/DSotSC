BEGIN ~DSTHOMIC~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~TakePartyItem("DSMISC05")
GiveGoldForce(50)
EscapeArea()~ EXIT
END
