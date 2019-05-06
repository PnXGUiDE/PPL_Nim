var arr: array[0..2, int]
arr = [1, 2, 3]

var count: int = 0
var arrSize: int = len(arr)

while true:
  if count < arrSize and arr[count] != 0:
  # if arr[count] != 0 and count < arrSize:
    arr[count] = 0
    count += 1
  else:
    break

echo arr


var someInt{.global.}: int = 0
proc setSomeInt(): int =
  someInt = 5
  return 0

echo $(true or setSomeInt() != 0), " ", someInt
echo $(false or setSomeInt() != 0), " ", someInt

