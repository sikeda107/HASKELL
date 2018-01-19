import Prelude hiding (unzip,last,init)

last :: [a] -> a
last [x] =  x
last (_:xs) =  last xs

init :: [a] -> [a]
init [x] =  []
init (x:xs) =  x : init xs

unzip :: [(a, b)] -> ([a], [b])
unzip xs = (map fst xs, map snd xs)

main :: IO ()
main = do
 print $ unzip [(1,2),(1,2),(1,2),(1,2)]
 print $ last [1,2,3,4,5]
 print $ init [1,2,3,4,5]
