# Unary expression
var num: int = 5
inc(num)  # num = num + 1
echo num
dec(num)  # num = num - 1
echo num
# Convert to unsigned integer
echo toU8(-5), " ", toU16(-5), " ", toU32(-5)

# Binary expression
echo  1 + 2, " ",
      3 < 5, " ",
      3 <% -5       # Unsigned comparison
