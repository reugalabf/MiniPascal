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

#%glr;

%ignore_variables leftParenToken rightParenToken;

Program:
	""program"" <identifier> "";"" Block;
	
Block: VariableDeclarationPart 
	ProcedureDeclarationPart 
	StatementPart;
#--------------
VariableDeclarationPart:	<empty> |
	""var""  (VariableDeclaration "";"") +  
	;
VariableDeclaration :	<identifier> ( "","" <identifier> )*  "":""  Type ;
Type :	SimpleType |  ArrayType ;
ArrayType :	""array"" ""["" IndexRange ""]"" ""of"" SimpleType ;
IndexRange : <integerConstant> "".."" <integerConstant>;
SimpleType :	TypeIdentifier;
TypeIdentifier :	<identifier> ;
#--------------
ProcedureDeclarationPart :	( ProcedureDeclaration "";"")*;
ProcedureDeclaration :	""procedure"" <identifier> "";"" Block;
#--------------	
StatementPart :	CompoundStatement;
CompoundStatement:	""begin"" Statement ( "";"" Statement)* ""end"" ;
Statement :	SimpleStatement ; #| StructuredStatement;
#------------	
SimpleStatement :	AssignmentStatement | 
		ProcedureStatement |
		ReadStatement   | 
		WriteStatement ;
AssignmentStatement :	Variable "":="" Expression ;
ProcedureStatement : 	ProcedureIdentifier;
ProcedureIdentifier :	<identifier> ;
ReadStatement :	""read"" ""(""  InputVariable ( "","" InputVariable )* "")"";
InputVariable :	Variable ;
WriteStatement :	""write"" ""("" OutputValue ( "","" OutputValue )* "" )"" ;
OutputValue :	Expression;
#-----------	
StructuredStatement :	CompoundStatement  | 
#		IfStatement |
#		WhileStatement;
;		
IfStatement :	""if"" Expression ""then"" Statement (""else"" Statement)? ;
			
WhileStatement :	""while"" Expression  ""do"" Statement;
#----------	
Expression :	SimpleExpression |
		SimpleExpression RelationalOperator SimpleExpression;		
SimpleExpression :	Sign? Term ( AddingOperator Term )*;	
Term :	Factor ( MultiplyingOperator  Factor)* ;
	
Factor :	Variable | 
	<constant> | 
	""("" Expression "")"" | 
	""not"" Factor;
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