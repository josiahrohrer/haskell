hypothenuse a b = sqrt(a^2+b^2)
testfunction a b = 2 * hypothenuse a b

fun x = if x > 4
        then x + 1
        else x - 1
ggt a b|b==0 =a
        |a==0 =b
        |a>=b =ggt(mod a b)b
        | otherwise = ggt a (mod b a)