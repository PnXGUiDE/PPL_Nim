proc doSomething(): iterator() =
  result = iterator() =
    echo "do something"

let foo = doSomething()
foo()
