generated-reduction actions
reduceActionForArrayType1: nodes
	| result |
	result := ArrayType new.
	result arrayToken: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result range: (nodes at: 3).
	result rightBracketToken: (nodes at: 4).
	result ofToken: (nodes at: 5).
	result type: (nodes at: 6).
	^ result