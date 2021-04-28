generated-reduction actions
reduceActionForAssignmentStatement1: nodes
	| result |
	result := Assignment new.
	result identifierToken: ((nodes at: 1) at: 1).
	result leftBracketToken: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result terms.
	result addTokens: ((nodes at: 1) at: 4) to: result operators.
	result addTokens: ((nodes at: 1) at: 5) to: result plusTokens.
	result addTokens: ((nodes at: 1) at: 6) to: result minusTokens.
	result addToken: ((nodes at: 1) at: 7) to: result equalTokens.
	result
		addToken: ((nodes at: 1) at: 8)
		to: result lessThanGreaterThanTokens.
	result addToken: ((nodes at: 1) at: 9) to: result lessThanTokens.
	result
		addToken: ((nodes at: 1) at: 10)
		to: result lessThanEqualTokens.
	result
		addToken: ((nodes at: 1) at: 11)
		to: result greaterThanEqualTokens.
	result addToken: ((nodes at: 1) at: 12) to: result greaterThanTokens.
	result rightBracketToken: ((nodes at: 1) at: 13).
	result colonEqualToken: (nodes at: 2).
	^ result