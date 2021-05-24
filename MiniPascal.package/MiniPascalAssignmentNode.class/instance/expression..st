generated
expression: aMiniPascalProgramNode
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aMiniPascalProgramNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]