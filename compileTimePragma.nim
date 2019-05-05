var x{.compileTime.}: int = 10
# echo x
proc compileTimeFunc(): int {.compileTime.} =
  echo x
  x         # return x
echo compileTimeFunc()
