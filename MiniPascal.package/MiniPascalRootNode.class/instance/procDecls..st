generated
procDecls: anOrderedCollection
	self setParents: self procDecls to: nil.
	procDecls := anOrderedCollection.
	self setParents: self procDecls to: self