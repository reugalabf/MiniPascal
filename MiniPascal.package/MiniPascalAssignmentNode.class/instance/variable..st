generated
variable: aMiniPascalProgramNode
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aMiniPascalProgramNode.
	self variable notNil
		ifTrue: [ self variable parent: self ]