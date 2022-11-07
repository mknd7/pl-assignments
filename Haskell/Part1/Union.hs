module Union
(union) where

-- Usage:
-- union [3, 5, 7] [1, 3, -4, 5]
-- > [3, 5, 7, 1, -4]

union :: (Eq a) => [a] -> [a] -> [a]
union [] [] = []
union lst [] = lst
union [] lst = lst

union rst (y:ys)
  | y `notElem` rst = if null ys
                        then rst ++ [y]
                        else union (rst ++ [y]) ys
  | otherwise       = union rst ys
