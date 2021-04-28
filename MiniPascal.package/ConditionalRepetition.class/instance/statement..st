generated
statement: aProgram
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aProgram.
	self statement notNil
		ifTrue: [ self statement parent: self ]