generated
varDecls: anOrderedCollection
	self setParents: self varDecls to: nil.
	varDecls := anOrderedCollection.
	self setParents: self varDecls to: self