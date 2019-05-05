proc `@`(a: int, b: int): int =
  result = a * b + a * b

proc `+`(a: int, b: int): int =
  # result = a + b    # stack overflow
  result = a * b

echo 5 + 5
echo 5 @ 5
