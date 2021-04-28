generated
statement: aCompoundStatement
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aCompoundStatement.
	self statement notNil
		ifTrue: [ self statement parent: self ]