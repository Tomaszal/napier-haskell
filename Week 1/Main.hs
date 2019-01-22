import Functions

main = do

    -- Exercise 1

    mapM_ putStrLn [
            "Exercise 1 answers:",
            unlines $ zipWith (\n x -> show n ++ ") " ++ show x) [1..] [
                8>9,
                9>=0,
                True && (True || False),
                not (not True) == True,
                countElems 'b' "It was the best of times, it was the blurst of times" == 6,
                countElems '2' "5438275439872242142" < 3,
                countElems 't' "The Importance of Being Earnest" > countElems 't' "The Picture of Dorian Gray",
                countElems 't' "Gadsby" < countElems 's' "The quick brown fox jumped over the lazy dog"
            ]
        ]

    -- Exercise 2

    let n = 2
        xs = [True,True,True,False,False]

    mapM_ putStrLn [
            "Exercise 2 tests:",
            "> let n = " ++ show n,
            "> let xs = " ++ show xs,
            unlines $ zipWith (\n x -> show n ++ ") " ++ x) [1..] [
                "> atLeastTrueIn n xs => " ++ show (atLeastTrueIn n xs),
                "> atMostTrueIn n xs => " ++ show (atMostTrueIn n xs),
                "> greaterThanTrueIn n xs => " ++ show (greaterThanTrueIn n xs),
                "> lessThanTrueIn n xs => " ++ show (lessThanTrueIn n xs),
                "> notExactlyTrueIn n xs => " ++ show (notExactlyTrueIn n xs),
                "> exactlyFalseIn n xs => " ++ show (exactlyFalseIn n xs)
            ]
        ]

    -- Exercise 3

    let n1 = 3
        b1 = 2
        xs1 = [1,2,3,4,3,2,1]

    let n2 = 9
        b2 = 'a'
        xs2 = "A man, a plan, a canal: Panama"

    mapM_ putStrLn [
            "Exercise 3 tests:",
            "> exactlyGivenIn " ++ show n1 ++ " " ++ show b1 ++ " " ++ show xs1 ++ " => " ++ show (exactlyGivenIn n1 b1 xs1),
            "> exactlyGivenIn " ++ show n2 ++ " " ++ show b2 ++ " " ++ show xs2 ++ " => " ++ show (exactlyGivenIn n2 b2 xs2)
        ]
