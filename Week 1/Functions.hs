module Functions where

    -- Provided examples for exercise 1

    countElems :: (Eq a) => a -> [a] -> Int
    countElems x xs = length $ filter (==x) xs

    exactlyTrueIn :: Int -> [Bool] -> Bool
    exactlyTrueIn n xs = length (filter (==True) xs) == n

    -- Exercise 2

    atLeastTrueIn :: Int -> [Bool] -> Bool
    atLeastTrueIn n xs = length (filter (==True) xs) >= n

    atMostTrueIn :: Int -> [Bool] -> Bool
    atMostTrueIn n xs = length (filter (==True) xs) <= n

    greaterThanTrueIn :: Int -> [Bool] -> Bool
    greaterThanTrueIn n xs = length (filter (==True) xs) > n

    lessThanTrueIn :: Int -> [Bool] -> Bool
    lessThanTrueIn n xs = length (filter (==True) xs) < n

    notExactlyTrueIn :: Int -> [Bool] -> Bool
    notExactlyTrueIn n xs = not (length (filter (==True) xs) == n)

    exactlyFalseIn :: Int -> [Bool] -> Bool
    exactlyFalseIn n xs = length (filter (==False) xs) == n

    -- Exercise 3

    exactlyGivenIn :: Eq a => Int -> a -> [a] -> Bool
    exactlyGivenIn n b xs = length (filter (==b) xs) == n
