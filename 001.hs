{---
 - Sum the natural numbers below 1000
 - that are a multiple of 3, or 5.
 ---}

module Main (main) where

import Data.List
import Control.Arrow

main :: IO ()
main = (putStrLn . show) answer


 -- sum of all multiples of 3 or 5 less than 1000
answer = sum (uncurry union $ multiples $> (($3)&&&($5)) ) $> takeWhile (<1000)


 -- multiples of a number
multiples x = [x,x*2..]

 -- flip function application for more english style reading
a $> b = b a
