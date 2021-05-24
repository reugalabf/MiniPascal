generated-reduction actions
reduceActionForExpression3: nodes
	| result |
	result := MiniPascalBinaryNode new.
	result left: (nodes at: 1).
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result