proc add(a, b: float): float =
  echo "float + float"
  result = a + b

proc add(a, b: int): int =
  echo "int + int"
  result = a + b

#[
proc add(a: int, b: float): int =
  echo "int + float"
  result = a + int(b)
]#

#[
proc add(a: float, b: int): int =
  echo "float + int"
  result = int(a) + b
]#


echo add(5, 4)
echo add(5.0, 4)
echo add(5, 4.0)
echo add(5.0, 4.0)