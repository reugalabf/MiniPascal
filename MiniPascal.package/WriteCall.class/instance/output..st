generated
output: anExpression
	self output notNil
		ifTrue: [ self output parent: nil ].
	output := anExpression.
	self output notNil
		ifTrue: [ self output parent: self ]