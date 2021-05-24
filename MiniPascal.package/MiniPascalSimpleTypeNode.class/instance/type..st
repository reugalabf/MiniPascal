generated
type: aMiniPascalTypeIdentifierNode
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aMiniPascalTypeIdentifierNode.
	self type notNil
		ifTrue: [ self type parent: self ]