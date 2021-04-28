generated-reduction actions
reduceActionForIfStatement2: nodes
	| result |
	result := Condition new.
	result ifToken: (nodes at: 1).
	result thenToken: (nodes at: 3).
	result elseToken: (nodes at: 5).
	^ result