pertence :: Eq a => a -> [a] -> Bool
pertence a [] = False
pertence a (x : xs) = if a == x then True else pertence a xs

intersecao :: Eq a => [a] -> [a] -> [a]
intersecao [] (y : ys) = []
intersecao (x : xs) [] = []
intersecao (x : xs) (y : ys) = if pertence x (y : ys) then x : intersecao xs (y : ys) else intersecao xs (y : ys)