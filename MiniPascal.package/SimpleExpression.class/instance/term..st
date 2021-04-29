generated
term: aTerm
	self term notNil
		ifTrue: [ self term parent: nil ].
	term := aTerm.
	self term notNil
		ifTrue: [ self term parent: self ]