generated
scanForTokenX8
	[ self recordMatch: #(41 43).
	self step.
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch