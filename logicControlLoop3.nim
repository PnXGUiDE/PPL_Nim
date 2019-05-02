#[
  Reference: https://forum.nim-lang.org/t/1970
]#

template loop(body: untyped): typed =
  while true:
    body

template until(cond: typed): typed =
  if cond: break

# do-while loop using template
var x = 0
loop:
  x += 1
  until x mod 6 == 0
echo x
