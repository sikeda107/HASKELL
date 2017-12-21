import System.Environment
import Data.List
import Data.Char
import Prelude

averageThree :: Integer -> Integer -> Integer -> Float
averageThree a b c = ( fromIntegral a + fromIntegral b + fromIntegral c ) / (fromIntegral 3 )

howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage a b c
 | avg < (fromIntegral a) = a
 | avg < (fromIntegral b) = b
 | avg < (fromIntegral c) = c

 where
  avg = averageThree a b c


main :: IO ()
main = do
print $ averageThree 1 9 21
print $ howManyAboveAverage 1 9 21
