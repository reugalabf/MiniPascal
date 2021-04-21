generated
scanForTokenX1
	self recordMatch: #(40 44).
	self step.
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(40 44).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch