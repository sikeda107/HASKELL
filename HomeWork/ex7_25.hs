-- ship  Fish & Chips
sublist :: String -> String -> Bool
sublist [] _      = True
sublist _ []      = False
sublist (a:b) c = (elem a c) && (sublist b c)

--
subseq :: String -> String -> Bool
subseq [] _          = True
subseq _ []          = False
subseq (x:xs) (y:ys)
 | null xs && x == y                    = True
 | null ys && xs /= []                  = False
 | x == y && xx == yy && subseq xxs yys = True
 | subseq (x:xs) ys                     = True
 | otherwise                            = False
  where
   (xx:xxs) = xs
   (yy:yys) = ys

main :: IO ()
main = do
 print $ sublist "ship"  "Fish & Chips"
 print $ sublist "hippies"  "Fish & Chips"
 print $ subseq "Chip" "Fish & Chips"
 print $ subseq "Chin Up" "Fish & Chips"
