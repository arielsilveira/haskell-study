concatenacao :: [a] -> [a] -> [a]
concatenacao [] [] = []
concatenacao (x : xs) [] = x : concatenacao xs []
concatenacao [] (y : ys) = y : concatenacao [] ys
concatenacao (x : xs) (y : ys) = x : concatenacao xs (y : ys)