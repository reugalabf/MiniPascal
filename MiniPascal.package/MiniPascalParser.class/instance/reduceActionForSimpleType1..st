generated-reduction actions
reduceActionForSimpleType1: nodes
	| result |
	result := SimpleType new.
	result type: (nodes at: 1).
	^ result