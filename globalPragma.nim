proc globalPragma(): int =
  var a{.global.}: int = 0
  inc(a)    # a = a + 1
  a         # return a

proc func1(): int =
  var b: int = 0
  inc(b)    # b = b + 1
  b         # return b

echo globalPragma(), " ", globalPragma(), " ", globalPragma()
echo func1(), " ", func1(), " ", func1()
