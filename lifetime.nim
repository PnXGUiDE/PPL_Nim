var val: int = 5

proc func1(): int =
  var val2: int = 10
  echo val, " ", val2
  return -1

var res = func1()

echo val
# echo val, val2