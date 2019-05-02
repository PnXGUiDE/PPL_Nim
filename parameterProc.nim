proc doSomething(a: string; b: int): string =
  return a & $b

echo doSomething("Hello ", 5)
# echo doSomething(5, "Hello ")
