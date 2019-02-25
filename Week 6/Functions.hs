module Functions where

    -- Exercise 1
    myAnd :: Bool -> Bool -> Bool
    myAnd True True = True
    myAnd _ _ = False

    -- Exercise 2
    mySnd :: (a,b) -> b
    mySnd (_,x) = x

    -- Exercise 3
    ignoreButN :: Int -> a -> a -> a -> Maybe a
    ignoreButN 1 x _ _ = Just x
    ignoreButN 2 _ x _ = Just x
    ignoreButN 3 _ _ x = Just x
    ignoreButN _ _ _ _ = Nothing

    -- Exercise 4
    absPlusOne1 :: [Int] -> [Int]
    absPlusOne1 xs = map calculate xs
        where calculate x = abs x + 1

    absPlusOne2 :: [Int] -> [Int]
    absPlusOne2 xs = map (\x -> abs x + 1) xs

    -- Exercise 5
    addPairs1 :: [(Int,Int)] -> [Int]
    addPairs1 xs = map calculate xs
        where calculate (x,y) = x + y

    addPairs2 :: [(Int,Int)] -> [Int]
    addPairs2 xs = map (\(x,y) -> x + y) xs

    -- Exercise 7 extra functions
    divides :: Int -> Int -> Bool
    divides m n = rem m n == 0

    isComposite :: Int -> Bool
    isComposite n = foldl (||) False (map (divides n) [2..(n-1)])

    isPrime :: Int -> Bool
    isPrime n
      | n <=0 = error "Makes no sense"
      | otherwise = not (isComposite n)

    -- Exercise 8
    howMany1 :: (Eq a) => a -> [a] -> Int
    howMany1 x ys = foldl calculate 0 ys
        where calculate z y
                | y == x = z + 1
                | otherwise = z

    -- Exercise 9
    howMany2 :: (Eq a) => a -> [a] -> Int
    howMany2 x ys = foldl (\z y -> z + fromEnum (y == x)) 0 ys

    -- Exercise 10
    quickSort :: (Ord a) => [a] -> [a]
    quickSort [] = []
    quickSort (x:xs) = (lessThan xs) ++ [x] ++ (greaterThan xs)
        where lessThan xs = quickSort (filter (<x) xs)
              greaterThan xs = quickSort (filter (>=x) xs)

    quickSortUnique :: (Ord a) => [a] -> [a]
    quickSortUnique [] = []
    quickSortUnique (x:xs) = (lessThan xs) ++ [x] ++ (greaterThan xs)
        where lessThan xs = quickSortUnique (filter (<x) xs)
              greaterThan xs = quickSortUnique (filter (>x) xs)

    setEqueality2 :: (Ord a, Eq a) => [a] -> [a] -> Bool
    setEqueality2 xs ys = quickSortUnique xs == quickSortUnique ys
