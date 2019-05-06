type
  Day = enum
    mon, tue, wed, thu, fri, sat, sun
  # Star = enum         
    # sun, moon, earth          # Cannot declare same enum name

var today = Day.mon
if today == Day.mon:
  echo "Today is Monday!"


var yesterday = sun
if yesterday == Day.sun:
  echo "Yesterday is also Sunday!"

# var tomorrow = today + 1
var tomorrow = ord(today) + 1   # Use ordinal forms
echo tomorrow
if tomorrow == ord(tue):
  echo "And, tomorrow will be Tuesday."

type
  Direction = enum
    up = 2, down, left, right
    # up, down, left = 30, right
    # up = 2, down, left = 30, right
    # up = 2, down, left = 1, right     # invalid order
    # up, down, left = 1, right         # invalid order
    
echo ord(up), " ", ord(down), " ", ord(left), " ", ord(right)

