generated-reduction actions
reduceActionForConstant1: nodes
	| result |
	result := Constant new.
	result constantToken: (nodes at: 1).
	^ result