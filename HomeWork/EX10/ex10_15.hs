import Prelude hiding (unzip,last,init)

-- last :: [a] -> a
-- last [x] =  x
-- last (_:xs) =  last xs
--
-- init :: [a] -> [a]
-- init [x] =  []
-- init (x:xs) =  x : init xs

-- unzip :: [(a, b)] -> ([a], [b])
-- unzip xs = (map fst xs, map snd xs)

lastf :: a -> [a] -> [a]
lastf x [] = [x]
lastf x xs = xs

last xs = foldr lastf [] xs

-- initf :: a -> [a] -> [a]
-- initf x [] = []
-- initf x xs = (x:xs)
--
-- init xs = foldr initf [] xs

unzipf :: (a,a) -> ([a],[a]) -> ([a],[a])
unzipf (x,y) (xs,ys) = (x:xs, y:ys)

unzip xs = foldr unzipf ([],[]) xs

main :: IO ()
main = do
 print $ unzip [(1,2),(1,2),(1,2),(1,2)]
 print $ last [1,2,3,4,5]
 print $ init [1,2,3,4,5]
