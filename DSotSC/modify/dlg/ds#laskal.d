BEGIN ~DS#LASKAL~

REPLACE ~LASKAL~

IF ~~ THEN BEGIN 5
  SAY @1
  IF ~~ THEN DO ~GiveItem("POTN11",LastTalkedToBy)
GiveItem("DSSTAF01",LastTalkedToBy)
EscapeArea()~ EXIT
END

END