generated
factor: aProgram
	self factor notNil
		ifTrue: [ self factor parent: nil ].
	factor := aProgram.
	self factor notNil
		ifTrue: [ self factor parent: self ]