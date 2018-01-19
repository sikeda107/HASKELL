import System.Environment
import Data.List
import Data.Char
import Prelude

averageThree :: Integer -> Integer -> Integer -> Float
averageThree a b c = ( fromIntegral a + fromIntegral b + fromIntegral c ) / (fromIntegral 3 )

howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage a b c
 | avg < (fromIntegral a) && avg < (fromIntegral b) && avg < (fromIntegral c) = 3
 | avg < (fromIntegral a) && avg < (fromIntegral b) = 2
 | avg < (fromIntegral a) && avg < (fromIntegral c) = 2
 | avg < (fromIntegral b) && avg < (fromIntegral c) = 2
 | avg < (fromIntegral a) || avg < (fromIntegral b) || avg < (fromIntegral c) = 1
 | otherwise = 0
 where
  avg = averageThree a b c


main :: IO ()
main = do
-- print $ averageThree 1 9 21
-- print $ howManyAboveAverage 1 9 21
print $ howManyAboveAverage 5 6 7
print $ howManyAboveAverage 3 8 8
print $ howManyAboveAverage 10 10 10
