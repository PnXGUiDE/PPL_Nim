#[
    Reference: https://forum.nim-lang.org/t/3342
]#

# There are no built-in ternary expression
# Ternary expression implementation using template
type
  BranchPair[T] = object
    then, otherwise: T

# This cannot be a template yet, buggy compiler...
proc `!`*[T](a, b: T): BranchPair[T] {.inline.} =
  BranchPair[T](then: a, otherwise: b)

template `?`*[T](cond: bool; p: BranchPair[T]): T =
  (if cond: p.then else: p.otherwise)

echo 5 == 5 ? "Equal" ! "Not Equal"

# Assignment using conditional expression
var a: int = (0 == 1) ? 5 ! 4
echo a
