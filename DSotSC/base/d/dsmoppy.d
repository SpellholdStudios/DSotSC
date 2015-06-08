BEGIN ~DSMOPPY~

IF ~Global("Moppy","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~IncrementGlobal("Moppy","GLOBAL",1)~ EXIT
END

IF ~Global("Moppy","GLOBAL",1)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~IncrementGlobal("Moppy","GLOBAL",1)~ EXIT
END

IF ~Global("Moppy","GLOBAL",2)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~IncrementGlobal("Moppy","GLOBAL",1)~ EXIT
END

IF ~Global("Moppy","GLOBAL",3)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~IncrementGlobal("Moppy","GLOBAL",1)~ EXIT
END

IF ~Global("Moppy","GLOBAL",4)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("DSRNG05",LastTalkedToBy,0,0,0)
IncrementGlobal("Moppy","GLOBAL",1)~ EXIT
END
