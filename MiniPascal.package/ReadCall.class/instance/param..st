generated
param: aProgram
	self param notNil
		ifTrue: [ self param parent: nil ].
	param := aProgram.
	self param notNil
		ifTrue: [ self param parent: self ]