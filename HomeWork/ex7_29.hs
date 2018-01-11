import Prelude hiding(Word)
type Word = String
type Line = [Word]

-- joinLine["dog","cat"] = "dog cat"
joinLine :: Line -> String
joinLine [] = []
joinLine (a:[]) = a
joinLine (a:b) = a ++ " " ++ joinLine b

joinNewLine :: Line -> String
joinNewLine [] = []
joinNewLine (a:[]) = a ++ "\n "
joinNewLine (a:b) = a ++ "\n" ++ joinNewLine b

joinLines :: [Line] -> String
joinLines a = joinNewLine ( map joinLine a )

lists :: [Line]
lists = [["dog","cat"],["dog","cat"],["dog","cat"]]

-- joinLine はオーケーです。問題文では、joinLines は、行の間を改行文字で
-- 区切るので、map joinLine a を文字列にまとめるのには、joinLine は
-- 使えません。joinLine を少し変更した関数を新たに定義して、joinLines
-- を書き直して再提出してください（joinLines が返す文字列の末尾は、
-- 改行文字でもそうでなくてもどちらでもオーケーです）。
main :: IO ()
main = do
 print $ joinLine ["dog","cat"]
 putStr $ joinLines lists
