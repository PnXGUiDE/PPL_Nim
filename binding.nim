# Implicit Static Type Binding
var a = "5"
# a = 3
let b = 4  
const c = 3
# c = 5
# echo a + b
echo b + c

# Explicit Static Type Binding
var x: int        # Mutable
# let y: int
let y: int = 4    # Immutable
# const z: int
const z: int = 7  # Bound at compile time

# Multiple declaration
var i, j, k: int
i = 3
j = 4
k = 5
# i, j, k = 3, 4, 5
echo i, " ", j, " ", k

let
  m = "foo"
  n = "bar"
const
  p = 5.4
  q = 3.2

# let and const keyword
let input = readLine(stdin)
# const input = readLine(stdin)   # Need compile time evaluation

#[
import typetraits
echo type(a)
]#
