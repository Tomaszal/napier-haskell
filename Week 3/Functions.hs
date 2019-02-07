module Functions where

    -- Exercise 4
    myLength :: [a] -> Int
    myLength [] = 0
    myLength (x:xs) = 1 + myLength xs

    -- Exercise 5
    mySum :: (Num a) => [a] -> a
    mySum [] = 0
    mySum (x:xs) = x + mySum xs

    -- Exercise 6
    myProduct :: (Num a) => [a] -> a
    myProduct [] = 1
    myProduct (x:xs) = x * myProduct xs

    -- Exercise 7
    myFlip :: (Num a) => [a] -> [a]
    myFlip [] = []
    myFlip (x:xs) = -1 * x : myFlip xs

    -- Exercise 8
    addAtEnd :: a -> [a] -> [a]
    addAtEnd x [] = [x]
    addAtEnd x (y:ys) = y : addAtEnd x ys

    -- Exercise 9
    append :: [a] -> [a] -> [a]
    append xs [] = xs
    append xs (y:ys) = y : append xs ys

    -- Exercise 10
    myReverse :: [a] -> [a]
    myReverse [] = []
    myReverse (x:xs) = addAtEnd x (myReverse xs)

    -- Exercise 11
    uniqueList :: (Eq a) => [a] -> [a]
    uniqueList [] = []
    uniqueList (x:xs)
      | elem x xs = uniqueList xs
      | otherwise = x : uniqueList xs

    -- Exercise 12
    subset :: (Eq a) => [a] -> [a] -> Bool
    subset [] ys = True
    subset (x:xs) ys
      | elem x ys = subset xs ys
      | otherwise = False

    setEquality :: (Eq a) => [a] -> [a] -> Bool
    setEquality xs ys = subset xs ys && subset ys xs

    -- Exercise 13
    myIntersection' :: (Eq a) => [a] -> [a] -> [a]
    myIntersection' [] ys = []
    myIntersection' (x:xs) ys
      | elem x ys = x : myIntersection' xs ys
      | otherwise = myIntersection' xs ys

    myIntersection :: (Eq a) => [a] -> [a] -> [a]
    myIntersection xs ys = uniqueList (myIntersection' xs ys)
