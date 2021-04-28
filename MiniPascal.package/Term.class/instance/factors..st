generated
factors: anOrderedCollection
	self setParents: self factors to: nil.
	factors := anOrderedCollection.
	self setParents: self factors to: self