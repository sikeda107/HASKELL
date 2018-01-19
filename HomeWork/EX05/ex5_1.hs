import System.Environment
import Data.List
import Data.Char
import Prelude

maxOccurs :: Integer -> Integer -> (Integer, Integer)
maxOccurs a b
 | a == b = (a, 2)
 | a < b = ( b , 1 )
 | otherwise = ( a , 1 )

maxThreeOccurs :: Integer -> Integer -> Integer -> (Integer, Integer)
maxThreeOccurs a b c
    | max_value < c  = (c, 1)
    | max_value == c = (max_value, num_value + 1)
    | max_value > c  = (max_value, num_value )
    where max_value = fst (maxOccurs a b )
          num_value = snd (maxOccurs a b )


main :: IO ()
main = do
print $ maxOccurs 1 2
print $ maxOccurs 3 1
print $ maxOccurs 3 3
print $ maxThreeOccurs 1 2 3
print $ maxThreeOccurs 1 3 3
print $ maxThreeOccurs 5 5 5 
