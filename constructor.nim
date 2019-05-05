type
  MyObject = ref object
    val: int

proc newMyObject(val: int): MyObject =
  MyObject(val: val)

proc setVal(obj: MyObject, val: int) =
  obj.val = val

proc getVal(obj: MyObject): int =
  obj.val

var someObj: MyObject = newMyObject(6)
echo someObj.getVal()