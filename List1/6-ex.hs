primeiros :: Int -> [a] -> [a]
primeiros 0 _ = []
primeiros n [] = []
primeiros n (x : xs) = x : primeiros (n -1) xs

inverso :: [a] -> [a]
inverso [] = []
inverso (x : xs) = inverso xs ++ [x]

ultimos :: Int -> [a] -> [a]
ultimos 0 _ = []
ultimos _ [] = []
ultimos n (x : xs) = inverso $ primeiros n $ inverso (x : xs)