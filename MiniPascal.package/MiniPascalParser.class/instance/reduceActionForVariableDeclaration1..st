generated-reduction actions
reduceActionForVariableDeclaration1: nodes
	| result |
	result := MiniPascalVariableDeclarationNode new.
	result varToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result variables.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result colonToken: (nodes at: 3).
	result type: (nodes at: 4).
	^ result