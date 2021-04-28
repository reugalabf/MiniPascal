generated-reduction actions
reduceActionForSimpleExpression2: nodes
	| result |
	result := SimpleExpression new.
	result plusToken: ((nodes at: 1) at: 1).
	result minusToken: ((nodes at: 1) at: 2).
	result addNode: (nodes at: 2) to: result terms.
	result addTokens: ((nodes at: 3) at: 1) to: result operators.
	result addNodes: ((nodes at: 3) at: 2) to: result terms.
	^ result