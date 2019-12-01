requiredFuel :: Int -> Int
requiredFuel = subtract 2 . flip quot 3

main :: IO ()
main = do input <- readFile "../input"
          let part1 = sum 
                    $ map (requiredFuel . read)
                    $ lines input
          print part1
