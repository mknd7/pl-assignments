-- Merge two sorted lists
module Merge
(mergel) where

-- Usage:
-- mergel [1, 3, 4] [1, 2, 4, 6]
-- > [1, 1, 2, 3, 4, 4, 6]

mergel :: (Ord a) => [a] -> [a] -> [a]
mergel [] [] = []
mergel lst [] = lst
mergel [] lst = lst

mergel (x:xs) (y:ys)
  | x <= y     = x:(mergel xs (y:ys))
  | otherwise  = y:(mergel (x:xs) ys)
