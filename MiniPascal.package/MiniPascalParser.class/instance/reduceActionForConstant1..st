generated-reduction actions
reduceActionForConstant1: nodes
	| result |
	result := MiniPascalConstantNode new.
	result constantToken: (nodes at: 1).
	^ result