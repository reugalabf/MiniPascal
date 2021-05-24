generated
compStatement: aMiniPascalCompoundStatementNode
	self compStatement notNil
		ifTrue: [ self compStatement parent: nil ].
	compStatement := aMiniPascalCompoundStatementNode.
	self compStatement notNil
		ifTrue: [ self compStatement parent: self ]