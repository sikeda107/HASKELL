-- Give the type and definition of the generalization dropUntil of the function dropWord

getUntil :: (a -> Bool) -> [a] -> [a]
getUntil p []    = []
getUntil p (x:xs)
  | p x         = []
  | otherwise   = x : getUntil p xs

dropUntil :: (a -> Bool) -> [a] -> [a]
dropUntil p []    = []
dropUntil p (x:xs)
  | not (p x)   = dropUntil p xs
  | otherwise   = x : dropUntil p xs

main :: IO ()
main = do
 print $ getUntil (> 3) [0..8]
 print $ dropUntil (> 3) [0..8]
