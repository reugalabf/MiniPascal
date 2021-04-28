generated-reduction actions
reduceActionForTerm1: nodes
	| result |
	result := Term new.
	result addNode: (nodes at: 1) to: result factors.
	result addTokens: ((nodes at: 2) at: 1) to: result operators.
	result addNodes: ((nodes at: 2) at: 2) to: result factors.
	^ result