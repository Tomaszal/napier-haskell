import Functions

main = do

    mapM_ putStrLn [
            "1.1.  " ++ show (filter (even) [1..10]),
            "1.2.  " ++ show (filter (odd) [1..50]),
            
            "2.1.  " ++ show (forAllMapFilter (isPrime) [5..10]),
            "2.2.  " ++ show (thereExistsMapFilter (isPrime) [5..10]),
            "2.3.  " ++ show (forAllMapFilter (odd) (filter (isPrime) [1..10])),
            
            "3.1.  " ++ show ([x | x <- [30..50], odd x]),
            "3.2.  " ++ show ([x | x <- [40..80], odd x, isPrime x]),
            
            "4.1.  " ++ show (thereExistsListComprehension (=='e') "So no-one told you life was gonna be this way"),
            "4.2.  " ++ show (forAllMapFilter (even) [0,10..200]),
            
            "5.    " ++ show (map (subtract 1) (filter (even) [1..50])),
            
            "6.    " ++ show (map (subtract 1) [x | x <- [1..50], even x]),
            
            "7.1.  " ++ show (head (filter (isPrime) [100..])),
            "7.2.  " ++ show (head [x | x <- [100..], isPrime x]),
            
            "8.1.  " ++ show (last (filter (isPrime) [1..200])),
            "8.2.  " ++ show (last [x | x <- [1..200], isPrime x]),
            
            "9.    " ++ show (forAllListComprehension (even) (map (2*) [5..10])),
            
            "10.1. " ++ show (map (^2) [1..20]),
            "10.2. " ++ show ([(x^2) | x <- [1..20]])
        ]
