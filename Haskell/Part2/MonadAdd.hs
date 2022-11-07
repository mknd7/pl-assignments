module MonadAdd
  ( monadAddPlain,
    monadAddDo,
  )
where

-- Add two numbers that are
-- wrapped as monadic values

monadAddPlain :: (Monad m, Num b) => m b -> m b -> m b
monadAddPlain mx my =
  mx >>= (\x -> my >>= (\y -> return $ x + y))

monadAddDo :: (Monad m, Num b) => m b -> m b -> m b
monadAddDo mx my = do
  x <- mx
  y <- my
  return $ x + y
