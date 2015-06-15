BEGIN ~DSPHANTM~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("PhantomSpawn","DSC002",2)~ EXIT
  IF ~~ THEN REPLY @17 EXIT
END

IF ~Global("LichResurect","GLOBAL",1)
~ THEN BEGIN 8
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @24
  IF ~~ THEN REPLY @25 DO ~SetGlobal("LichResurect","GLOBAL",2)
~ EXIT
END

IF ~Die()
~ THEN BEGIN 12
  SAY @26
  IF ~~ THEN EXIT
END

IF ~Global("LichDead","GLOBAL",1)
PartyHasItem("DSMISC09")
~ THEN BEGIN 13
  SAY @27
  IF ~~ THEN DO ~AddexperienceParty(800)
TakePartyItemAll("DSMISC08")
TakePartyItem("DSMISC09")
ActionOverride("DSPHANT1",ApplySpell(Myself,RED_HOLY_MIGHT))
ActionOverride("DSPHANT1",DestroySelf())
ActionOverride("DSPHANT2",ApplySpell(Myself,RED_HOLY_MIGHT))
ActionOverride("DSPHANT2",DestroySelf())
ActionOverride("DSPHANT3",ApplySpell(Myself,RED_HOLY_MIGHT))
ActionOverride("DSPHANT3",DestroySelf())
ActionOverride("DSPHANT4",ApplySpell(Myself,RED_HOLY_MIGHT))
ActionOverride("DSPHANT4",DestroySelf())
ActionOverride("DSPHANT5",ApplySpell(Myself,RED_HOLY_MIGHT))
ActionOverride("DSPHANT5",DestroySelf())
ActionOverride("DSPHANT6",ApplySpell(Myself,RED_HOLY_MIGHT))
ActionOverride("DSPHANT6",DestroySelf())
~ EXIT
END
