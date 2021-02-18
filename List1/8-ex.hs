intParaStr :: Int -> Char
intParaStr 0 = '0'
intParaStr 1 = '1'

intParaBin :: Int -> String
intParaBin 0 = "0"
intParaBin 1 = "1"
intParaBin n = intParaBin (div n 2) ++ [intParaStr $ mod n 2]