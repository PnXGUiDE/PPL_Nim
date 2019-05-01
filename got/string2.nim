var x = newString(3) # Creates a new string with 3 null characters.
x[0] = 'a'
echo x[0]

echo "-----------------"

var y = newStringOfCap(10) # Creates a new string with no characters, but with
                           # 10 characters worth of memory allocated for later
                           # use.
y.add('b') # Uses the reserved memory.
echo y[0]

echo "-----------------"

var a = "abc"
echo a[0] # 'a'
echo a[1] # 'b'
echo a[2] # 'c'

echo "-----------------"

echo a[^3] # Is transformed to `a[len(a)-3]` and returns 'a'
echo a[^2] # Is transformed to `a[len(a)-2]` and returns 'b'
echo a[^1] # Is transformed to `a[len(a)-1]` and returns 'c'
