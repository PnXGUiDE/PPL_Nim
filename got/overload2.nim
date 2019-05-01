# 'overload' by name
proc foo_int(): int =
    result = 1
proc foo_string(): string =
    result = "string"
  
# use a generic
proc foo[T](): T =
    when T is string:
      result = "string"
    elif T is SomeNumber:
      result = 1.T
  
# hand the type as typedesc
proc foo(dtype: typedesc): dtype =
    when dtype is string:
      result = "string"
    elif dtype is SomeNumber:
      result = 1.dtype

echo foo_int()
echo foo_string()
echo "--------------------"
echo foo[string]()
echo foo[int]()
echo foo[float64]()
echo "--------------------"
echo foo(string)
echo foo(int)
echo foo(float64)