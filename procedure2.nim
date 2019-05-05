var a{.global.}: int = 3      # visible in both scope

proc doSomething(x: int) =
  a += x
  # x = 3

proc main() =
  var y: int = 5

  echo a
  doSomething(y)
  echo a
  a += y
  echo a

main()
