generated-reduction actions
reduceActionForVariableIdentifier1: nodes
	| result |
	result := Variable new.
	result name: (nodes at: 1).
	^ result