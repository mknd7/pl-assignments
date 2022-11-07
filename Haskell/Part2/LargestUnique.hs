module LargestUnique
(uniqueSubstring) where

-- Usage:
-- uniqueSubstring "abaacb"
-- > acb

uniqueSubstring :: String -> String
uniqueSubstring xs = uniqueSubstringCheck xs "" ""

uniqueSubstringCheck :: String -> String -> String -> String
uniqueSubstringCheck [] acc1 acc2 = if (length acc2 >= length acc1) then acc2 else acc1
uniqueSubstringCheck (x:xs) acc1 acc2
  | x `notElem` acc1     = uniqueSubstringCheck xs (acc1 ++ [x]) acc2
  | x `elem` acc1        = uniqueSubstringCheck xs (getSlice acc1 x) (if
                            (length acc2 >= length acc1) then acc2 else acc1)

getSlice :: String -> Char -> String
getSlice xs x = snd (splitAt ((getIndex xs x) + 1) xs) ++ [x]

getIndex :: String -> Char -> Int
getIndex xs c = aux xs c 0
  where aux (x:xs) c i = if c == x then i
        else (if (not (null xs)) then aux xs c (i + 1) else -1)
