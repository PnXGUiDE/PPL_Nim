if true:
  echo "It works!"

var
  x = 5
  y = 4

if x == 4:
  echo "x is 4"
else:
  echo "x is not 4"

if x == 4:
  echo "x is 4"
elif y == 4:
  var x = 4       # new scope
  echo "y is 4 ", x
else:
  echo "neither x nor y is 4"

# When statement
#[
var
  a = 5
  b = 4
]#

const     # need to be constant
  a = 5
  b = 4

when a == 4:
  echo "a is immutable 4"
elif b == 4:
  # var a = 5     # cannot open new scope
  echo "b is immutable 4 ", a
else:
  echo "neither a nor b is immutable 4"

