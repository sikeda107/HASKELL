import System.Environment
import Data.List

square :: Integer -> Integer 
square n = n * n

main :: IO ()
main = print $ square 3
