type
  Node = ref object
    data: int

var n: Node
var m: Node

new(n)

m = n

echo repr(n), " ", repr(m)
