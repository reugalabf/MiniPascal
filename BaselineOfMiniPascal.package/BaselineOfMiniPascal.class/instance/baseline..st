baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCC'
					with: [ spec repository: 'github://j-brant/SmaCC/src' ];
				package: 'RB_Parses'
					with: [ spec repository: 'github://j-brant/RBParsers/src' ];
				package: 'RB_Parse_Tree_Evaluator'
					with: [ spec repository: 'github://j-brant/RBParsers/src' ];
				package: 'MiniPascal'
					with: [ spec requires: #('SmaCC' "'RB_Parsers' 'RB_Parse_Tree_Evaluator'") ] ].
	spec
		group: 'All'
		with: #('MiniPascal' 'SmaCC' "'RB_Parsers' 'RB_Parse_Tree_Evaluator'")