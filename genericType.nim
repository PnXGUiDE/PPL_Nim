type 
  anyData[T] = ref object
    value: T

var a: anyData[int]
new a
a.value = 5

echo a.value
