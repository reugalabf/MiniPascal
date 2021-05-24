generated
variable: aMiniPascalVariableNode
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aMiniPascalVariableNode.
	self variable notNil
		ifTrue: [ self variable parent: self ]