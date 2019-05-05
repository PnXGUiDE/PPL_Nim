# using varargs
proc printAny(a: varargs[string]) =
  for i in a:
    echo i
  
printAny("abc", "def", "xyz")
