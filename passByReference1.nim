type
  MyObj = ref
    object
      data: int

proc addMyObj(x, y: MyObj): int =
  return x.data + y.data

proc changeMyObj(x: MyObj) =
  x.data = 15

var p: MyObj
var q: MyObj

new(p)
p.data = 4
new(q)
q.data = 5

echo addMyObj(p, q)
changeMyObj(p)
echo p.data
