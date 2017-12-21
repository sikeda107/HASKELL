import System.Environment
import Data.List
import Data.Char

charToNum :: Char -> Int
charToNum num
  | ( '0' <= num ) && ( num <= '9') = ord num - ord '0'
  | otherwise  = 0

main :: IO ()
main = do
print $ charToNum 'G'
print $ charToNum '4'
