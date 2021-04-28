generated-reduction actions
reduceActionForExpression2: nodes
	| result |
	result := Expression new.
	result equalToken: ((nodes at: 2) at: 1).
	result lessThanGreaterThanToken: ((nodes at: 2) at: 2).
	result lessThanToken: ((nodes at: 2) at: 3).
	result lessThanEqualToken: ((nodes at: 2) at: 4).
	result greaterThanEqualToken: ((nodes at: 2) at: 5).
	result greaterThanToken: ((nodes at: 2) at: 6).
	^ result