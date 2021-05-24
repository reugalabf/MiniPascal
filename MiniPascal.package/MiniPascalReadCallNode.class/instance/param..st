generated
param: aMiniPascalProgramNode
	self param notNil
		ifTrue: [ self param parent: nil ].
	param := aMiniPascalProgramNode.
	self param notNil
		ifTrue: [ self param parent: self ]