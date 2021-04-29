generated
type: aTypeIdentifier
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aTypeIdentifier.
	self type notNil
		ifTrue: [ self type parent: self ]