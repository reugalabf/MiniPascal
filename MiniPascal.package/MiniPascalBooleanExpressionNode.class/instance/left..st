generated
left: aMiniPascalProgramNode
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aMiniPascalProgramNode.
	self left notNil
		ifTrue: [ self left parent: self ]