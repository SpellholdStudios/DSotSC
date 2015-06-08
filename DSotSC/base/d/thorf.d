BEGIN ~THORF~

IF ~True()
~ THEN BEGIN 0
  SAY @0
  ++ @1 + Denied
  ++ @2 + Join
END

IF ~~ Denied
SAY @3
  IF ~~ THEN EXIT
END

IF ~~ Join
SAY @4
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~NumTimesTalkedToGT(0)
~ THEN BEGIN TalkAgain
  SAY @5
  IF ~~ THEN REPLY @6 EXIT
  IF ~~ THEN REPLY @7 + Join
END
