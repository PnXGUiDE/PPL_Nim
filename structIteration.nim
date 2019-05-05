var nameList: array[12..15, string] = ["I", "am", "ironman", "!"]

for name in nameList:
  echo name

var multiArray: array[3, array[3, int]] =
  [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]

for row in multiArray:
  for i in row:
    echo i
