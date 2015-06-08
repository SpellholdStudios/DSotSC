BEGIN ~DSKATARI~

IF ~True()~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 DO ~GiveItem("DSMISC05",LastTalkedToBy(Myself))
EscapeArea()~ EXIT
END
