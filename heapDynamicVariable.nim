# Explicit heap dynamic variable
type
  MyObj = ref object
    data: int

var n: MyObj
# n.data = 9
new(n)    # Memory allocated
n.data = 9
echo n.data

type
  # Data = array[3, int]
  Data = array[0..3, int]

var datum = cast[ptr Data](alloc(sizeof(Data)))
datum[] = [0, 1, 2, 3]
echo repr(datum), datum[]

# Implicit Heap Dynamic Variable
# var intList = [1, 2, 3]

var intList: array[3, int]
# var intList {.compiletime.}: array[3, int]
intList[0] = 1
intList[1] = 2
intList[2] = 3
var sum = intList[0] + intList[1] + intList[2]

echo sum

var a = [3, 5, 9]
var aExp: array[0..2, int] = [3, 5, 9]
# var a = [3, "a", 9.0]