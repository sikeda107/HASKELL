-- give a recursive definition of the range
fromToStep :: Int -> Int -> Int -> [Int]
fromToStep m n p
 | n > m && p < n = [m]
 | n < m && p > n = [m]
 | otherwise = m : fromToStep n ((n-m)+n) p

main :: IO ()
main = do
  print $ [1,3 .. 10]
  print $ [20-(3-2),17 .. 1]
  print $ fromToStep 1 3 10
  print $ fromToStep 19 17 1
