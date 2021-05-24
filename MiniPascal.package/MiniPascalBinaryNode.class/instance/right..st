generated
right: aMiniPascalProgramNode
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aMiniPascalProgramNode.
	self right notNil
		ifTrue: [ self right parent: self ]