#[
    Characters
]#
let
    h = 'z'
    i = '+'
    j = '2'
    # k = '35' # error
    # l = 'xy' # error

#[
    Strings
]#
let
    m = "word"
    n = "A sentence with interpunction."
    o = ""    
    p = "32"  
    q = "!"

echo "some\nim\tips"
#[
    result is
    some
    im	ips

    If we wanted to print the above example as it was written
]#
echo "some\\nim\\tips"
echo r"some\nim\tips"

let
    r = "Hello"
    s = "Hello"
if (r == s):
    echo "Equals\n"
else :
    echo "Not Equals\n"

#[
    Boolean
]#
let
    t = 31
    u = 99

let
    bool1: bool = true
    bool2: bool = false
  
echo "t is greater than u: ", t > u
echo "t is smaller than u: ", t < u
echo "t is equal to u: ", t == u
echo "t is not equal to u: ", t != u
echo "t is greater or equal to u: ", t >= u
echo "t is smaller or equal to u: ", t <= u

let
    a = 'a'
    b = 'd'
    c = 'Z'

echo a < b
echo a < c

#[ The operators not, and, or, xor, <, <=, >, >=, !=, == are defined for the bool type. ]#

if (ord(bool1) == 0):
    echo "ord(false) == 0"
if (ord(bool2) == 1):
    echo "ord(true) == 1"


#[
    ord(false) == 0 and ord(true) == 1
]#


#[
    Cstring

    String in C Style
]#
proc printf(formatstr: cstring) {.importc: "printf", varargs,
                                  header: "<stdio.h>".}
printf("This works %s \n", "as expected")

#[
    Structured types
]#
type
    MySeq = object
      len, cap: int
      data: array[5, int]
#[
    Same as this C code : 
    typedef struct {
        int len;
        int cap;
        int data[];
    } MySeq;
]#
var myStruct: MySeq
myStruct.len = 5
myStruct.cap = 5
myStruct.data = [1, 2, 3, 4, 5]
echo myStruct.len, " ", myStruct.cap, " ", repr(myStruct.data)

