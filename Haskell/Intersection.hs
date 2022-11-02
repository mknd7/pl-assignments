module Intersection
(isIntersectionEmpty) where

-- Usage:
-- isIntersectionEmpty [3, 5, 7] [1, -4, 0, 6]
-- > True
-- isIntersectionEmpty [3, 5, 7, -4] [1, -4, 0, 6]
-- > False

isIntersectionEmpty :: (Eq a) => [a] -> [a] -> Bool
isIntersectionEmpty [] [] = True
isIntersectionEmpty _ [] = True
isIntersectionEmpty [] _ = True

isIntersectionEmpty xs ys = not (checkSamePair pairs)
  where pairs = [(x, y) | x <- xs, y <- ys]

checkSamePair :: (Eq a) => [(a, a)] -> Bool
checkSamePair (x:xs)
  | (fst x) == (snd x) = True
  | null xs            = False
  | otherwise          = checkSamePair xs
