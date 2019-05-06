type
  MyIntRange = range[1..100]
  MyIntRange2 = range[1..100]
  MyIntRange3 = range[0..99]

var i: MyIntRange = 50
var j: MyIntRange2 = 50
var k: MyIntRange3 = 50
var x: int = 50

echo i == j, " ", i == k, " ", i == x

# Subtype Relation
type
  MyRange = range[0..10]
  MySubrange = range[2..8]

var a: MySubrange = 5
var b: MyRange = a
echo a, " ", b

var c: MyRange = 5
var d: MySubrange = c
echo c, " ", d

