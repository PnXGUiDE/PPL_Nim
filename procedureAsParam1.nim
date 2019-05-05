template doOperation(a, b: int, function: untyped): int =
  function(a, b)

proc addNums(a, b: int): int = 
  result = a + b

proc subtractNums(a, b: int): int = 
  result = a - b

echo doOperation(5, 4, addNums)
echo doOperation(5, 4, subtractNums)
