generated
scanForTokenX8
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $^
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $`
		ifTrue: [ [ self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(40) ].
			true ] whileTrue ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX7 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX3 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue:
			[ self scanForTokenX1 ].
	^ self reportLastMatch