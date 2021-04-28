generated-initialize-release
initialize
	super initialize.
	terms := OrderedCollection new: 2.
	equalTokens := OrderedCollection new: 2.
	lessThanGreaterThanTokens := OrderedCollection new: 2.
	lessThanTokens := OrderedCollection new: 2.
	lessThanEqualTokens := OrderedCollection new: 2.
	greaterThanEqualTokens := OrderedCollection new: 2.
	greaterThanTokens := OrderedCollection new: 2.
	operators := OrderedCollection new: 2.
	plusTokens := OrderedCollection new: 2.
	minusTokens := OrderedCollection new: 2.