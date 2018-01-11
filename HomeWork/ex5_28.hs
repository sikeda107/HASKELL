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

  -- borrowed 以外はオーケーです。borrowed の戻り値は Bool です（教科書を
  -- 参照のこと）。引数に指定された本が貸出中ならTrue、そうでなければ
  -- Falseを返します。そのようにするには、池田さんが書いた borrowed の
  -- 定義をほんのすこしだけ変更するだけでオーケーです。正しい borrowed を
  -- 書いて再提出してください。
  --
  -- borrowers は、fst や snd を使う代わりにパターンマッチを使えば、
  -- より簡潔に書けます。また、numBorrwed は where を使って前処理を
  -- しなくても、データベースから取り出したペアの第一要素と pn を
  -- 比べれば簡単に書けます。


main :: IO ()
main = do
 print $ borrowers exampleBase "Tintin"
 print $ borrowed exampleBase "Tintin"
 print $ numBorrowed exampleBase "Alice"
 print $ numBorrowed exampleBase "Anna"
 print $ numBorrowed exampleBase "Rory"
 print $ numBorrowed exampleBase "hoge"
