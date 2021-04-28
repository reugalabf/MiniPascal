generated-reduction actions
reduceActionForSimpleExpression1: nodes
	| result |
	result := SimpleExpression new.
	result addNode: (nodes at: 1) to: result terms.
	result addTokens: ((nodes at: 2) at: 1) to: result operators.
	result addNodes: ((nodes at: 2) at: 2) to: result terms.
	^ result