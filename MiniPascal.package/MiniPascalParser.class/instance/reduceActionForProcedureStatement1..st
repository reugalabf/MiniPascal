generated-reduction actions
reduceActionForProcedureStatement1: nodes
	| result |
	result := ProcedureCall new.
	result identifierToken: (nodes at: 1).
	^ result