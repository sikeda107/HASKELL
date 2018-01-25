-- Define the function numEqual which takes a list of items, xs say, and an item, x say, and returns the number of times x occurs in xs. What is the type of your function ? How could you use numEqual to define member ?
-- 関数numEqualを定義します。関数numEqualは、xsとxという項目のリストをとり、xがxsで出現する回数を返します。 あなたの関数のタイプは何ですか？ どのようにnumEqualを使用してメンバーを定義できますか？

-- Type is Eq
--

numEqual :: Eq a => a -> [a] -> Int
numEqual y [] = 0
numEqual y (x:xs)
 | y == x = 1 + numEqual y xs
 | y /= x = numEqual y xs

member :: Eq a => [a] -> a -> Bool
member xs x
 | numEqual x xs == 0 = False
 | numEqual x xs /= 0 = True

main :: IO ()
main = do
print $ numEqual 3 [3,3,3,4,4,4,3,3,3,5,5,5]
print $ member [1,2,3,4,5,6,7,8,9] 0
print $ member [1,2,3,4,5,6,7,8,9] 4
