-- Complete the following instance declarations:
-- instance (Ord a, Ord b) => Ord (a,b) where
-- instance Ord b => Ord [b] where
-- where pairs and lists should be ordered lexicographically, like the words in a dictionary.

instance (Ord a, Ord b) => Ord (a,b) where
  (<=) :: a -> b -> Bool
instance Ord b => Ord [b] where
  (<=) :: b -> [b] -> Bool 
