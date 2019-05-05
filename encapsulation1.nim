type
  MyObject = ref object
    val: int

proc setVal(obj: MyObject, val: int) =
  obj.val = val

proc getVal(obj: MyObject): int =
  obj.val

var someObj: MyObject
new(someObj)
someObj.setVal(6)
echo someObj.getVal()

var constructedObj: MyObject = MyObject(val: 5)
echo constructedObj.getVal()