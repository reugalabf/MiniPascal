generated
scanForTokenX3
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self reportLastMatch