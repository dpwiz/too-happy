{
module Grammar where
import Tokens
}

%name parseCalc
%tokentype { Token }
%error { parseError }

%token
    let { TokenLet }
    in  { TokenIn }
    int { TokenInt $$ }
    var { TokenSym $$ }
    '=' { TokenEq }
    '+' { TokenPlus }
    '-' { TokenMinus }
    '*' { TokenTimes }
    '/' { TokenDiv }
    '(' { TokenLParen }
    ')' { TokenRParen }
    '{' { TokenLCurl }
    '}' { TokenRCurl }
    '[' { TokenLRect }
    ']' { TokenRRect }

%right in
%nonassoc '>' '<'
%left '+' '-'
%left '*' '/'
%left NEG

%%

Exp : let var '=' Exp in Exp { Let $2 $4 $6 }
    | Exp '+' Exp            { Plus $1 $3 }
    | Exp '-' Exp            { Minus $1 $3 }
    | Exp '*' Exp            { Times $1 $3 }
    | Exp '/' Exp            { Div $1 $3 }
    | '(' Exp ')'            { $2 }
    | '-' Exp %prec NEG      { Negate $2 }
    | int                    { Int $1 }
    | var                    { Var $1 }
    | Rule0 { $1 }
    | Rule1 { $1 }
    | Rule2 { $1 }
    | Rule3 { $1 }
    | Rule4 { $1 }
    | Rule5 { $1 }
    | Rule6 { $1 }
    | Rule7 { $1 }
    | Rule8 { $1 }
    | Rule9 { $1 }
    | Rule10 { $1 }
    | Rule11 { $1 }
    | Rule12 { $1 }
    | Rule13 { $1 }
    | Rule14 { $1 }
    | Rule15 { $1 }
    | Rule16 { $1 }
    | Rule17 { $1 }
    | Rule18 { $1 }
    | Rule19 { $1 }
    | Rule20 { $1 }
    | Rule21 { $1 }
    | Rule22 { $1 }
    | Rule23 { $1 }
    | Rule24 { $1 }
    | Rule25 { $1 }
    | Rule26 { $1 }
    | Rule27 { $1 }
    | Rule28 { $1 }
    | Rule29 { $1 }
    | Rule30 { $1 }
    | Rule31 { $1 }
    | Rule32 { $1 }
    | Rule33 { $1 }
    | Rule34 { $1 }
    | Rule35 { $1 }
    | Rule36 { $1 }
    | Rule37 { $1 }
    | Rule38 { $1 }
    | Rule39 { $1 }
    | Rule40 { $1 }
    | Rule41 { $1 }
    | Rule42 { $1 }
    | Rule43 { $1 }
    | Rule44 { $1 }
    | Rule45 { $1 }
    | Rule46 { $1 }
    | Rule47 { $1 }
    | Rule48 { $1 }
    | Rule49 { $1 }
    | Rule50 { $1 }
    | Rule51 { $1 }
    | Rule52 { $1 }
    | Rule53 { $1 }
    | Rule54 { $1 }
    | Rule55 { $1 }
    | Rule56 { $1 }
    | Rule57 { $1 }
    | Rule58 { $1 }
    | Rule59 { $1 }
    | Rule60 { $1 }
    | Rule61 { $1 }
    | Rule62 { $1 }
    | Rule63 { $1 }
    | Rule64 { $1 }
    | Rule65 { $1 }
    | Rule66 { $1 }
    | Rule67 { $1 }
    | Rule68 { $1 }
    | Rule69 { $1 }
    | Rule70 { $1 }
    | Rule71 { $1 }
    | Rule72 { $1 }
    | Rule73 { $1 }
    | Rule74 { $1 }
    | Rule75 { $1 }
    | Rule76 { $1 }
    | Rule77 { $1 }
    | Rule78 { $1 }
    | Rule79 { $1 }
    | Rule80 { $1 }
    | Rule81 { $1 }
    | Rule82 { $1 }
    | Rule83 { $1 }
    | Rule84 { $1 }
    | Rule85 { $1 }
    | Rule86 { $1 }
    | Rule87 { $1 }
    | Rule88 { $1 }
    | Rule89 { $1 }
    | Rule90 { $1 }
    | Rule91 { $1 }
    | Rule92 { $1 }
    | Rule93 { $1 }
    | Rule94 { $1 }
    | Rule95 { $1 }
    | Rule96 { $1 }
    | Rule97 { $1 }
    | Rule98 { $1 }
    | Rule99 { $1 }

Rule0  : '{' Exp '}' { Dummy $2 }
Rule1  : '{' Exp int '}' { Dummy $2 }
Rule2  : '{' Exp int int '}' { Dummy $2 }
Rule3  : '{' Exp int int int '}' { Dummy $2 }
Rule4  : '{' Exp int int int int '}' { Dummy $2 }
Rule5  : '{' Exp int int int int int '}' { Dummy $2 }
Rule6  : '{' Exp int int int int int int '}' { Dummy $2 }
Rule7  : '{' Exp int int int int int int int '}' { Dummy $2 }
Rule8  : '{' Exp int int int int int int int int '}' { Dummy $2 }
Rule9  : '{' Exp int int int int int int int int int '}' { Dummy $2 }
Rule10 : '{' Exp int int int int int int int int int int '}' { Dummy $2 }
Rule11 : '{' Exp int int int int int int int int int int int '}' { Dummy $2 }
Rule12 : '{' Exp int int int int int int int int int int int int '}' { Dummy $2 }
Rule13 : '{' Exp int int int int int int int int int int int int int '}' { Dummy $2 }
Rule14 : '{' Exp int int int int int int int int int int int int int int '}' { Dummy $2 }
Rule15 : '{' Exp int int int int int int int int int int int int int int int '}' { Dummy $2 }
Rule16 : '{' Exp int int int int int int int int int int int int int int int int '}' { Dummy $2 }
Rule17 : '{' Exp int int int int int int int int int int int int int int int int int '}' { Dummy $2 }
Rule18 : '{' Exp int int int int int int int int int int int int int int int int int int '}' { Dummy $2 }
Rule19 : '{' Exp int int int int int int int int int int int int int int int int int int int '}' { Dummy $2 }
Rule20 : '(' Exp int ')' { Dummy $2 }
Rule21 : '(' Exp int int ')' { Dummy $2 }
Rule22 : '(' Exp int int int ')' { Dummy $2 }
Rule23 : '(' Exp int int int int ')' { Dummy $2 }
Rule24 : '(' Exp int int int int int ')' { Dummy $2 }
Rule25 : '(' Exp int int int int int int ')' { Dummy $2 }
Rule26 : '(' Exp int int int int int int int ')' { Dummy $2 }
Rule27 : '(' Exp int int int int int int int int ')' { Dummy $2 }
Rule28 : '(' Exp int int int int int int int int int ')' { Dummy $2 }
Rule29 : '(' Exp int int int int int int int int int int ')' { Dummy $2 }
Rule30 : '(' Exp int int int int int int int int int int int ')' { Dummy $2 }
Rule31 : '(' Exp int int int int int int int int int int int int ')' { Dummy $2 }
Rule32 : '(' Exp int int int int int int int int int int int int int ')' { Dummy $2 }
Rule33 : '(' Exp int int int int int int int int int int int int int int ')' { Dummy $2 }
Rule34 : '(' Exp int int int int int int int int int int int int int int int ')' { Dummy $2 }
Rule35 : '(' Exp int int int int int int int int int int int int int int int int ')' { Dummy $2 }
Rule36 : '(' Exp int int int int int int int int int int int int int int int int int ')' { Dummy $2 }
Rule37 : '(' Exp int int int int int int int int int int int int int int int int int int ')' { Dummy $2 }
Rule38 : '(' Exp int int int int int int int int int int int int int int int int int int int ')' { Dummy $2 }
Rule39 : '(' Exp int int int int int int int int int int int int int int int int int int int int ')' { Dummy $2 }
Rule40 : '[' Exp ']' { Dummy $2 }
Rule41 : '[' Exp int ']' { Dummy $2 }
Rule42 : '[' Exp int int ']' { Dummy $2 }
Rule43 : '[' Exp int int int ']' { Dummy $2 }
Rule44 : '[' Exp int int int int ']' { Dummy $2 }
Rule45 : '[' Exp int int int int int ']' { Dummy $2 }
Rule46 : '[' Exp int int int int int int ']' { Dummy $2 }
Rule47 : '[' Exp int int int int int int int ']' { Dummy $2 }
Rule48 : '[' Exp int int int int int int int int ']' { Dummy $2 }
Rule49 : '[' Exp int int int int int int int int int ']' { Dummy $2 }
Rule50 : '[' Exp int int int int int int int int int int ']' { Dummy $2 }
Rule51 : '[' Exp int int int int int int int int int int int ']' { Dummy $2 }
Rule52 : '[' Exp int int int int int int int int int int int int ']' { Dummy $2 }
Rule53 : '[' Exp int int int int int int int int int int int int int ']' { Dummy $2 }
Rule54 : '[' Exp int int int int int int int int int int int int int int ']' { Dummy $2 }
Rule55 : '[' Exp int int int int int int int int int int int int int int int ']' { Dummy $2 }
Rule56 : '[' Exp int int int int int int int int int int int int int int int int ']' { Dummy $2 }
Rule57 : '[' Exp int int int int int int int int int int int int int int int int int ']' { Dummy $2 }
Rule58 : '[' Exp int int int int int int int int int int int int int int int int int int ']' { Dummy $2 }
Rule59 : '[' Exp int int int int int int int int int int int int int int int int int int int ']' { Dummy $2 }
Rule60 : '[' var '(' Exp ')' ']' { Dummy $4 }
Rule61 : '[' var '(' Exp ')' int ']' { Dummy $4 }
Rule62 : '[' var '(' Exp ')' int int ']' { Dummy $4 }
Rule63 : '[' var '(' Exp ')' int int int ']' { Dummy $4 }
Rule64 : '[' var '(' Exp ')' int int int int ']' { Dummy $4 }
Rule65 : '[' var '(' Exp ')' int int int int int ']' { Dummy $4 }
Rule66 : '[' var '(' Exp ')' int int int int int int ']' { Dummy $4 }
Rule67 : '[' var '(' Exp ')' int int int int int int int ']' { Dummy $4 }
Rule68 : '[' var '(' Exp ')' int int int int int int int int ']' { Dummy $4 }
Rule69 : '[' var '(' Exp ')' int int int int int int int int int ']' { Dummy $4 }
Rule70 : '{' var '(' Exp ')' '}' { Dummy $4 }
Rule71 : '{' var '(' Exp ')' int '}' { Dummy $4 }
Rule72 : '{' var '(' Exp ')' int int '}' { Dummy $4 }
Rule73 : '{' var '(' Exp ')' int int int '}' { Dummy $4 }
Rule74 : '{' var '(' Exp ')' int int int int '}' { Dummy $4 }
Rule75 : '{' var '(' Exp ')' int int int int int '}' { Dummy $4 }
Rule76 : '{' var '(' Exp ')' int int int int int int '}' { Dummy $4 }
Rule77 : '{' var '(' Exp ')' int int int int int int int '}' { Dummy $4 }
Rule78 : '{' var '(' Exp ')' int int int int int int int int '}' { Dummy $4 }
Rule79 : '{' var '(' Exp ')' int int int int int int int int int '}' { Dummy $4 }
Rule80 : '[' var '=' Exp '*' ']' { Dummy $4 }
Rule81 : '[' var '=' Exp '*' int ']' { Dummy $4 }
Rule82 : '[' var '=' Exp '*' int int ']' { Dummy $4 }
Rule83 : '[' var '=' Exp '*' int int int ']' { Dummy $4 }
Rule84 : '[' var '=' Exp '*' int int int int ']' { Dummy $4 }
Rule85 : '[' var '=' Exp '*' int int int int int ']' { Dummy $4 }
Rule86 : '[' var '=' Exp '*' int int int int int int ']' { Dummy $4 }
Rule87 : '[' var '=' Exp '*' int int int int int int int ']' { Dummy $4 }
Rule88 : '[' var '=' Exp '*' int int int int int int int int ']' { Dummy $4 }
Rule89 : '[' var '=' Exp '*' int int int int int int int int int ']' { Dummy $4 }
Rule90 : '{' var '=' Exp '*' '}' { Dummy $4 }
Rule91 : '{' var '=' Exp '*' int '}' { Dummy $4 }
Rule92 : '{' var '=' Exp '*' int int '}' { Dummy $4 }
Rule93 : '{' var '=' Exp '*' int int int '}' { Dummy $4 }
Rule94 : '{' var '=' Exp '*' int int int int '}' { Dummy $4 }
Rule95 : '{' var '=' Exp '*' int int int int int '}' { Dummy $4 }
Rule96 : '{' var '=' Exp '*' int int int int int int '}' { Dummy $4 }
Rule97 : '{' var '=' Exp '*' int int int int int int int '}' { Dummy $4 }
Rule98 : '{' var '=' Exp '*' int int int int int int int int '}' { Dummy $4 }
Rule99 : '{' var '=' Exp '*' int int int int int int int int int '}' { Dummy $4 }

{

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Exp = Let String Exp Exp
         | Plus Exp Exp
         | Minus Exp Exp
         | Times Exp Exp
         | Div Exp Exp
         | Negate Exp
         | Brack Exp
         | Int Int
         | Var String
         | Dummy Exp
         deriving Show
}