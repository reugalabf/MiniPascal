generated
expression: anExpression
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := anExpression.
	self expression notNil
		ifTrue: [ self expression parent: self ]