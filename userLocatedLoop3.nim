var multiArray: array[3, array[3, int]] =
  [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]

# block myBlock:
for i in 0..2:
  block myBlock:
    for j in 0..2:
      if multiArray[i][j] == 5:
        break myBlock
      else:
        echo multiArray[i][j]
