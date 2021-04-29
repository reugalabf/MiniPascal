generated-reduction actions
reduceActionForFactor3: nodes
	| result |
	result := Factor new.
	result addToken: (nodes at: 1) to: result notTokens.
	^ result