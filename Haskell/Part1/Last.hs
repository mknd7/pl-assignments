module Last
(finalElem) where

-- Usage:
-- finalElem [3, 5,  7, -1]
-- > -1

finalElem :: [a] -> a
finalElem [] = error "Cannot find last element in empty list"
finalElem [x] = x

finalElem (x:xs)
  | null xs   = x
  | otherwise = finalElem xs
