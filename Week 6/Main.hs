import Functions

main = do

    mapM_ putStrLn [
            "> Wildcards",
            "1.1. " ++ show (myAnd True True),
            "1.2. " ++ show (myAnd True False),
            "2.   " ++ show (mySnd (1,2)),
            "3.1. " ++ show (ignoreButN 1 1 2 3),
            "3.2. " ++ show (ignoreButN 2 1 2 3),
            "3.3. " ++ show (ignoreButN 3 1 2 3),
            "3.4. " ++ show (ignoreButN 4 1 2 3),
            "",
            "> Anonymous functions",
            "4.1. " ++ show (absPlusOne1 [-3..3]),
            "4.2. " ++ show (absPlusOne2 [-3..3]),
            "5.1. " ++ show (addPairs1 [(1,2),(2,3),(-4,2)]),
            "5.2. " ++ show (addPairs2 [(1,2),(2,3),(-4,2)]),
            "",
            "> Folds",
            "6.   " ++ show (foldl (max) 0 [x | x <- [1..10], x * x < 40]),
            "7.1. " ++ show (foldr (&&) True (map (\x -> (not (isPrime x))) [10000..])),
            "7.2. " ++ show (foldr (||) False (map isPrime [20000..])),
            "8.   " ++ show (howMany1 1 [1,2,3,2,1,2,1,2]),
            "9.   " ++ show (howMany2 1 [1,2,3,2,1,2,1,2]),
            "",
            "> Sorting",
            "10. " ++ show (quickSortUnique [4,1,4,3,2,3,1])
        ]
