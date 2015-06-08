BEGIN ~DSVAMPM~

IF ~NumberOfTimesTalkedTo(0)
InParty("CuChoinneach")
AreaCheck("DSC016")
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~CUCHOINJ~ 9
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~ActionOverride(Myself,Shout(125))
ActionOverride(Myself,Polymorph(VAMPIRE))
ActionOverride("VAMPFLF1",Polymorph(VAMPIRE_FEMALE))
ActionOverride("VAMPFLF2",Polymorph(VAMPIRE_FEMALE))
Enemy()
~ EXTERN ~DSCLARS~ 5
END

IF ~NumberOfTimesTalkedTo(0)
!InParty("CuChoinneach")
AreaCheck("DSC016")
~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~ActionOverride(Myself,Shout(125))
ActionOverride(Myself,Polymorph(VAMPIRE))
ActionOverride("VAMPFLF1",Polymorph(VAMPIRE_FEMALE))
ActionOverride("VAMPFLF2",Polymorph(VAMPIRE_FEMALE))
Enemy()
~ EXTERN ~DSCLARS~ 5
END

IF ~AreaCheck("DSC017")
~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END

IF ~AreaCheck("DSC018")
~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END
