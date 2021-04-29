generated
range: anIndexRange
	self range notNil
		ifTrue: [ self range parent: nil ].
	range := anIndexRange.
	self range notNil
		ifTrue: [ self range parent: self ]