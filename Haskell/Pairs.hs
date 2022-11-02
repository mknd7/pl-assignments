module Pairs
(getPairs) where

-- Usage:
-- getPairs [1, 2, 3] [4, 5, 6]
-- > [(1, 4), (1,5), (1,6), (2, 4), (2, 5), (2, 6), (3, 4), (3 ,5), (3, 6)]

getPairs :: [Int] -> [Int] -> [(Int, Int)]
getPairs [] [] = []
getPairs _ [] = []
getPairs [] _ = []

getPairs xs ys = [(x, y) | x <- xs, y <- ys]
