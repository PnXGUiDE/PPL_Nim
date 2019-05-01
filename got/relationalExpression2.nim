let
    i = 'a'
    j = 'd'
    k = 'Z'
   
echo i < j
echo i < k ## All uppercase letters come before lowercase letters.
   
echo "------------------"
let
    m = "axyb"
    n = "axyz"
    o = "ba"
    p = "ba "
   
echo m < n ## String comparison works char-by-char. First three characters are the same, and character b is smaller than character z.
echo n < o ## String length doesn’t matter for comparison if their characters are not identical.
echo o < p ## Shorter string is smaller than the longer one.
