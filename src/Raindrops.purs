module Raindrops
  ( raindrops
  ) where

import Prelude

import Data.Array (filter, foldl, range)

encodeP :: Int -> String
encodeP 3 = "Pling"
encodeP 5 = "Plang"
encodeP 7 = "Plong"
encodeP _ = ""

raindrops :: Int -> String
raindrops n = n
              # (range 1)
              # (filter \x -> (mod n x) == 0)
              # (map encodeP)
              # (foldl (<>) "")
              # \x -> (case x of
                          "" -> show n
                          otherwise -> x)
