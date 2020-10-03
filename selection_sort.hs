selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort xs = let x = maximum xs in selectionSort (remove x xs) ++ [x] 
  where remove _ [] = []
        remove a (x:xs)
          | x == a = xs
          | otherwise = x : remove a xs