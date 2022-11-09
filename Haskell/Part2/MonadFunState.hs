module MonadFunState
(fun) where

-- fun 0 = 0
-- fun 1 = 1
-- fun 2 = 2
-- fun n = fun n-1 + fun n-2 + fun n-3

import Control.Monad.State (evalState, get, put)

fun :: Int -> Int
fun n =
  evalState (do
    mapM (\_ -> do
        (a, b, c) <- get
        put (b, c, a+b+c)) [1..n]
    (a, b, c) <- get
    pure a
  ) (0, 1, 2)
