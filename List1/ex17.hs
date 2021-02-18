first :: (a, b) -> a
first (a, b) = a

mapear :: (a -> b) -> [a] -> [b]
mapear f [] = []
mapear f (x:xs) = f x : mapear f xs

primeiros :: [(a, b)] -> [a]
primeiros [] = []
primeiros (x:xs) = mapear first [x] ++ primeiros xs

