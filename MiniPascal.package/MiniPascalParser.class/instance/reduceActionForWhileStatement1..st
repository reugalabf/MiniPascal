generated-reduction actions
reduceActionForWhileStatement1: nodes
	| result |
	result := ConditionalRepetition new.
	result whileToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result doToken: (nodes at: 3).
	result statement: (nodes at: 4).
	^ result