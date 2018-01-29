import Prelude hiding (Word)
type Doc = String
type Line = String
type Word = String

whitespace :: String
whitespace = ['\n','\t',' ']

getWord :: String -> String
getWord [] = []
getWord (x:xs)
 | elem x whitespace = []
 | otherwise = x : getWord xs

dropWord :: String -> String
dropWord [] = []
dropWord (x:xs)
 | elem x whitespace = (x:xs)
 | otherwise = dropWord xs

dropSpace :: String -> String
dropSpace [] = []
dropSpace (x:xs)
 | elem x whitespace = dropSpace xs
 | otherwise = (x:xs)

split :: String -> [Word]
split [] = []
split st = (getWord st) : split (dropSpace (dropWord st))

splitWords :: String -> [Word]
splitWords st = split (dropSpace st)

numWords (number, line) = map (\word -> (number,word)) (splitWords line)

-- Problem::
-- Modify the program so that words of less than four letters are removed as a part of the definition of allNumWords.

-- before
allNumWords :: [(Int,Line)] -> [(Int,Word)]
allNumWords = concat . map numWords

-- after
allNumWords

main :: IO ()
main = do
 print $ splitWords "dog cat"
 print $ allNumWords
