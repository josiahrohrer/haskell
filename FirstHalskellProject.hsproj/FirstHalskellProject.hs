module FirstHaskellProject
where
  -- i will try my first Haskell Functions
import Data.Char

double x = x + x
exclaim sentence  = sentence ++ "!"


average :: Fractional a => a -> a -> a
average a b = (a+b)/2.0


hypot a b = sqrt(a^2+b^2)

showAreaOfCircle r = r^2 * pi

showAreaOfCircle' d = r^2 * pi
  where
    r = d / 2


showResult aa = "The result is " ++ show (aa)

sigunm x | x < 0 = -1
          | x == 0 = 0
          | x > 0 = 1

fun a = sqrt a
evenNumbers max = [2,4..max]

foo x
  = a + b
  where
    a = 1 + x
b = 2
fo x
  = a + b
  where
a = 2
fooo x
  = a+b

sort :: Ord a => a -> a -> (a,a)
sort x y
  | x < y = (x,y)
  | x > y = (y,x)
  |otherwise = (x,y)

almostEqual :: Ord a => (a,a) -> (a,a) -> Bool
almostEqual (x1,y1) (x2,y2)
  | (x1 == x2) && (y1 == y2) = True
  | (x1 == y2) && (y1 == x2) = True
  | otherwise = False

almostEqual2 (x1, y1) (x2, y2)
  | (x1 == x2) = (y1 == y2)
  | (x1 == y2) = (y1 == x2)
  | otherwise  = False

nthsum:: Int->Int
nthsum 0 = 0
nthsum n
  | n>0 = n+nthsum(n-1)

  | otherwise = error "Imput Value too smal"

repeatN 0 x  = []
repeatN n x  = x : repeatN (n - 1) x

allSquare :: Num a => [a] -> [a]
allSquare [] = []
allSquare (x : xs) = x * x : allSquare xs

alltoUpper :: String -> String
alltoUpper [] = []
alltoUpper (chr : restString) =
  toUpper chr : alltoUpper restString

checkIfListhascontent :: [a] -> Bool
checkIfListhascontent [] = True
checkIfListhascontent (x:xs) = False

head2 :: [a] -> a
head2 a
  | checkList a == False = head a
  | checkList a ==True = error "empty List!!!"
  | otherwise = error "unknown Error"

productofList :: Num a => [a] -> a
productofList [] = 1
productofList (x : xs) = x * productofList (xs)

productofList2 a
  | checkList a == False = productofList a
  | checkList a == True = error "empty List"
