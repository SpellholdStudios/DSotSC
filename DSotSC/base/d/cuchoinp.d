BEGIN ~CUCHOINP~

IF ~HappinessLT(Myself,0)
!InParty(Myself)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~LeaveParty()
ActionOverride("BUBBA",ChangeEnemyAlly("BUBBA",ENEMY))
Enemy()~ EXIT
END

IF ~!InParty(Myself)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)
ActionOverride("BUBBA",ChangeEnemyAlly("BUBBA",NEUTRAL))
DropInventory()
ActionOverride("BUBBA",EscapeArea())
EscapeArea()~ EXIT
END
