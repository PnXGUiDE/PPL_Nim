proc createIncrementor(a: int): proc =
  return proc(x: int): int =
    result = a + x

var incrementByFour: proc = createIncrementor(4)
echo incrementByFour(5)
