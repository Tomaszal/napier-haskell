module IO where

    -- A set of functions to format a numbered list
    -- https://stackoverflow.com/a/24829816

    renderLine :: Show a => Integer -> a -> String
    renderLine i a = show i ++ ") " ++ show a

    formatNumberedList :: Show a => [a] -> String
    formatNumberedList = unlines . zipWith renderLine [1..]
