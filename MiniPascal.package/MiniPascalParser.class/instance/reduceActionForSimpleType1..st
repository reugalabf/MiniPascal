generated-reduction actions
reduceActionForSimpleType1: nodes
	| result |
	result := MiniPascalSimpleTypeNode new.
	result type: (nodes at: 1).
	^ result