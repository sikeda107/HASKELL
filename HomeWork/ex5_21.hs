-- import System.Environment
-- import Data.List
-- import Data.Char
-- import Prelude

matches :: Integer -> [Integer] -> [Integer]
matches num list = [ m | m <- list, m == num ]

elem :: Integer -> [Integer] -> Bool
elem num list
 | (null (matches num list) == True ) = False
 | otherwise = True

main :: IO ()
main = do
print $ matches 5 [1,2,3,4,5,6,7,4,5]
print $ Main.elem 5 [1,2,3,4,5,6,7,4,5]
print $ Main.elem 5 [1,2,3,4,6,7,4]
