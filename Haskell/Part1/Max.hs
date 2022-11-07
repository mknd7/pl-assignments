module Max
(maxNums) where

-- Usage:
-- maxNums [3, 5,  7, 1, -4, 0, 6]
-- > 7

maxNums :: [Int] -> Int
maxNums [] = error "Cannot find maximum in empty list"
maxNums [x] = x

maxNums (x:xs)
  | x > maxRest = x
  | otherwise   = maxRest
  where maxRest = maxNums xs
