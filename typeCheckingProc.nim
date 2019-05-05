proc takeInt(a: int) = echo a
proc takeFloat(a: float) = echo a
proc takeString(a: string) = echo a
proc takeChar(a: char) = echo a

var x_int: int = 5
var x_int8: int8 = 5   
var x_int16: int16 = 5 
var x_int32: int32 = 5 
var x_int64: int64 = 5    
var x_float: float = 1.0 
var x_float32: float32 = 1.0
var x_float64: float64 = 1.0
var x_string: string = "Hello"
var x_char: char = 'X'

takeInt(x_int)
takeInt(x_int8)       # coercion
takeInt(x_int16)      # coercion
takeInt(x_int32)      # coercion
# takeInt(x_int64)
# takeInt(x_float)
# takeInt(x_string)
# takeInt(x_char)

# takeFloat(x_int)
takeFloat(x_float)
takeFloat(x_float32)   # coercion
takeFloat(x_float64)   # coercion

# takeString(x_int)
# takeString(x_char)
takeString(x_string)

# takeChar(x_int)
takeChar(x_char)

var intPtr: ptr int = addr x_int
# takeInt(intPtr)
