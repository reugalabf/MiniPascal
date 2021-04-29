generated-reduction actions
reduceActionForExpression9: nodes
	| result |
	result := BooleanExpression new.
	result left: (nodes at: 1).
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result