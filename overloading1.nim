proc add(a, b: int): int =
  echo "int + int"
  result = a + b

proc add(): int =
  echo "<> + <>"
  result = 3 + 2

echo add()
echo add(5, 4)
