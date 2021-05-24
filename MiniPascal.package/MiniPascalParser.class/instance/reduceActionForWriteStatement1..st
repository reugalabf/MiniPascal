generated-reduction actions
reduceActionForWriteStatement1: nodes
	| result |
	result := MiniPascalWriteCallNode new.
	result writeToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result output: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result