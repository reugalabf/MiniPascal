generated
definitionComment
"<number> : [0-9]+ (\. [0-9]*) ? ;
<name> : [a-zA-Z]\w*;
<whitespace> : \s+;

<predefinedIdentifier>: integer | Boolean | true | false;

<specialSymbol>:	
	+ | - | * | = | \<> | \< | > | \<= | >= |
	( | ) | [ | ] | \:= | . | , | \; | \: | .. | div | or |
	and | not | if | then | else | of | while | do |
	begin | end | read | write | var | array |
	procedure | program;

<digit>:0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9;

<letter>: 
	a | b | c | d | e | f | g | h | i | j | k | l | m | n | o |
	p | q | r | s | t | u | v | w | x | y | z | A | B | C |
	D | E | F | G | H | I | J | K | L | M | N | O | P
	| Q | R | S | T | U | V | W | X | Y | Z;

<integerConstant>:	[0-9]+;

<characterConstant>: [a-zA-Z];

<letterOrDigit>:
	<letter> | 
	<digit> ;
	
<identifier>: <letter>  <letterOrDigit>*;

<constantIdentifier>: <identifier>;

<constant>: 
	<integerConstant> | 
	<characterConstant> | 
	<constantIdentifier>;

<empty> : \s+;



%left ""+"" ""-"";
%left ""*"" ""/"";
%right ""^"";
%annotate_tokens;

%root Program;
#%prefix AST;
#%suffix Node;


#%glr;

%ignore_variables leftParenToken rightParenToken;

Program:
	""program"" <identifier>  "";"" Block {{Program}}  ; 
	
Block: VariableDeclarationPart			
	ProcedureDeclarationPart 		
	StatementPart ; #'stmt' ; 		
#--------------
VariableDeclarationPart:	(VariableDeclaration 'varDecl'  "";"") *  ;
	
VariableDeclaration :	""var"" VariableNameList    "":""  Type 'type'   {{VariableDeclaration}} ;

VariableNameList: 	
	  <identifier> 'variable'  ("","" 'comma'   VariableNameList  )* ;
	
Type :	SimpleType |  ArrayType ;
ArrayType :	""array"" ""["" IndexRange ""]"" ""of"" SimpleType ;
IndexRange : <integerConstant> "".."" <integerConstant>;
SimpleType :	TypeIdentifier;
TypeIdentifier :	<identifier> ;
#--------------
ProcedureDeclarationPart :	( ProcedureDeclaration 'procDecl' "";"" )*   ;
ProcedureDeclaration :	""procedure"" 'procToken' <identifier> 'name'  "";"" Block {{ProcedureDeclaration}} ;
#--------------	
StatementPart :	CompoundStatement 'compStatement' ;
CompoundStatement:	""begin"" Statement 'statement' ( "";"" Statement 'statement')* ""end""  {{CompoundStatement}};
Statement :	SimpleStatement  
			| StructuredStatement;
#------------	
SimpleStatement :	AssignmentStatement | 
		ProcedureStatement |
		ReadStatement   | 
		WriteStatement ;
AssignmentStatement :	Variable "":="" Expression {{Assignment}} ;
ProcedureStatement : 	ProcedureIdentifier {{ProcedureCall}};
ProcedureIdentifier :	<identifier> ;

ReadStatement :	""read"" ""(""  ParameterNameList  'param' "")"" {{ReadCall}};
#InputVariable :	Variable ;

ParameterNameList: 	
	 Variable  'param'  ("","" 'comma'   ParameterNameList  )* ;


WriteStatement :	""write"" ""("" OutputValueList  'output' "")"" {{WriteCall}};
#OutputValue :	Expression;

OutputValueList: Expression 'output' ("","" 'comma' OutputValueList)*;	
	
#-----------	
StructuredStatement :	
		CompoundStatement  | 
		IfStatement |
		WhileStatement;		
IfStatement :	""if"" Expression ""then"" Statement (""else"" Statement)? {{Condition}};
			
WhileStatement :	""while"" Expression 'expression' ""do"" Statement 'statement'  {{ConditionalRepetition}};
#----------	
Expression :	SimpleExpression  {{Expression}}|
		SimpleExpression RelationalOperator SimpleExpression {{Expression}};		
SimpleExpression :	Sign?    Term 'term' ( AddingOperator 'operator' Term 'term' )* {{SimpleExpression}};	
Term :	Factor 'factor' ( MultiplyingOperator 'operator'  Factor 'factor')*  {{Term}} ;
	
Factor :	Variable {{Factor}} | 
	<constant> {{Factor}} | 
	""("" Expression "")""  {{Factor}}| 
	""not"" Factor {{Factor}};
#-------------	
RelationalOperator :	""="" | ""<>"" | ""<"" | ""<="" |"">="" | "">"";	
Sign :	""+"" | ""-"";    #| <empty>;	
AddingOperator :	 ""+"" | ""-"" | ""or"";
MultiplyingOperator :	""*"" | ""div"" | ""and"";
#-----------------	
Variable :	EntireVariable | IndexedVariable;	
IndexedVariable :	ArrayVariable ""["" Expression ""]"";	
ArrayVariable : 	EntireVariable ;
EntireVariable :	VariableIdentifier;
VariableIdentifier :	<identifier>;"