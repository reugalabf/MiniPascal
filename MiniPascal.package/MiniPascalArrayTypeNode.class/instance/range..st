generated
range: aMiniPascalIndexRangeNode
	self range notNil
		ifTrue: [ self range parent: nil ].
	range := aMiniPascalIndexRangeNode.
	self range notNil
		ifTrue: [ self range parent: self ]