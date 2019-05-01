var a: int = 1
var b: int = 2

echo true or false and not true

type
  MyRange = range[5+2..25-5*2]

echo low(MyRange), " ", high(MyRange)

proc `$+` (x, y: int): int =
  result = x + y

echo 1 $+ 10 * 5, " ", 1 + 10 * 5

proc `@*` (x, y: int): int =
  result = x * y

proc `=>` (x, y: int): int =
  result = x * y

echo 1 + 2 * 3, " ", 1 + 2 @* 3, " ", 1 + 2 => 3
