generated-reduction actions
reduceActionForRelationalOperator3: nodes
	| result |
	result := Array new: 6.
	result at: 3 put: (nodes at: 1).
	^ result