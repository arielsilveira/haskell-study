pertence :: Eq a => a -> [a] -> Bool
pertence a [] = False
pertence a (x : xs) = if a == x then True else pertence a xs

main :: IO ()
main = do
  print $ pertence 2 [1, 2, 3]