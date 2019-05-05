proc voidProcedure() =
  echo "Hello World!"

proc myProcedure(): string =    # Subprogram Header (string as a return type)
  "Hello World!"      # Subprogram Description
  # return "Hello World!"

proc add(a, b: int): int =      # Parameter Profile: a -> int, b -> int
  result = a + b

voidProcedure()
echo myProcedure()
echo add(5, 3)

var a: int = 2
var b: int = 3

echo add(a, b)    # actual parameter
