search :: Eq a => [a] -> a -> Bool
search [] y = False
search (x:xs) y =
    if x==y 
        then True
        else search xs y