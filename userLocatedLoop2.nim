var x: array[1..5, int] = [11, 12, 13, 14, 15]

var i = 1
while true:
  if x[i] != 13:
    inc i
    continue
  else:
    echo "Found 13!"
    break
