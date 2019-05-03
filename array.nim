#[
    Arrays are a homogeneous type, meaning that each element in the array has the same type. 

    Arrays always have a fixed length specified as a constant expression
    Fixed stack-dynamic (except for open arrays)

    Sequences are similar to arrays but of dynamic length which may change during runtime
    Heap-dynamic
]#

type
    IntArray = array[0..5, int] # an array that is indexed with 0..5
    QuickArray = array[6, int] # an array that is indexed with 0..5
    IntSeq = seq[int] # a sequence of integers
var
    x: IntArray
    x1: QuickArray
    y: IntSeq
x = [1, 2, 3, 4, 5, 6]  # [] is the array constructor
x1 = x
y = @[1, 2, 3, 4, 5, 6] # the @ turns the array into a sequence
  
let z = [1.0, 2, 3, 4] # the type of z is array[0..3, float]

for i in 0..len(x)-1:
    echo x[i]

echo "Lowwerbound: ", low(y), " Upperbound: ", high(y)
y.add(7)
echo "Upperbound After Add: ", high(y)
for i in low(y)..high(y):
    echo y[i]


#[
    Array with Enum
]#
type
    Direction = enum
      north, east, south, west
    BlinkLights = enum
      off, on, slowBlink, mediumBlink, fastBlink
    LevelSetting = array[north..west, BlinkLights]

var level: LevelSetting
level[north] = on
level[south] = slowBlink
level[east] = fastBlink
echo repr(level)  # --> [on, fastBlink, slowBlink, off]
echo low(level)   # --> north
echo len(level)   # --> 4
echo high(level)  # --> west

#[
    Sequences

    Sequences are similar to arrays but of dynamic length which may change during runtime
    Heap-dynamic
]#
var
    j: seq[int] # a reference to a sequence of integers
j = @[1, 2, 3, 4, 5, 6] # the @ turns the array into a sequence allocated on the heap

for value in @[3, 4, 5]:
    echo value
  # --> 3
  # --> 4
  # --> 5
  
for i, value in @[3, 4, 5]:
    echo "index: ", $i, ", value:", $value
  # --> index: 0, value:3
  # --> index: 1, value:4
  # --> index: 2, value:5

#[
    Open arrays

    NOTE: Openarrays can only be used for parameters.
]#
var
    fruits:   seq[string]       # reference to a sequence of strings that is initialized with '@[]'
    capitals: array[3, string]  # array of strings with a fixed size
capitals = ["New York", "London", "Berlin"]   # array 'capitals' allows assignment of only three elements
fruits.add("Banana")          # sequence 'fruits' is dynamically expandable during runtime
fruits.add("Mango")

proc openArray(oa: openArray[string]) =
    echo "Length : ",oa.len , "Array : ", repr(oa)

openArray(["Hello","World","And","Humanity"])
openArray(["Smaller","Size"])

#[
    Unchecked Array

    is a special kind of array where its bounds are not checked.
]#


