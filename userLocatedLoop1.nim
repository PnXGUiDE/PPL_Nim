var x: array[1..5, int] = [11, 12, 13, 14, 15]

var i = 1
while true:
  if x[i] == 13:
    echo "I'm out"
    break
    # echo "Don't forget me!"   # Unreachable statement
  else:
    echo "I'm in"
    inc i
