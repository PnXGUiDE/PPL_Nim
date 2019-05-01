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