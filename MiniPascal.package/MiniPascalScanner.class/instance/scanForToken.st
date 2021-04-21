generated
scanForToken
	self step.
	currentCharacter == Character space
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $/
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	^ self scanForTokenX9