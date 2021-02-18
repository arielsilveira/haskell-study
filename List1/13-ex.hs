dobra_esq :: (b -> a -> b) -> b -> [a] -> b
dobra_esq f b [a] = f b a
dobra_esq f b (x:xs) = f (dobra_esq f b xs) x
