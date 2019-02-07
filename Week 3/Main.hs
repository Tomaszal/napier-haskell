import Functions

main = do

    mapM_ putStrLn [
            "> Recursion",
            "1-3.  'Paper'-based exercises",
            "",
            "> Lists",
            "4.  " ++ show (myLength [1,2,3,4,5]),
            "5.  " ++ show (mySum [1.4,5]),
            "6.  " ++ show (myProduct [1.5,3,2]),
            "7.  " ++ show (myFlip [-3..3]),
            "8.  " ++ show (addAtEnd 0 [1..5]),
            "9.  " ++ show (append [1..5] [6..10]),
            "10. " ++ show (myReverse [1..5]),
            "",
            "> Sets",
            "11.   " ++ show (uniqueList [1,2,3,4,2,1,3,2,3,2,1]),
            "12.1. " ++ show (subset [2..5] [1..10]),
            "12.2. " ++ show (subset [2..5] [3..10]),
            "12.3. " ++ show (subset [1,2,3,4] [4,3,2,1]),
            "13.   " ++ show (myIntersection [2..5] [3..10])
        ]
