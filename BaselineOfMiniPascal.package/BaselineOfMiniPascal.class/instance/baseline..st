baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCC'
					with: [ spec repository: 'git@github.com:j-brant/SmaCC.git' ];
				baseline: 'RB_Parsers'
					with: [ spec repository: 'git@github.com:j-brant/RBParsers.git' ];
				package: 'RB_Parse_Tree_Evaluator'
					with: [ spec repository: 'github://j-brant/RBParsers/src' ];	
				package: 'MiniPascal'
					with: [ spec requires: #('SmaCC' 'RB_Parsers' 'RB_Parsers_Parse_Tree_Evalautor') ] ].
	spec
		group: 'All'
		with: #('MiniPascal' 'SmaCC' 'RB_Parsers' 'RB_Parsers_Parse_Tree_Evalautor')