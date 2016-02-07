BEGIN ~DS#LAUREL~

REPLACE ~LAUREL~

IF ~~ THEN BEGIN 3
  SAY @1
  IF ~~ THEN DO ~SetInterrupt(FALSE)
Wait(3)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
Wait(15)
SetNumTimesTalkedTo(10)
SetInterrupt(TRUE)
~ JOURNAL @90900 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @3
  IF ~~ THEN DO ~SetInterrupt(FALSE)
Wait(3)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
CreateCreature("GIBBER",[900.2600],0)
Wait(15)
SetNumTimesTalkedTo(10)
SetInterrupt(TRUE)
~ JOURNAL @90901 EXIT
END

END
