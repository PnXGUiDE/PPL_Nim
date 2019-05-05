proc takeFixedArray(x: array[0..2, int]) =
  for i in 0..high(x):
    echo x[i]

proc takeArray[I, T](x: array[I, T]) =
  for i in 0..high(x):
    echo x[i]

proc takeOpenArray(x: openarray[int]) = 
  for i in 0..high(x):
    echo x[i]

var arr: array[3, int] = [1, 2, 3]
var arr2: array[5, int] = [1, 2, 3, 4, 5]
# var openArr: openarray[int] = [1, 2, 3, 4, 5, 6, 7]

takeFixedArray(arr)
takeArray(arr)
takeOpenArray(arr2)
