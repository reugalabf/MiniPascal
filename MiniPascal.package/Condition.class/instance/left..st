generated
left: aProgram
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aProgram.
	self left notNil
		ifTrue: [ self left parent: self ]