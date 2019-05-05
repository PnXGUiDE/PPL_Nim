proc doSomething(a, b: int): int =    # in mode
  # a = 2
  # b = 3
  result = a + b

var x: int = 5
var y: int = 6

echo doSomething(x, y)