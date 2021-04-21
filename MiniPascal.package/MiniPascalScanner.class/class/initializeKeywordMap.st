generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(42 'and' 22) #(42 'array' 23) #(42 'begin' 24) #(42 'div' 25) #(42 'do' 26) #(42 'else' 27) #(42 'end' 28) #(42 'if' 29) #(42 'not' 30) #(42 'of' 31) #(42 'or' 32) #(42 'procedure' 33) #(42 'program' 34) #(42 'read' 35) #(42 'then' 36) #(42 'var' 37) #(42 'while' 38) #(42 'write' 39) #(43 'and' 22) #(43 'array' 23) #(43 'begin' 24) #(43 'div' 25) #(43 'do' 26) #(43 'else' 27) #(43 'end' 28) #(43 'if' 29) #(43 'not' 30) #(43 'of' 31) #(43 'or' 32) #(43 'procedure' 33) #(43 'program' 34) #(43 'read' 35) #(43 'then' 36) #(43 'var' 37) #(43 'while' 38) #(43 'write' 39))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap