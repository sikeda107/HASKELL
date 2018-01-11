-- 修正前：
-- -- ship  Fish & Chips
-- sublist :: String -> String -> Bool
-- sublist [] _      = True
-- sublist _ []      = False
-- sublist (a:b) c = (elem a c) && (sublist b c)
--
-- --
-- subseq :: String -> String -> Bool
-- subseq [] _          = True
-- subseq _ []          = False
-- subseq (x:xs) (y:ys)
--  | null xs && x == y                    = True
--  | null ys && xs /= []                  = False
--  | x == y && xx == yy && subseq xxs yys = True
--  | subseq (x:xs) ys                     = True
--  | otherwise                            = False
--   where
--    (xx:xxs) = xs
--    (yy:yys) = ys

-- コメント：
 -- sublist の定義は誤りです。xs が ys のsublistになる（sublist xs ys = True）
 -- のは、ys から（順番を変えずに）０個以上の文字を取り除いて xs が得られる
 -- ときだけです。池田さんの定義では、sublist "aaa" "a" でもTrueになって
 -- しまいます。(x:xs)が(y:ys)のsublist になる（sublist (x:xs) (y:ys) = True）
 -- のは、
 -- (1) x と y が等しく、xs が ys のsublistになるとき、
 -- または、
 -- (2) x と y が異なり、(x:xs) が ys のsublistになるとき
 -- です。
 --
 -- subsequence xs ys は、ys の中に xs が現れる（ys から先頭と末尾の長さ０
 -- 以上の文字列を取り除くと xs が得られる）ときだけ True になります。
 -- したがって、subsequence (x:xs) (y:ys) が True になるのは、
 -- (1) (x:xs) が (y:ys) の先頭に現れる文字列である、すなわち、x と y が
 --     一致し、xs が ys の先頭に現れる文字列であるとき、
 -- または、
 -- (2) (x:xs) が ys のsubsequenceであるとき
 -- です。


-- 修正後：
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
