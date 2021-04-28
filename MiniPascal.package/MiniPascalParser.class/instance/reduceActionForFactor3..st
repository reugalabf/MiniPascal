generated-reduction actions
reduceActionForFactor3: nodes
	| result |
	result := Factor new.
	result leftParenToken: (nodes at: 1).
	result rightParenToken: (nodes at: 3).
	^ result