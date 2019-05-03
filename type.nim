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
    Constants
]#
const m = 35
# m = -27         # error 

# var n = -5
# const z = n + 7 # error 

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

#[
    Ordinal type special operations

NOTE: Integers, bool, characters and enumeration types 
        (and subranges of these types) belong to ordinal types
        except uint and uint64 are not ordinal type
]#
var 
    a1: int = 1
    a2 = 2
    a3 = 3
    a4 = 4
# a1++ # Error
inc(a1) #=> work like a++
echo a1
inc(a1, 3) #=> a = a + 3
# it also has dec = decrease

#[
    Automatic type conversion is performed in expressions where different kinds of integer types 
    are used: the smaller type is converted to the larger.

    Nim has only widening type conversions

    ref: https://nim-lang.github.io/Nim/manual.html#type-relations-convertible-relation
]#
var myInt16 = 5i16
var myInt: int
var myFloat: float = 4.2
let test1 = myInt16 + 34     # of type ``int16``
let test2 = myInt16 + myInt  # of type ``int``
let test3 = myInt16 + 2i32   # of type ``int32``

#let test4 = myFloat + myInt



