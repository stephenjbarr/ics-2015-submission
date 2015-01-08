scanl :: (a -> b -> a) -> a -> [b] -> [a]
scanl f z [x1, x2, ...]  == [z, z `f` x1, (z `f` x1) `f` x2, ...]
