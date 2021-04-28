generated-reduction actions
reduceActionForFactor1: nodes
	| result |
	result := Factor new.
	result identifierToken: ((nodes at: 1) at: 1).
	result leftBracketToken: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result terms.
	result addTokens: ((nodes at: 1) at: 4) to: result operators.
	result addTokens: ((nodes at: 1) at: 5) to: result plusTokens.
	result addTokens: ((nodes at: 1) at: 6) to: result minusTokens.
	result equalToken: ((nodes at: 1) at: 7).
	result lessThanGreaterThanToken: ((nodes at: 1) at: 8).
	result lessThanToken: ((nodes at: 1) at: 9).
	result lessThanEqualToken: ((nodes at: 1) at: 10).
	result greaterThanEqualToken: ((nodes at: 1) at: 11).
	result greaterThanToken: ((nodes at: 1) at: 12).
	result rightBracketToken: ((nodes at: 1) at: 13).
	^ result