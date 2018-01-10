module Main where

import Calc
import Grammar
import Tokens

main :: IO ()
main = do
    s <- getContents
    let ast = parseCalc (scanTokens s)
    print ast
    print (run ast)
