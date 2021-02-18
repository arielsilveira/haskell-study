menorValor :: Ord a => [a] -> a
menorValor [x] = x
menorValor (x : xs) = if x < menorValor xs then x else menorValor xs