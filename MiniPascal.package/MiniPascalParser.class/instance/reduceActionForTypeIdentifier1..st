generated-reduction actions
reduceActionForTypeIdentifier1: nodes
	| result |
	result := TypeIdentifier new.
	result identifierToken: (nodes at: 1).
	^ result