import Functions

main = do

    let setBool = [True,True,True,False,False]
        setInt = [1,2,3,4,3,2,1]
        setChar = "A man, a plan, a canal: Panama"

    mapM_ putStrLn [
            "> Determine if the statements are true",
            "1.1 " ++ show (8>9),
            "1.2 " ++ show (9>=0),
            "1.3 " ++ show (True && (True || False)),
            "1.4 " ++ show (not (not True) == True),
            "1.5 " ++ show (countElems 'b' "It was the best of times, it was the blurst of times" == 6),
            "1.6 " ++ show (countElems '2' "5438275439872242142" < 3),
            "1.7 " ++ show (countElems 't' "The Importance of Being Earnest" > countElems 't' "The Picture of Dorian Gray"),
            "1.8 " ++ show (countElems 't' "Gadsby" < countElems 's' "The quick brown fox jumped over the lazy dog"),
            "",
            "> Comparison functions",
            "2.1 " ++ show (atLeastTrueIn 2 setBool),
            "2.2 " ++ show (atMostTrueIn 2 setBool),
            "2.3 " ++ show (greaterThanTrueIn 2 setBool),
            "2.4 " ++ show (lessThanTrueIn 2 setBool),
            "2.5 " ++ show (notExactlyTrueIn 2 setBool),
            "2.6 " ++ show (exactlyFalseIn 2 setBool),
            "",
            "> Check for exact occurance amount",
            "3.1 " ++ show (exactlyGivenIn 3 2 setInt),
            "3.2 " ++ show (exactlyGivenIn 9 'a' setChar)
        ]
