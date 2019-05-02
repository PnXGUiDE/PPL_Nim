proc addSomething(a, b: int): int =
  a + b * 2

echo addSomething(b = 3, a = 2)
# echo addSomething(b = 3, 2)
echo addSomething(a = 3, 2)
