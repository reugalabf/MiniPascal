generated-reduction actions
reduceActionForFactor2: nodes
	| result |
	result := Factor new.
	result constantToken: (nodes at: 1).
	^ result