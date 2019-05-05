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

echo "Lowerbound: ", low(y), " Upperbound: ", high(y)
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
    echo "Length : ", oa.len , " Array : ", repr(oa)

openArray(["Hello","World","And","Humanity"])
openArray(["Smaller","Size"])


#[
    Varargs

    NOTE: Varargs is only be used for parameter like an Open arrays
]#
proc myWriteln(a: varargs[string]) =
    echo a
  
myWriteln("abc", "def", "xyz")
# is transformed by the compiler to: ["abc", "def", "xyz"]

#[
    Unchecked Array

    is a special kind of array where its bounds are not checked.
]#

#[
    Slices
]#

var
    slice1 = "Nim is a progamming language"
    slice2 = "Slices are useless."
  
echo slice1[7..12] # --> 'a prog'
slice2[11..^2] = "useful"
echo slice2 # --> 'Slices are useful.'

#[
    "Slices are useless."
    |          |     |
    0         11    17   using indices
    ^19        ^8    ^2   using ^ indices from back to front
]#

#[
    Tuples
]#
type
    Person = tuple[name: string, age: int]

var person1: Person
# You can declare var person: tuple[street: string, number: int] instead.
var person2: Person
person1 = (name: "Peter", age: 30)
person2 = ("Tom", 20)
echo person1, " ", person2
echo person1[0] # "Peter"
echo person1[1] # 30

#[
    Multi Dimensional Array
]#
# Rectangular Array Fixed Length
type
    MultiDimension = array[0..1, array[5, int]]
var multiArray: MultiDimension
multiArray = [  
                [1, 2, 3, 4, 5],
                [1, 2, 3, 4, 5]
            ]
echo multiArray
# Rectangular Array Dynamic Length
type
    RecDynamic = seq[array[0..1,int]]
var recDynamic: RecDynamic
recDynamic = @[
                [1, 2],
                [3, 4]
            ]
echo recDynamic
# Jagged Array Fixed Length
type
    JaggedArray = array[0..1, seq[int]]
var jaggedArray: JaggedArray
jaggedArray = [
                @[1, 2, 3],
                @[1, 2, 3, 4, 5]
            ]
echo jaggedArray
# Jagged Array Dynamic Length
type
    JagDynamic = seq[seq[int]]
var jaggedDynamic: JagDynamic
jaggedDynamic = @[
                @[1, 3, 5]
            ]
echo jaggedDynamic


proc printf(formatstr: cstring) {.importc: "printf", varargs,
                                  header: "<stdio.h>".}
printf("----------- %s ------------\n", "Array two dimesion")

for i in low(multiArray)..high(multiArray):
    for j in low(multiArray[0])..high(multiArray[0]):
        printf("%d ",multiArray[i][j])
    printf("\n")

printf("----------- %s ------------\n", "Jagged Array")

for i in low(jaggedArray)..high(jaggedArray):
    for j in low(jaggedArray[i])..high(jaggedArray[i]):
        printf("%d ",jaggedArray[i][j])
    printf("\n")
