generated
scanForToken
	self step.
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $/
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scanForTokenX8