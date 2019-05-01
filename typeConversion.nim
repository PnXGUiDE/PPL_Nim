var
  someInt: int = 2
  someFloat: float

# someFloat = someInt
someFloat = float(someInt)
echo someFloat
# echo someFloat + someInt

proc doSomething(f: float): float =
  return f * 2

echo doSomething(2)           # Integer literal can be implicitly converted into float
# echo doSomething(someInt)
echo doSomething(float(someInt))

import typetraits

# Narrowing & Widening
var myInt16: int16 = 5
var myInt: int
echo myInt16 + 34, " ", type(myInt16 + 34)
echo myInt16 + myInt, " ", type(myInt16 + myInt)
echo myInt16 + 2i32, " ", type(myInt16 + 2i32)
