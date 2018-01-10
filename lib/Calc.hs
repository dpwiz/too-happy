module Calc where

import Grammar

type Env = String -> Exp

emptyEnv :: Env
emptyEnv = error "Not found"

envLookup :: String -> Env -> Exp
envLookup key env = env key

envBind :: String -> Exp -> Env -> String -> Exp
envBind s v env = (\s' -> if s == s' then v else env s)

eval :: Exp -> Env -> Int
eval (Int v) _         = v
eval (Plus e1 e2) env  = (eval e1 env) + (eval e2 env)
eval (Minus e1 e2) env = (eval e1 env) - (eval e2 env)
eval (Times e1 e2) env = (eval e1 env) * (eval e2 env)
eval (Div e1 e2) env   = (eval e1 env) `div` (eval e2 env)
eval (Negate e) env    = -(eval e env)
eval (Var s) env       = eval (envLookup s env) env
eval (Let s e1 e2) env = eval e2 env'
  where
    env' = envBind s e1 env
eval (Brack e) env = eval e env
eval (Dummy e) env = eval e env

run :: Exp -> Int
run e = eval e emptyEnv
