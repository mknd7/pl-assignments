import Max
import Intersection
import Union
import Last
import Pairs

main = do
  print (maxNums [3, 5,  7, 12, 1, -4, 0, 6])
  print (maxNums [-5, -1, 3, 8, 0])
  -- print (maxNums [])

  print (isIntersectionEmpty [3, 5, 7] [1, -4, 0, 6])
  print (isIntersectionEmpty [3, 5, -4] [1, -4, 0, 6])
  print (isIntersectionEmpty [] [1, 3])
  -- print (isIntersectionEmpty [] [])

  print (union [3, 5, 7] [])
  print (union [] [1, 3, -4, 5])
  print (union [3, 5, 7] [1, 3, -4, 5])
  -- print (union [] [])

  print (finalElem [3, 5,  7, -1])
  print (finalElem [4])
  print (finalElem [4, 1,  0])

  print (getPairs [-4, -7] [2, 3, 5])
  print (getPairs [] [4, 5, 6])
  print (getPairs [] [])
