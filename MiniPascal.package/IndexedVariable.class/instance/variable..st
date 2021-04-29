generated
variable: aVariable
	self variable notNil
		ifTrue: [ self variable parent: nil ].
	variable := aVariable.
	self variable notNil
		ifTrue: [ self variable parent: self ]