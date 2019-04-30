var x{.compileTime.}: int = 10
# echo x
proc compileTimeFunc(): int {.compileTime.} =
  x         # return x
echo compileTimeFunc()
