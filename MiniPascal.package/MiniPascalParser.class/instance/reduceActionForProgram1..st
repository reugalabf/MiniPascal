generated-reduction actions
reduceActionForProgram1: nodes
	| result |
	result := MiniPascalRootNode new.
	result programToken: (nodes at: 1).
	result identifierToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result semicolonTokens.
	result addNodes: ((nodes at: 4) at: 1) to: result varDecls.
	result addTokens: ((nodes at: 4) at: 2) to: result semicolonTokens.
	result addNodes: ((nodes at: 4) at: 3) to: result procDecls.
	result compStatement: ((nodes at: 4) at: 4).
	^ result