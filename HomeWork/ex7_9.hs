-- unique :: [Integer] -> [Integer]
-- unique [] = []
-- unique (a:b)
--  | b /= x  = unique x
--  | otherwise = a : unique x
--   where
--    x = [y | y<-b, y /= a]

unique :: [Integer] -> [Integer]
unique [] = []
unique (a:b)
 | elem a b == True = unique b
 | elem a b /= True = unique (a:b)

main :: IO ()
main = do
 print $ unique [4,2,1,3,2,3] --answer : [4,1]
