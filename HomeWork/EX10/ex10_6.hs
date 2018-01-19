-- to take a list of integer, ns, and
-- * return the list consisting of the squares of the integers in ns;
-- * return the sum of squares of items in ns;
-- * check whether all items of the list are greater than zero

-- map :: (a -> b ) -> [a] -> [b]
-- map f [] = []
-- map f (x:xs) = f x : map f xs
--
-- filter :: (a -> Bool) -> [a] -> [a]
-- filter p [] = []
-- filter p (x:xs)
--   | p x         = x : filter p xs
--   | otherwise   =     filter p xs
--
-- zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
-- zipWith f (x:xs) (y:ys) = f x y : zipWith f xs ys
-- zipWith f  _      _     = []
--
-- foldr1 :: (a -> a -> a) -> [a] -> a
-- foldr1 f [x]    = x
-- foldr1 f (x:xs) = f x (foldr1 f xs)
--
-- foldr :: (a -> b -> b) -> b -> [a] -> b
-- foldr f s []     = s
-- foldr f s (x:xs) = f x (foldr f s xs)

square :: Integer -> Integer
square x = x * x

squares :: [Integer] -> [Integer]
squares ns = map square ns

sumsquares :: [Integer] -> Integer
sumsquares ns = foldr1 (+) (map square ns)

-- overzero :: Integer -> Bool
-- overzero x
--  | x > 0 = True
--  | x <= 0 = False

overzeros :: [Integer] -> Bool
overzeros ns = and (map (> 0 ) ns)

main :: IO ()
main = do
  print $ squares [1,1,2,3,5,8]
  print $ sumsquares [1,1,2,3,5,8]
  -- print $ overzero 10
  -- print $ overzero (-1)
  print $ overzeros [1,2,3,4,5,6]
  print $ overzeros [1,2,3,4,5,-1]
  print $ overzeros [1,2,-3,4,5,-1]
