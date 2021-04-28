generated
scanForTokenX3
	[ self recordMatch: #(39).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch