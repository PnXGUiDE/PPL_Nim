type
  Day {.pure.} = enum
    mon, tue, wed, thu, fri, sat, sun
  Star = enum
  # Star {.pure.} = enum      
    sun, moon, earth
  
echo sun
echo sun == Star.sun
# echo sun == Day.sun

# echo Day.sun, " ", Star.sun