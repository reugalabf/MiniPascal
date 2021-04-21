generated
scanForTokenX7
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	^ self reportLastMatch