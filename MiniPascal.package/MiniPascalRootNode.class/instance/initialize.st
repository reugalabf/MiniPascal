generated-initialize-release
initialize
	super initialize.
	semicolonTokens := OrderedCollection new: 2.
	varDecls := OrderedCollection new: 2.
	procDecls := OrderedCollection new: 2.