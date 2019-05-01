proc returnsTuple(): (int, int, int) = (4, 2, 3)
 
let (x, _, z) = returnsTuple()

echo x
echo z
