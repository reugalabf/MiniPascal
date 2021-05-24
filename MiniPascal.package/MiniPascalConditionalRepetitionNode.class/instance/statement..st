generated
statement: aMiniPascalProgramNode
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aMiniPascalProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]