generated
type: aMiniPascalProgramNode
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aMiniPascalProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]