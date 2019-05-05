type
  SomeObj* = ref object
    val: int
    name: string

proc newSomeObj*(val: int, name: string): SomeObj =
  SomeObj(val: val, name: name)

method getVal*(self: SomeObj): int {.base.} =
  self.val

method printReport*(self: SomeObj) =
  echo self.val, " ", self.name
