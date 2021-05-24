generated-reduction actions
reduceActionForTypeIdentifier1: nodes
	| result |
	result := MiniPascalTypeIdentifierNode new.
	result identifierToken: (nodes at: 1).
	^ result