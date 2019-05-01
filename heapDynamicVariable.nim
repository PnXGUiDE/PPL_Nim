# Explicit heap dynamic variable
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
