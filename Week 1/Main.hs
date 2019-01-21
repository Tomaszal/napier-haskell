import IO
import Functions

main = do

    putStr ("Exercise 1 tests:\n" ++
            formatNumberedList ex1 ++ "\n")

    putStr ("Exercise 2 tests:\n" ++
            "list = " ++ show ex2list ++ "\n" ++
            "n = " ++ show ex2n ++ "\n" ++
            formatNumberedList ex2 ++ "\n")

    putStr ("Exercise 3 tests:\n" ++
            "list = " ++ show ex3list ++ "\n" ++
            "n = " ++ show ex3n ++ "\n" ++
            "b = " ++ show ex3b ++ "\n" ++
            "exactlyGivenIn n b list == " ++ show (exactlyGivenIn ex3n ex3b ex3list) ++ "\n")

    where
        ex1 = [
            8>9,
            9>=0,
            True && (True || False),
            not (not True) == True,
            countElems 'b' "It was the best of times, it was the blurst of times" == 6,
            countElems '2' "5438275439872242142" < 3,
            countElems 't' "The Importance of Being Earnest" > countElems 't' "The Picture of Dorian Gray",
            countElems 't' "Gadsby" < countElems 's' "The quick brown fox jumped over the lazy dog" ]

        ex2list = [ True, True, True, False, False ]
        ex2n = 2
        ex2 = [
            atLeastTrueIn ex2n ex2list,
            atMostTrueIn ex2n ex2list,
            greaterThanTrueIn ex2n ex2list,
            lessThanTrueIn ex2n ex2list,
            notExactlyTrueIn ex2n ex2list,
            exactlyFalseIn ex2n ex2list ]

        ex3list = "A man, a plan, a canal: Panama"
        ex3n = 9
        ex3b = 'a'
