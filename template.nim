template `??` (a, b: int): int =
  a + b

echo 5 ?? 3

template `!=` (a, b: untyped): bool =
  not(a == b)

echo 5 != 6
