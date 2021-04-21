generated
scanForTokenX9
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $^
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX8 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue:
			[ self scanForTokenX2 ].
	^ self reportLastMatch