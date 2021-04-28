generated
scanForTokenX7
	[ self recordMatch: #(40 42).
	self step.
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch