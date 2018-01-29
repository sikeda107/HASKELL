-- 11.8 については、部分適用で書いてください。このとき、enumFromTo という
-- 関数が利用できます。enumFromTo m n (m, n は整数)は、m から n までの
-- 整数のリストを返します。
--
--   enumFromTo 2 5 = [2,3,4,5]
--   enumFromTo 7 7 = [7]
--   enumFromTo 3 2 = []

-- Define a function total
-- so that total f is the function which at value n gives the total
-- f0 + f1 + ... fn

enumFromTo0 = enumFromTo 0

total :: (Integer -> Integer) -> (Integer -> Integer)
total f = (\x -> sum (map f (enumFromTo0 x)))


main :: IO ()
main = do
 print $ enumFromTo 2 5
 print $ enumFromTo 7 7
 print $ enumFromTo 3 2
 print $ sum (map (*2) (enumFromTo0 5))
 print $ (total (*2)) 5
