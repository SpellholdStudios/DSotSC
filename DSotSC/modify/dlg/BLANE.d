APPEND BLANE

IF ~AreaCheck("%Beregost%")~ THEN BEGIN DSFIX1 //4
  SAY @3
  IF ~~ THEN REPLY @4 GOTO DSFIX2
  IF ~~ THEN REPLY @5 GOTO DSFIX2
END

IF ~~ THEN BEGIN DSFIX2 //5
  SAY @6
  IF ~~ THEN REPLY @7 GOTO DSFIX3
  IF ~~ THEN REPLY @8 GOTO DSFIX4
END

IF ~~ THEN BEGIN DSFIX3 //6
  SAY @9
  IF ~~ THEN REPLY @10 DO ~SetGlobal("TalkedBlane","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN DSFIX4 //7
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("TalkedBlane","GLOBAL",1) EscapeArea()~ EXIT
END

END

ADD_STATE_TRIGGER BLANE 0 ~AreaCheck("%Temple_Vestibule%")~
ADD_STATE_TRIGGER BLANE 3 ~AreaCheck("%Temple_Vestibule%")~
//ADD_STATE_TRIGGER BLANE 8 ~AreaCheck("%Temple_Vestibule%")~
//ADD_STATE_TRIGGER BLANE 9 ~AreaCheck("%Temple_Vestibule%")~
//ADD_STATE_TRIGGER BLANE 10 ~AreaCheck("%Temple_Vestibule%")~