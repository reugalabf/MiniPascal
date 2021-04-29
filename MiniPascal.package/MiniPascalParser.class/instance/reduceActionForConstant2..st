generated-reduction actions
reduceActionForConstant2: nodes
	| result |
	result := nodes at: 2.
	result addFirstToken: ((nodes at: 1) at: 1) to: result plusTokens.
	result addFirstToken: ((nodes at: 1) at: 2) to: result minusTokens.
	^ result