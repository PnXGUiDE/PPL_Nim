type
  SomeObj* = ref object
    val: int
    name: string

# proc = static dispatch
proc newSomeObj*(val: int, name: string): SomeObj =
  SomeObj(val: val, name: name)

# method = dynamic dispatch
method getVal*(self: SomeObj): int {.base.} =
  self.val

method printReport*(self: SomeObj) {.base.} =
  echo self.val, " ", self.name
