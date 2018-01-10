{
module Tokens where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]

tokens :-

  $white+                       ;
  "--".*                        ;
  let                           { \_ -> TokenLet }
  in                            { \_ -> TokenIn }
  $digit+                       { \s -> TokenInt (read s) }
  \=                            { \_ -> TokenEq }
  \+                            { \_ -> TokenPlus }
  \-                            { \_ -> TokenMinus }
  \*                            { \_ -> TokenTimes }
  \/                            { \_ -> TokenDiv }
  \(                            { \_ -> TokenLParen }
  \)                            { \_ -> TokenRParen }
  \{                            { \_ -> TokenLCurl }
  \}                            { \_ -> TokenRCurl }
  \[                            { \_ -> TokenLRect }
  \]                            { \_ -> TokenRRect }
  $alpha [$alpha $digit \_ \']* { \s -> TokenSym s }

{

-- The token type:
data Token = TokenLet
           | TokenIn
           | TokenInt Int
           | TokenSym String
           | TokenEq
           | TokenPlus
           | TokenMinus
           | TokenTimes
           | TokenDiv
           | TokenLParen
           | TokenRParen
           | TokenLCurl
           | TokenRCurl
           | TokenLRect
           | TokenRRect
           deriving (Eq,Show)

scanTokens = alexScanTokens

}