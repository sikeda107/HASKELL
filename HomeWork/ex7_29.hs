import Prelude hiding(Word)
type Word = String
type Line = [Word]

-- joinLine["dog","cat"] = "dog cat"
joinLine :: Line -> String
joinLine [] = []
joinLine (a:[]) = a
joinLine (a:b) = a ++ " " ++ joinLine b

joinLines :: [Line] -> String
joinLines a = joinLine ( map joinLine a )

lists :: [Line]
lists = [["dog","cat"],["dog","cat"],["dog","cat"]]

main :: IO ()
main = do
 print $ joinLine ["dog","cat"]
 print $ joinLines lists
