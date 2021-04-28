generated-reduction actions
reduceActionForFactor4: nodes
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result notTokens.
	^ result