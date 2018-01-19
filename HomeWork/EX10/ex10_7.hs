-- Using functions defined already wherever possible, write definitions of functions to
-- * give the minimum value of f on inputs 0 to n;
-- * test whether the values of f on inputs 0 to n are all equal;
-- * test if all values of f on inputs 0 to n are greater than zero, and,
-- * check whether the values f 0,f 1 to f n are in increasing order.

-- - 可能な限り既に定義されている関数を使用して、関数定義を
-- - *入力0からnへのfの最小値を与える;
-- - *入力0から入力nのfの値がすべて等しいかどうかをテストする。
-- - *入力0〜nのfのすべての値が0より大きいかどうかをテストし、
-- - *値f 0、f 1〜f nが昇順であるかどうかをチェックする。
-- ただし
-- f :: Integer -> Integer
-- n :: Integer

minimumf :: (Integer -> Integer) -> Integer -> Integer
minimumf f n = minimum (map f [0..n])

equals :: (Integer -> Integer ) -> Integer -> Bool
equals f x = and (map (== (head xs ) ) xs )
 where xs = map f [0..x]

overzeros :: (Integer -> Integer ) -> Integer -> Bool
overzeros f x = and (map (> 0) (map f [0..x]))

isSorted :: (Ord a) =>[a] -> Bool
isSorted []       = True
isSorted [x]      = True
isSorted (x:y:xs) = x <= y && isSorted (y:xs)

checkSort :: (Integer -> Integer) -> Integer -> Bool
checkSort f x = isSorted (map f [0..x])

main :: IO ()
main = do
  print $ minimumf (^2) 3
  print $ equals (^2) 3
  print $ overzeros (^2) 9
  print $ isSorted [1,2,3]
  print $ checkSort (^2) 3
