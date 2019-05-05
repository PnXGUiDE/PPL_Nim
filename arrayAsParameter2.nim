proc takeMultiDimensionalArray[I, T](x: array[I, array[I, T]]) =
# proc takeMultiDimensionalArray[I, T](x: array[I, T]) =
  for i in 0..high(x):
    for j in 0..high(x[i]):
      echo x[i][j]

# unnecessary method
proc takeIntMultiDimensionalArray[I](x: openarray[array[I, int]]) =
# proc takeIntMultiDimensionalArray(x: openarray[openarray[int]]) =
# proc takeIntMultiDimensionalArray[I](x: array[I, array[I, int]]) =
  for i in 0..high(x):
    for j in 0..high(x[i]):
      echo x[i][j]

var multiArray: array[3, array[3, int]] =
  [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]

takeMultiDimensionalArray(multiArray)
takeIntMultiDimensionalArray(multiArray)
