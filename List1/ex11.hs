removePrimeiro :: Eq a => [a] -> a -> [a]
removePrimeiro [] _ = []
removePrimeiro (x : xs) a = if x == a then xs else x : removePrimeiro xs a

menorValor :: Ord a => [a] -> a
menorValor [x] = x
menorValor (x : xs) = if x < menorValor xs then x else menorValor xs

ordenar :: Ord a => [a] -> [a]
ordenar [x] = [x]
ordenar (x : xs) = menorValor (x : xs) : ordenar (removePrimeiro (x : xs) (menorValor (x : xs)))