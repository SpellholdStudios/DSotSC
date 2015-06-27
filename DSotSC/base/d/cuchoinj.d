BEGIN ~CUCHOINJ~

IF WEIGHT #0 ~GlobalTimerExpired("CuChoin","GLOBAL")
!Dead("LORDVAMP")
Global("VampSearch","GLOBAL",0)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobalTimer("Cu1st","GLOBAL",TWO_DAYS)~ EXIT
END

IF WEIGHT #1 ~GlobalTimerExpired("Cu1st","GLOBAL")
!Dead("LORDVAMP")
Global("VampSearch","GLOBAL",0)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~SetGlobalTimer("Cu2nd","GLOBAL",ONE_DAY)~ EXIT
END

IF WEIGHT #2 ~GlobalTimerExpired("Cu2nd","GLOBAL")
!Dead("LORDVAMP")
Global("VampSearch","GLOBAL",0)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~Global("CuChoinneachLeaves","GLOBAL",1)
!HasItem("DSMISC07",Myself)
//NumInPartyGT(4)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~LeaveParty()
GiveItemCreate("DSMISC04",LastTalkedToBy,1,0,0)
ActionOverride("BUBBA",ChangeEnemyAlly("BUBBA",NEUTRAL))
DropInventory()
ActionOverride("BUBBA",EscapeArea())
EscapeArea()~ EXIT
END

IF WEIGHT #4 ~Global("CuChoinneachLeaves","GLOBAL",1)
HasItem("DSMISC07",Myself)
//NumInPartyGT(4)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~LeaveParty()
GiveItemCreate("DSMISC04",LastTalkedToBy,1,0,0)
GiveItem("DSMISC07",LastTalkedToBy)
ActionOverride("BUBBA",ChangeEnemyAlly("BUBBA",NEUTRAL))
DropInventory()
ActionOverride("BUBBA",EscapeArea())
EscapeArea()~ EXIT
END
/*
IF WEIGHT #5 ~Global("CuChoinneachLeaves","GLOBAL",1)
!HasItem("DSMISC07",Myself)
NumInPartyLT(4)~ THEN BEGIN 7
  SAY @6
  IF ~~ THEN DO ~LeaveParty()
GiveItemCreate("DSMISC04",LastTalkedToBy,1,0,0)
ActionOverride("BUBBA",ChangeEnemyAlly("BUBBA",NEUTRAL))
DropInventory()
ActionOverride("BUBBA",EscapeArea())
EscapeArea()~ EXIT
END

IF WEIGHT #6 ~Global("CuChoinneachLeaves","GLOBAL",1)
HasItem("DSMISC07",Myself)
NumInPartyLT(4)~ THEN BEGIN 8
  SAY @6
  IF ~~ THEN DO ~LeaveParty()
GiveItemCreate("DSMISC04",LastTalkedToBy,1,0,0)
GiveItem("DSMISC07",LastTalkedToBy)
ActionOverride("BUBBA",ChangeEnemyAlly("BUBBA",NEUTRAL))
DropInventory()
ActionOverride("BUBBA",EscapeArea())
EscapeArea()~ EXIT
END
*/
IF ~~ THEN BEGIN 9
  SAY @7
  IF ~~ THEN EXTERN ~DSVAMPM~ 1
END
