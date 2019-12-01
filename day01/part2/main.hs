requiredFuel :: Int -> Int
requiredFuel = subtract 2 . flip quot 3

compoundFuel :: Int -> Int
compoundFuel = sum
             . takeWhile (>0) 
             . iterate requiredFuel
             . requiredFuel

main :: IO ()
main = do input <- readFile "../input"
          let part2 = sum
                    $ map (compoundFuel . read)
                    $ lines input
          print part2