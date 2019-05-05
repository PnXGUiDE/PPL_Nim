proc add(a, b: int): int =
  echo "float + float"
  result = a + b

proc add(): int =
  echo "int + int"
  result = a + b


echo add(5, 4)
echo add(5.0, 4)
echo add(5, 4.0)
echo add(5.0, 4.0)