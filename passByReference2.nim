proc changeVal(x: ptr int) =
  x[] = 9

var a: int = 5
var ptrA: ptr int = addr a
echo a
changeVal(ptrA)
echo a
