# implement own iterator method
iterator items*(a: string): char {.inline.} =
  var i = 0
  while i < len(a):
    yield a[i]  # return value and continue its increment
    inc(i)

for ch in items("hello world"):
  echo ch

iterator count5(): int =
  for i in countup(0, 5):
    yield i

for x in count5():
  echo x


