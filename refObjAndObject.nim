type
  MyObjectStack = object
    data: int
  MyObjectHeap = ref object
    data: int

# lives in stack
var a: MyObjectStack
a.data = 5
var b: MyObjectStack
b = a
echo b.data
b.data = 4
echo a.data

# lives in heap
var x: MyObjectHeap
new(x)
x.data = 5
var y: MyObjectHeap
y = x
echo y.data
y.data = 4
echo x.data