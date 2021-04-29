generated
expression: aProgram
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aProgram.
	self expression notNil
		ifTrue: [ self expression parent: self ]