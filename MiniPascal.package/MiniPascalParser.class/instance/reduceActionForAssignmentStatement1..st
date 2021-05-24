generated-reduction actions
reduceActionForAssignmentStatement1: nodes
	| result |
	result := MiniPascalAssignmentNode new.
	result variable: (nodes at: 1).
	result colonEqualToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result