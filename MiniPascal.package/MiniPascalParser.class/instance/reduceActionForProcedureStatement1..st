generated-reduction actions
reduceActionForProcedureStatement1: nodes
	| result |
	result := MiniPascalProcedureCallNode new.
	result identifierToken: (nodes at: 1).
	^ result