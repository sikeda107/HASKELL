-- Hello.hs

import System.Environment
import Data.List

add :: Int -> Int -> Int
add x y = x + y

main :: IO ()
main = print $ add 2 3
