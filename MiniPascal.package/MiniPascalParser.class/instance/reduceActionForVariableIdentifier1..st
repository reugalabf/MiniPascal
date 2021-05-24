generated-reduction actions
reduceActionForVariableIdentifier1: nodes
	| result |
	result := MiniPascalVariableNode new.
	result name: (nodes at: 1).
	^ result