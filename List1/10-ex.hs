removePrimeiro :: Eq a => [a] -> a -> [a]
removePrimeiro [] _ = []
removePrimeiro (x : xs) a = if x == a then xs else x : removePrimeiro xs a