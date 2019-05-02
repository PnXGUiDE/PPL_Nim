var x{.global.} = 10

proc func1(): int =
  x = 5
  return 1

proc func2(): int {.noSideEffect.} =
  # x = 5       # manipulate other variable
  return 1
