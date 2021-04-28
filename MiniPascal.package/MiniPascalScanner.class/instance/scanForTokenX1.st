generated
scanForTokenX1
	[ self recordMatch: #(41 42).
	self step.
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] ] whileTrue