-- import System.Environment
-- import Data.List
-- import Data.Char
import Prelude

type Person = String
type Book = String
type Database = [(Person , Book )]
exampleBase :: Database
exampleBase = [ ("Alice" , "Tintin") , ("Anna" , "Little Women") , ("Alice" , "Asterix") , ("Rory" , "Tintin")]

borrowers :: Database -> Book -> [Person]
borrowers db bk = [ fst p | p <- db , snd p == bk]

borrowed :: Database -> Book -> Bool
borrowed db bk = or [j == bk | j <- bkdb]
 where bkdb = [snd i | i <- db]

numBorrowed :: Database -> Person -> Int
numBorrowed db pn = length [j | j <- db , fst j == pn ]

main :: IO ()
main = do
 print $ borrowers exampleBase "Tintin"
 print $ borrowed exampleBase "Tintin"
 print $ numBorrowed exampleBase "Alice"
 print $ numBorrowed exampleBase "Anna"
 print $ numBorrowed exampleBase "Rory"
 print $ numBorrowed exampleBase "hoge"
