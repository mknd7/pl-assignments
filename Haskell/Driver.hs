import Intersection
import LargestUnique
import Last
import Max
import Merge
import MonadAdd
import MonadFunState
import Pairs
import Union

main = do
  print (maxNums [3, 5, 7, 12, 1, -4, 0, 6])
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

  print (finalElem [3, 5, 7, -1])
  print (finalElem [4])
  print (finalElem [4, 1, 0])

  print (getPairs [-4, -7] [2, 3, 5])
  print (getPairs [] [4, 5, 6])
  print (getPairs [] [])

  print (uniqueSubstring "abaacb")
  print (uniqueSubstring "dvdf")
  print (uniqueSubstring "abccbaabbc")
  print (uniqueSubstring "ohvhjdml")
  print (uniqueSubstring "abcdeabc")
  print (uniqueSubstring "abcdaf")
  print (uniqueSubstring "iuonzyzlclfudgrr")

  print (mergel [1, 3, 4] [1, 2, 4, 6])

  print (monadAddPlain (Just 2) (Just 3))
  print (monadAddDo (Just 5) (Just 7))

  print ([fun x | x <- [0..10]])
