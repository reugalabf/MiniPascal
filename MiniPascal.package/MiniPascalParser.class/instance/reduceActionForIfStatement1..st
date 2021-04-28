generated-reduction actions
reduceActionForIfStatement1: nodes
	| result |
	result := Condition new.
	result ifToken: (nodes at: 1).
	result thenToken: (nodes at: 3).
	^ result