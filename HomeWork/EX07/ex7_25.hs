sublist :: String -> String -> Bool
sublist _ [] = False
sublist [] _ = True
sublist (x:xs) (y:ys)
 | x == y = sublist xs ys
 | x /= y = sublist (x:xs) ys

subseq :: String -> String -> Bool
subseq (x:xs) [] = False
subseq (x:xs) (y:ys)
 | (x == y) && xs == (take (length xs) ys) = True
 | (x:xs) == (take (length (x:xs)) ys) = True
 | otherwise = subseq (x:xs) ys



main :: IO ()
main = do
 print $ sublist "ship"  "Fish & Chips"
 print $ sublist "hippies"  "Fish & Chips"
 print $ sublist "aaa" "a"
 print $ subseq "Chip" "Fish & Chips"
 print $ subseq "Chin Up" "Fish & Chips"
