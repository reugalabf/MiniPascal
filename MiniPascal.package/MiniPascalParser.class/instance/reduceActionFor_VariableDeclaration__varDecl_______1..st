generated-reduction actions
reduceActionFor_VariableDeclaration__varDecl_______1: nodes
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result