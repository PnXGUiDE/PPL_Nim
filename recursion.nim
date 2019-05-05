proc fact(x: int): int =
  if(x == 0):
    return 1
  else:
    return fact(x-1) * x

echo fact(5)

proc factIter(x: int): int =
  var result: int = 1
  for i in 2..x:
    result *= i
  return result

echo factIter(5)
