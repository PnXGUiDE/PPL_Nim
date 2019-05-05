proc add[T](a, b: T): T =   # T need to be same param type
  result = a + b

echo add(5, 4)
echo add(5.0, 4)
# echo add(5, 4.0)           # check type from first param type
echo add(5.0, 4.0)