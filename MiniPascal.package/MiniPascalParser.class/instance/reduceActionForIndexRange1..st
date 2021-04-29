generated-reduction actions
reduceActionForIndexRange1: nodes
	| result |
	result := IndexRange new.
	result start: (nodes at: 1).
	result periodPeriodToken: (nodes at: 2).
	result end: (nodes at: 3).
	^ result