generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(42 'and' 21) #(42 'array' 22) #(42 'begin' 23) #(42 'div' 24) #(42 'do' 25) #(42 'else' 26) #(42 'end' 27) #(42 'if' 28) #(42 'not' 29) #(42 'of' 30) #(42 'or' 31) #(42 'procedure' 32) #(42 'program' 33) #(42 'read' 34) #(42 'then' 35) #(42 'var' 36) #(42 'while' 37) #(42 'write' 38) #(43 'and' 21) #(43 'array' 22) #(43 'begin' 23) #(43 'div' 24) #(43 'do' 25) #(43 'else' 26) #(43 'end' 27) #(43 'if' 28) #(43 'not' 29) #(43 'of' 30) #(43 'or' 31) #(43 'procedure' 32) #(43 'program' 33) #(43 'read' 34) #(43 'then' 35) #(43 'var' 36) #(43 'while' 37) #(43 'write' 38))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap