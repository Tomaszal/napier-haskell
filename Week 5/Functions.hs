module Functions where

    -- Extra functions

    divides :: Int -> Int -> Bool
    divides m n = rem m n == 0

    divides' :: Int -> Int -> Bool
    divides' m n = rem n m == 0

    isComposite :: Int -> Bool
    isComposite n = foldl (||) False (map (divides n) [2..(n-1)])

    isPrime :: Int -> Bool
    isPrime n
      | n <=0 = error "Makes no sense"
      | otherwise = not (isComposite n)

    elemAt :: Int -> [a] -> a
    elemAt _ [] = error "No elements in vector"
    elemAt n (x:xs)
      | n > length (x:xs) = error "Vector not long enough"
      | n == 1 = x
      | otherwise = elemAt (n-1) xs

    elemAtSafe :: Int -> [a] -> Maybe a
    elemAtSafe n xs
      | n > length xs || n <= 0 = Nothing
      | otherwise = Just (elemAt n xs)

    -- Exercise 1
    lastSafe :: [a] -> Maybe a
    lastSafe xs = elemAtSafe (length xs) xs

    -- Exercise 2
    biggestPrime :: [Int] -> Maybe Int
    biggestPrime [] = Nothing
    biggestPrime [x]
      | isPrime x = Just x
      | otherwise = Nothing
    biggestPrime (x:xs)
      | not (biggestPrime xs == Nothing) = biggestPrime xs
      | isPrime x = Just x
      | otherwise = biggestPrime xs

    -- Exercise 3
    safeMax :: [Int] -> Maybe Int
    safeMax [] = Nothing
    safeMax (x:xs)
      | Just x >= safeMax xs = Just x
      | otherwise = safeMax xs

    -- Exercise 4
    biggestPrime2 :: [Int] -> Maybe Int
    biggestPrime2 [] = Nothing
    biggestPrime2 [x]
      | isPrime x = Just x
      | otherwise = Nothing
    biggestPrime2 (x:xs)
      | Just x >= biggestPrime2 xs && isPrime x = Just x
      | otherwise = biggestPrime2 xs

    -- Exercise 5
    thereExistsWitness :: (a -> Bool) -> [a] -> Maybe a
    thereExistsWitness _ [] = Nothing
    thereExistsWitness f (x:xs)
      | f x = Just x
      | otherwise = thereExistsWitness f xs

    -- Exercise 6
    forAllCounterExample :: (a -> Bool) -> [a] -> Maybe a
    forAllCounterExample _ [] = Nothing
    forAllCounterExample f (x:xs)
      | not (f x) = Just x
      | otherwise = forAllCounterExample f xs

    -- Exercise 7
    findIndex :: (Eq a) => a -> [a] -> Maybe Int
    findIndex _ [] = Nothing
    findIndex x (y:ys)
      | x == y = Just 1
      | otherwise = case (findIndex x ys) of
            Just n -> Just (1 + n)
            _ -> Nothing

    -- Exercise 8
    safeLast :: [a] -> Maybe a
    safeLast [] = Nothing
    safeLast [x] = Just x
    safeLast (x:xs) = safeLast xs

    -- Exercise 9
    removeLastSafe :: [a] -> Maybe [a]
    removeLastSafe [] = Nothing
    removeLastSafe [x] = Just []
    removeLastSafe (x:xs) = case (removeLastSafe xs) of
        Just xs -> Just (x:xs)
        _ -> Nothing
