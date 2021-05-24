generated-reduction actions
reduceActionForReadStatement1: nodes
	| result |
	result := MiniPascalReadCallNode new.
	result readToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result param: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result