generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(41 'and' 21) #(41 'array' 22) #(41 'begin' 23) #(41 'div' 24) #(41 'do' 25) #(41 'else' 26) #(41 'end' 27) #(41 'if' 28) #(41 'not' 29) #(41 'of' 30) #(41 'or' 31) #(41 'procedure' 32) #(41 'program' 33) #(41 'read' 34) #(41 'then' 35) #(41 'var' 36) #(41 'while' 37) #(41 'write' 38) #(42 'and' 21) #(42 'array' 22) #(42 'begin' 23) #(42 'div' 24) #(42 'do' 25) #(42 'else' 26) #(42 'end' 27) #(42 'if' 28) #(42 'not' 29) #(42 'of' 30) #(42 'or' 31) #(42 'procedure' 32) #(42 'program' 33) #(42 'read' 34) #(42 'then' 35) #(42 'var' 36) #(42 'while' 37) #(42 'write' 38))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap