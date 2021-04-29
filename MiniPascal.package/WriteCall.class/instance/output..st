generated
output: aProgram
	self output notNil
		ifTrue: [ self output parent: nil ].
	output := aProgram.
	self output notNil
		ifTrue: [ self output parent: self ]