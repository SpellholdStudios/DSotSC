BEGIN ~DSJULES~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~PartyHasItem("DSAMUL09")~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~TakePartyItem("DSAMUL09")
ReputationInc(1)
EscapeArea()~ EXIT
END
