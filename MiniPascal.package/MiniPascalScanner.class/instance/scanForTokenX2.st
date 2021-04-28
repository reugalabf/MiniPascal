generated
scanForTokenX2
	self recordMatch: #(12).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch