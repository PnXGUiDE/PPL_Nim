# naive method

template computeSeries(x: untyped): untyped =
  var result = 0
  for i in x:
    result += i
  result

echo computeSeries([1, 2, 3, 4])
