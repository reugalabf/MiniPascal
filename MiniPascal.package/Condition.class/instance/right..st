generated
right: aProgram
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aProgram.
	self right notNil
		ifTrue: [ self right parent: self ]