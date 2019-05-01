var a: int = 1
var b: int = 2

# and (OP4), or (OP3), not (OP5)
echo true or false and not true

# .. (OP6), +- (OP8), * (OP9)
type
  MyRange = range[5+2..25-5*2]

echo low(MyRange), " ", high(MyRange)

# $ (OP10 Highest level)
proc `$+` (x, y: int): int =
  result = x + y

echo 1 $+ 10 * 5, " ", 1 + 10 * 5

# OP2
proc `@*` (x, y: int): int =
  result = x * y

# OP0 (Lowest level)
proc `=>` (x, y: int): int =
  result = x * y

echo 1 + 2 * 3, " ", 1 + 2 @* 3, " ", 1 + 2 => 3

# Parenthesis
