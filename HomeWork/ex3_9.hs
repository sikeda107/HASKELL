import System.Environment
import Data.List

threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent m n p = (m /= n) && (m /= p) && (n /= p)

main :: IO ()
main = do
print $ threeDifferent 1 2 3
print $ threeDifferent 3 4 3
print $ threeDifferent 3 3 3
print $ threeDifferent 4 3 3
