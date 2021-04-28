generated
compStatement: aCompoundStatement
	self compStatement notNil
		ifTrue: [ self compStatement parent: nil ].
	compStatement := aCompoundStatement.
	self compStatement notNil
		ifTrue: [ self compStatement parent: self ]