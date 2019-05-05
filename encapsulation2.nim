import someObj

var obj = newSomeObj(1, "alice")

# echo obj.val
echo obj.getVal()

var objList: array[2, SomeObj] = [newSomeObj(1, "Alice"), newSomeObj(2, "Bob")]
for o in objList:
  o.printReport()
