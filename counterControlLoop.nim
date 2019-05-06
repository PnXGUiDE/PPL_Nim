var intList: array[0..4, int] = [0, 1, 2, 3, 4]

for token in intList:
  echo token


# for i in 10..5:
for i in <8..<10:     # Warning on <8
  echo i


var nameList: array[0..2, string] = ["Alice", "Bob", "Cassie"]

for i in countup(low(nameList), high(nameList)):
  echo nameList[i]
for i in countdown(high(nameList), low(nameList)):
  echo nameList[i]

var a = [3, 5, 9]
var i = 0
while i < len(a):
  echo a[i]
  inc(i)
