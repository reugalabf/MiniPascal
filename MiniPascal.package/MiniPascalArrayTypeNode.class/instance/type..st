generated
type: aMiniPascalSimpleTypeNode
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aMiniPascalSimpleTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]