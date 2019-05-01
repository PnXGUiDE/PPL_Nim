var a {.global.}: int = 3

proc square(): int =
  a = 5
  return 1

a = a + square()    # Function first
# a = square() + a
echo a
