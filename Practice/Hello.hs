-- Hello.hs

import System.Environment
import Data.List

main = do
    putStrLn "Hello, Haskell!"
    putStrLn "What's your name?"
    name <- getLine
    putStrLn $ "Hi, " ++ name ++ "!"
    progName <- System.Environment.getProgName
    args <- System.Environment.getArgs
    putStrLn $ "program: " ++ progName
    putStrLn $ "args: " ++ intercalate ", " args
