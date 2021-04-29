generated
variable: aProgram
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aProgram.
	self variable notNil
		ifTrue: [ self variable parent: self ]