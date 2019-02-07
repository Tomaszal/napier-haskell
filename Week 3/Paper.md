# 'Paper'-based exercises

Who needs paper when you have markdown?

## Exercise 1

```haskell
-- Definition of map
map ::  (a -> b) -> [a] -> [b]
map f [] = []
map f (x:xs) = (f x) :  map f xs

-- Exercise
map (*2) [3,5,0,1] =
= [6] : map (*2) [5,0,1] =
= [6,10] : map (*2) [0,1] =
= [6,10,0] : map (*2) [1] =
= [6,10,0,2] : map (*2) [] =
= [6,10,0,2]
```

## Exercise 2

```haskell
-- Definition of fac
fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n-1)

--- Exercise
fac 3 =
= 3 * fac 2 =
= 6 * fac 1 =
= 6 * fac 0 =
= 6
```

## Exercise 3

```haskell
-- Definition of filter
filter :: (a -> Bool) -> [a] -> [a]
filter f [] = []
filter f (x:xs)
  | f x = x : filter f xs
  | otherwise = filter f xs

-- Exercise
filter (<5) [6,2,5,1,6,3,8] =
= filter (<5) [2,5,1,6,3,8] =
= [2] : filter (<5) [5,1,6,3,8] =
= [2] : filter (<5) [1,6,3,8] =
= [2,1] : filter (<5) [6,3,8] =
= [2,1] : filter (<5) [3,8] =
= [2,1,3] : filter (<5) [8] =
= [2,1,3] : filter (<5) [] =
= [2,1,3]
```