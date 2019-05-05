# Explicit heap dynamic variable
type
  MyObj = ref object
    data: int

var n: MyObj
# n.data = 9

new(n)    # Memory allocated
n.data = 9
echo n.data

var m: MyObj = n
m.data = 10
echo n.data

type
  # Data = array[3, int]
  Data = array[0..3, int]

var datum = cast[ptr Data](alloc(sizeof(Data)))
datum[] = [0, 1, 2, 3]
echo repr(datum), datum[]
