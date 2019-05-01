type
  MyTuple = tuple[x: string, y: int]
  MyTuple2 = tuple[x: string, y: int]
  MyTuple3 = tuple[i: string, j: int]

var a: MyTuple = ("hello", 10)
var b: MyTuple2 = ("hello", 10)
var c: MyTuple3 = ("hello", 10)

echo a == b
# echo a == c
