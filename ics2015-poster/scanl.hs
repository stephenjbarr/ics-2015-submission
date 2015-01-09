scanl :: (a -> b -> a) -> a -> [b] -> [a]
scanl f z x  == [z,  f z (x !! 0),  f (f z (x!!0)) (x!!1), ...]
