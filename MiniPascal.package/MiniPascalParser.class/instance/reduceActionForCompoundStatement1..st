generated-reduction actions
reduceActionForCompoundStatement1: nodes
	| result |
	result := MiniPascalCompoundStatementNode new.
	result beginToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result statements.
	result addTokens: ((nodes at: 3) at: 1) to: result semicolonTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result statements.
	result endToken: (nodes at: 4).
	^ result