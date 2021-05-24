generated
output: aMiniPascalProgramNode
	self output notNil
		ifTrue: [ self output parent: nil ].
	output := aMiniPascalProgramNode.
	self output notNil
		ifTrue: [ self output parent: self ]