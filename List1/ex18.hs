dobra_dir :: (a -> b -> b) -> b -> [a] -> b
dobra_dir f b [x] = f x b
dobra_dir f b (x:xs) = f x (dobra_dir f b xs) 

todos :: [Bool] -> Bool 
todos [x] = x
todos (x:xs) = x and todos xs