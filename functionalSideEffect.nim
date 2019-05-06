var a {.global.}: int = 3

proc someProc(): int =
  a = 5
  return 1

# a = a + someProc()    # Procedure first
a = someProc() + a
echo a
