generated
scanForTokenX4
	[ self recordMatch: #(40 44).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch