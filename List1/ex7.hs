strParaInt :: Char -> Int
strParaInt '0' = 0
strParaInt '1' = 1

potencial :: Int -> Int -> Int
potencial _ 0 = 1
potencial 0 _ = 0
potencial n e = n * potencial n (e -1)

tam :: String -> Int
tam [] = 0
tam (x : xs) = 1 + tam xs

binParaInt :: String -> Int
binParaInt [] = 0
binParaInt (x : xs) = strParaInt x * potencial 2 (tam xs) + binParaInt xs

-- intParaBin :: Int -> Int
-- intParaBin 0 = 0
-- intParaBin i = 2 * intParaBin (i `div` 10) + (i `mod` 10)