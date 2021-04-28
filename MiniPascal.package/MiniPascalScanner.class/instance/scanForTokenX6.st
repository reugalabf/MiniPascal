generated
scanForTokenX6
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch