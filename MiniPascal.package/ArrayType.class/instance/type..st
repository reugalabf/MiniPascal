generated
type: aSimpleType
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aSimpleType.
	self type notNil
		ifTrue: [ self type parent: self ]