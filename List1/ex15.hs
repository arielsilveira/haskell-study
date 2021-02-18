impares :: [Int] -> [Int]
impares [] = []
impares (x : xs) = if x `mod` 2 == 0 then impares xs else x : impares xs