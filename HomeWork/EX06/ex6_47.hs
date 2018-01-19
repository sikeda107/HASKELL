type Name = String
type Price = Int
type BarCode = Int
type TillType = [BarCode] -- [Int]
type BillType = [(Name,Price)] -- [(String,Int)]
type Database = [(BarCode,Name,Price)]
codeIndex :: Database
codeIndex = [(4719,"Fish Fingers",121),(5643,"Nappies",1010)]

look :: Database -> BarCode -> (Name,Price)
look db bc
 | null list == False = head list
 | null list == True = ("Unknown Item",0)
 where
  list  = [ (y,z)| (x,y,z) <- db , x == bc]

mylookup :: BarCode -> (Name,Price)
mylookup bc = look codeIndex bc

makeBill :: TillType -> BillType -- [Int] -> [(String,Int)]
makeBill t = map mylookup t

testCodes :: TillType
testCodes = [4719,5643,1113]

main :: IO ()
main = do
 -- print $ look codeIndex 4719
 -- print $ look codeIndex 5643
 -- print $ look codeIndex 1113
 -- print $ mylookup 4719
 -- print $ mylookup 1113
 print $ makeBill testCodes
