generated-reduction actions
reduceActionForIndexedVariable1: nodes
	| result |
	result := IndexedVariable new.
	result variable: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracketToken: (nodes at: 4).
	^ result