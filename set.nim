# var X: set[int]

var A: set[int16]
var B: set[int16]
var C: set[int16]
var D: set[int16]

echo A

A = {1i16, 2i16, 3i16, 4i16, 5i16, 6i16, 7i16}
B = {2i16, 3i16, 5i16, 7i16, 11i16, 13i16, 17i16}
C = {2i16, 3i16}
D = {1i16, 2i16, 3i16, 4i16, 5i16, 6i16, 7i16}

# Union
echo A + B

# Intersect
echo A * B

# Distinct
echo A - B, " ", B - A

# Equility
echo A == B

# Subset
echo C <= A, " ", D <= A

# Proper Subset
echo C < A, " ", D < A

# in / notin
echo 2i16 in A, " ", 99i16 notin A

# cardinality
echo card(A), " ", card(B), " ", card(A + B)
