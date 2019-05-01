var str: string = "Hello, World"

var str1:string = "Hello"
var str2:string = "Hello"

echo str
echo str.len
echo str[0]
# mutable
str[0] = 'Y'
echo str

if str1 == str2:
    echo "Equal"
else:
    echo "Not equal"

#[
    int
    Nim has these integer types built-in:  
    int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64.
    (uint is unassigned int) 
]#
let
    x = 0     # x is of type ``int``
    y = 0'i8  # y is of type ``int8``
    z = 0'i64 # z is of type ``int64``
    u = 0'u   # u is of type ``uint``
    v = 0'u8  # v is of type ``uint8``

#[
    float
    Nim has these floating point types built-in: 
    float float32 float64.
]#
let
    a = 0.0      # a is of type ``float``
    b = 0.0'f32  # b is of type ``float32``
    c = 0.0'f64  # c is of type ``float64``
#[
    Type Conversion
]#
var
    d: int32 = 1.int32   # same as calling int32(1)
    e: int8  = int8('a') # 'a' == 97'i8 
    f: float = 2.5       # int(2.5) rounds down to 2
    sum: int = int(x) + int(y) + int(z) # sum == 100
#[
    Static Type
    implicit and explicit
]#
var h = 0
var i = "String"
var j: int32 = 0
var k: int8 = 5
var l: string = "String"
# h = i # Type mismatch
j = k # Has coercion
# k = j # Bigtype not compatible with Smalltype

#[
    Enumerations
]#
type
    Direction = enum
      north, east, south, west
  
var g = south     # `g` is of type `Direction`; its value is `south`
echo g            # writes "south" to `stdout`