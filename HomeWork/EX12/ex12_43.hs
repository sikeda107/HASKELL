-- give a recursive definition of the range
[m,n .. p]
 | n > m && p < n = []
 | n < m && p > n = []
 | otherwise = [m,n .. p - (n - m)] : p

main :: IO ()
main = do
  print $ [1,3 .. 10]
  print $ [20-(3-2),17 .. 1]
