import Functions

main = do

    mapM_ putStrLn [
            "> Maybe",
            "1.   " ++ show (lastSafe [1..5]),
            "2.   " ++ show (biggestPrime [1..15]),
            "3.   " ++ show (safeMax [10,5,2,6,15,4,5]),
            "4.   " ++ show (biggestPrime2 [13,17,11,5]),
            "5.1. " ++ show (thereExistsWitness even [1..10]),
            "5.2. " ++ show (thereExistsWitness isPrime [8,9,10]),
            "6.1. " ++ show (forAllCounterExample even [2..10]),
            "6.2. " ++ show (forAllCounterExample isPrime [7,8,9,10]),
            "7.1. " ++ show (findIndex 5 [1..10]),
            "7.2. " ++ show (findIndex 11 [1..10]),
            "8.   " ++ show (safeLast [1..5]),
            "9.   " ++ show (removeLastSafe [1..5])
        ]
