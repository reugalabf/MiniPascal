generated-reduction actions
reduceActionForExpression12: nodes
	| result |
	result := Expression new.
	result addToken: (nodes at: 1) to: result leftParenTokens.
	result addToken: (nodes at: 3) to: result rightParenTokens.
	^ result